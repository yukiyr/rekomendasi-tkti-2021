<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Planstartup extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

    // public $id_jenis_perusahaan;

    public function __construct()
    {
        parent::__construct();
        $this->load->model("planstartup_model");
        $this->load->library('form_validation');
    }

    public function jenis_perusahaan()
    {
        // $this->id_jenis_perusahaan = $this->input->post('id_jenis_perusahaan');
        if (isset($_POST['submit'])) {
            if(isset($_POST['radio'])){
                $this->id_jenis_perusahaan = $_POST['radio'];
                if($this->id_jenis_perusahaan == '1')
                {
                    echo "Angka 1 bisa";
                }
                if($this->id_jenis_perusahaan == '2')
                {
                    echo "Angka 2 bisa";
                }
                if($this->id_jenis_perusahaan == '3')
                {
                    echo "Angka 3 bisa";
                }
                echo "<script>
                window.location='".site_url('resource/index')."';
                </script>";
            }
        }
        // $data['id_jenis_perusahaan'] = $id_jenis_perusahaan;
    }

    public function kebutuhan()
    {
        if (isset($_POST['submit'])) {
            if(isset($_POST['radio'])){
                if(isset($_POST['radio2'])){
                    if(isset($_POST['radio3'])){
                        $id_jenis_perusahaan = $_POST['radio'];
                        $id_it_resource = $_POST['radio2'];
                        $id_domain = $_POST['radio3'];
                        $data["planstartup"] = $this->planstartup_model->getAll($id_jenis_perusahaan, $id_it_resource, $id_domain);
                        $this->load->view('planstartup', $data);
                    }
                }
            }
        }
    }

	public function index()
	{
        $id_it_resource = $this->input->post('id_it_resource');
        $id_domain = $this->input->post('id_domain');
        $data["planstartup"] = $this->planstartup_model->getAll($this->id_jenis_perusahaan, $id_it_resource, $id_domain);
		$this->load->view('planstartup', $data);
	}
}
