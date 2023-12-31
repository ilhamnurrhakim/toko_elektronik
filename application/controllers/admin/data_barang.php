<?php 
class Data_barang extends CI_Controller{
    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') != '1'){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
                      Anda Belum Login!!
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>');
            redirect('auth/login');
        }
    }
    public function index()
    {
        $data['barang'] = $this->model_barang->tampil_data()->result();
        $this->load->view('templats_admin/header');
        $this->load->view('templats_admin/sidebar');
        $this->load->view('admin/data_barang', $data);
        $this->load->view('templats_admin/footer');
    }

    public function tambah_aksi()
    {
        $nama_brg         = $this->input->post('nama_brg');
        $keterangan       = $this->input->post('keterangan');
        $kategori         = $this->input->post('kategori');
        $harga            = $this->input->post('harga');
        $stok             = $this->input->post('stok');
        $foto           = $_FILES['foto']['name'];
        if ($foto       = ''){}else{
            $config ['upload_path'] = './uploads';
            $config ['allowed_types'] = 'jpg|jpeg|png|';

            $this->load->library('upload', $config);
            if(! $this->upload->do_upload('foto')){
                echo "Gambar Gagal di Upload!";
            }else{
                $foto=$this->upload->data('file_name');
            }
        }
        $data = array (
            'nama_brg'     => $nama_brg,
            'keterangan'   => $keterangan,
            'kategori'     => $kategori,
            'harga'        => $harga,
            'stok'         => $stok,
            'foto'       => $foto
        );

        $this->model_barang->tambah_barang($data, 'tb_barang');
        $this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
                      Data Berhasil Ditambahkan!!
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>');
                
        redirect('admin/data_barang/index');
    }
    public function edit($id)
    {
        $where = array('id_brg' =>$id);
        $data['barang'] = $this->model_barang->edit_barang($where,'tb_barang')->result();
        $this->load->view('templats_admin/header');
        $this->load->view('templats_admin/sidebar');
        $this->load->view('admin/edit_barang', $data);
        $this->load->view('templats_admin/footer');
    }

    public function update(){
        $id             =$this->input->post('id_brg');
        $nama_brg       =$this->input->post('nama_brg');
        $keterangan     =$this->input->post('keterangan');
        $kategori       =$this->input->post('kategori');
        $harga          =$this->input->post('harga');
        $stok           =$this->input->post('stok');

        $data = array(

            'nama_brg'     => $nama_brg,
            'keterangan'   => $keterangan,
            'kategori'     => $kategori,
            'harga'        => $harga,
            'stok'         => $stok
        );

         $where = array(
            'id_brg'   =>$id
        );

         $this->model_barang->update_data($where,$data, 'tb_barang');
         $this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
                      Data Berhasil Diupdate!!
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>');
         redirect('admin/data_barang/index');
    }
    public function hapus ($id)
    {
        $where = array('id_brg'  => $id);
        $this->model_barang->hapus_data($where, 'tb_barang');
        $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
                      Data Berhasil Dihapus!!
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>');
        redirect('admin/data_barang/index');
    }
}