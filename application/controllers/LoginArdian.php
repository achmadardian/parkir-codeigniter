<?php
defined('BASEPATH') or exit('No direct script access allowed');

class LoginArdian extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->form_validation->set_rules('username', 'username', 'trim|required', ['required' => 'Username Wajib diisi']);
        $this->form_validation->set_rules('password', 'Password', 'trim|required', ['required' => 'Password Wajib diisi']);
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Parkir Mercubuana';
            $this->load->view('templates/auth_headerArdian', $data);
            $this->load->view('auth/loginArdian');
            $this->load->view('templates/auth_footerArdian');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $user = $this->db->get_where('admin', ['username' => $username])->row_array();

        if ($user) {
            if (password_verify($password, $user['password'])) {
                $data = [
                    'username' => $user['username']
                ];
                $this->session->set_userdata($data);
                redirect('dashboardArdian');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Password salah. </div>');
                redirect('loginardian');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Password salah. </div>');
            redirect('loginardian');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Berhasil logout.</div>');
        redirect('loginardian');
    }
}
