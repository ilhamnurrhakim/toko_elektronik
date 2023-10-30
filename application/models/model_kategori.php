<?php

class Model_kategori extends CI_Model{
	
	public function data_ac(){
		return $this->db->get_where("tb_barang",array('kategori' => 'ac'));
	}
	public function data_televisi(){
		return $this->db->get_where("tb_barang",array('kategori' => 'televisi'));
	}
	public function data_kulkas(){
		return $this->db->get_where("tb_barang",array('kategori' => 'kulkas'));
	}
	public function data_mesin_cuci(){
		return $this->db->get_where("tb_barang",array('kategori' => 'mesin cuci'));
	}
	public function data_kipas_angin(){
		return $this->db->get_where("tb_barang",array('kategori' => 'kipas angin'));
	}
	public function data_blender(){
		return $this->db->get_where("tb_barang",array('kategori' => 'blender'));
	}
	public function data_magic_com(){
		return $this->db->get_where("tb_barang",array('kategori' => 'magic com'));
	}
}