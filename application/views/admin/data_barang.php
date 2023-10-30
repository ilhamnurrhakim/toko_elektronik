<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang" ><i class="fas fa-plus fa-sm"></i> Tambah Barang </button>

    <?php echo $this->session->flashdata('pesan') ?>
<table class="table table-bordered">
    <tr>
        <th>NO</th>
        <th>NAMA BARANG</th>
        <th>KETERANGAN</th>
        <th>KATEGORI</th>
        <th>HARGA</th>
        <th>STOK</th>
        <th colspan="2">AKSI</th>
    </tr>
    <?php
    $no=1;
    foreach($barang as $brg) : ?>

    <tr>
        <td><?php echo $no++ ?></td>
        <td><?php echo $brg->nama_brg ?></td>
        <td><?php echo $brg->keterangan ?></td>
        <td><?php echo $brg->kategori ?></td>
        <td><?php echo $brg->harga ?></td>
        <td><?php echo $brg->stok ?></td>
        <td><?php echo anchor('admin/data_barang/edit/' .$brg->id_brg, '<div class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></div>') ?></td>
        <td><?php echo anchor('admin/data_barang/hapus/' .$brg->id_brg, '<div class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></div>') ?></td>
    </tr>

    <?php endforeach; ?>
</table>
</div>
<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Form Input Produk</h1>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span ari-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url(). 'admin/data_barang/tambah_aksi'; ?>" 
            method="post" enctype="multipart/form-data">
                <div class="form-gruop">
                    <label>Nama Barang</label>
                    <input type="text" name="nama_brg" class="form-control">
                </div>
                <div class="form-gruop">
                    <label>Keterangan</label>
                    <input type="text" name="keterangan" class="form-control">
                </div>
                <div class="form-gruop">
                    <label>Kategori</label>
                    <select class="form-control" name="kategori">
                        <option>AC</option>
                        <option>TELEVISI</option>
                        <option>KULKAS</option>
                        <option>MESIN CUCI</option>
                        <option>KIPAS ANGIN</option>
                        <option>BLENDER</option>
                        <option>MAGIC COM</option>
                    </select>
                </div>
                <div class="form-gruop">
                    <label>Harga</label>
                    <input type="text" name="harga" class="form-control">
                </div>
                <div class="form-gruop">
                    <label>Stok</label>
                    <input type="text" name="stok" class="form-control">
                </div>
                
                <div class="form-gruop">
                    <label>Gambar Produk</label><br>
                    <input type="file" name="foto" class="form-control">
                </div>
            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>

      </form>
    </div>
  </div>
</div>