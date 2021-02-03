<div class="container-fluid">

    <!-- Page Heading -->
    <div class="card">
        <div class="card-header">
            <p class="text-primary font-weight-bold">Laporan Parkir</p>
        </div>
        <div class="card-body">
            <div class="col text-center">
                <a class="btn btn-outline-success float-right" href="<?= base_url('LaporanArdian/parkirExcel'); ?>" role="button">Export ke Excel</a>
                <a class="btn btn-outline-danger float-right mr-1" href="<?= base_url('LaporanArdian/parkirPdf'); ?>" role="button">Export ke PDF</a>
                <a class="btn btn-outline-primary float-right mr-1" href="<?= base_url('LaporanArdian/parkirChart'); ?>" role="button">Export ke Chart</a>
            </div>
            <div class="table-responsive">
                <br />
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Jenis Kendaraan</th>
                            <th>Nomor Polisi</th>
                            <th>Waktu Masuk</th>
                            <th>Waktu Keluar</th>
                            <th>Biaya</th>
                        </tr>
                        <?php
                        foreach ($data_laporan as $laporan) { ?>
                    </thead>
                    <tbody>
                        <td><?php
                            $ardian_jenis_kendaraan = $laporan->jenis_kendaraan;
                            if ($ardian_jenis_kendaraan == "Mobil")
                                echo "Mobil";
                            elseif ($ardian_jenis_kendaraan == "Motor")
                                echo "Motor";
                            ?></td>
                        <td><?php echo $laporan->nomor_polisi; ?></td>
                        <td><?php echo $laporan->tanggal_jam_masuk; ?></td>
                        <td><?php echo $laporan->tanggal_jam_keluar; ?></td>
                        <td><?php echo $laporan->biaya; ?></td>
                        </tr>
                    <?php } ?>
                </table>
                </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>