<div class="container-fluid">

    <!-- Page Heading -->
    <div class="card">
        <div class="card-header">
            <p class="text-primary font-weight-bold">Laporan Parkir</p>
        </div>
        <div class="card-body">
            <div class="login-form">
                <h2 class="text-center">Masukan Tanggal Laporan</h2>
                <?php echo form_open('LaporanArdian/tabelArdian');
                $datestring = '%Y-%m-%d';
                $ardian_time = time();
                $ardian_tanggal_sekarang = mdate($datestring, $ardian_time);
                ?>
                <label for="nomor_polisi">Tanggal</label>
                <div class="form-group">
                    <?php
                    $data = array(
                        'type'  => 'date',
                        'name'  => 'tanggal',
                        'value' => $ardian_tanggal_sekarang,
                        'class' => 'form-control'
                    );
                    echo form_input($data);
                    ?>
                </div>
                <div class="col text-center">
                    <button type="submit" name="tambah" class="btn btn-primary">Cari</button></div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
</div>