<?php

class Kategori extends CI_Controller{
	public function ac()
	{
		$data['ac'] = $this->model_kategori->data_ac()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('ac',$data);
		$this->load->view('templats/footer');
	}
	public function televisi()
	{
		$data['televisi'] = $this->model_kategori->data_televisi()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('televisi',$data);
		$this->load->view('templats/footer');
	}
	public function kulkas()
	{
		$data['kulkas'] = $this->model_kategori->data_kulkas()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('kulkas',$data);
		$this->load->view('templats/footer');
	}
	public function mesin_cuci()
	{
		$data['mesin_cuci'] = $this->model_kategori->data_mesin_cuci()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('mesin_cuci',$data);
		$this->load->view('templats/footer');
	}
	public function kipas_angin()
	{
		$data['kipas_angin'] = $this->model_kategori->data_kipas_angin()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('kipas_angin',$data);
		$this->load->view('templats/footer');
	}
	public function blender()
	{
		$data['blender'] = $this->model_kategori->data_blender()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('blender',$data);
		$this->load->view('templats/footer');
	}
	public function magic_com()
	{
		$data['magic_com'] = $this->model_kategori->data_magic_com()->result();
		$this->load->view('templats/header');
		$this->load->view('templats/sidebar');
		$this->load->view('magic_com',$data);
		$this->load->view('templats/footer');
	}
}