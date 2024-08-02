<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller {

  public function __construct(){
      parent::__construct();
      // $this->output->enable_profiler(TRUE);
    $this->load->model("m_login");
    $this->load->model("m_register");
    $this->load->model("m_data_uji");
    $this->load->model("m_admin");
    $this->load->model("m_user");
    $this->load->model("m_log");
    $this->load->helper('array');
    $this->load->library("pagination");
    $this->load->library('form_validation'); 
  } 


  public function index() 
  {
    $this->load->view("_user/landing_page/View");
  }

  public function add_biodata() 
  {
        $this->form_validation->set_rules('nik','nik','trim|required');
        $this->form_validation->set_rules('nama_lengkap','nama_lengkap','trim|required');
        $this->form_validation->set_rules('alamat','alamat','trim|required');
        $this->form_validation->set_rules('no_hp','no_hp','trim|required');
        $this->form_validation->set_rules('rencana_tanam','rencana_tanam','trim|required');
        $this->form_validation->set_rules('umt1','umt1','trim|required');
        $this->form_validation->set_rules('umt2','umt2','trim|required');
        $this->form_validation->set_rules('nmt1','nmt1','trim|required');
        $this->form_validation->set_rules('nmt2','nmt2','trim|required');

        if ($this->form_validation->run() == true) 
        {
            $data_profile["nama_lengkap"] = $this->input->post('nama_lengkap');
            $data_profile["alamat"] = $this->input->post('alamat');
            $data_profile["no_hp"] = $this->input->post('no_hp');
            
            $identitas = time();
            $data["nik"] = $this->input->post('nik');
            $data['username'] = $identitas;
            $data['password'] = md5( $identitas );
            $result = $this->m_register->register($data, $data_profile);
            if( $result['status'] ){

                $data_uji["nik"] = $result['message']['nik'];

                $data_uji["rencana_tanam"] = $this->input->post('rencana_tanam');
                $data_uji["umt1"] = $this->input->post('umt1');
                $data_uji["umt2"] = $this->input->post('umt2');
                $data_uji["nmt1"] = $this->input->post('nmt1');
                $data_uji["nmt2"] = $this->input->post('nmt2');
                $data_uji["data_label"] = -1;

                $data_uji = array( $data_uji );
                if( $this->m_data_uji->create( $data_uji ) )
                {
                    $this->session->set_flashdata('info', array(
                        'from' => 1,
                        'message' =>  'Data berhasil di input'
                      ));
                      // is_admin
                      if(
                        ($this->session->userdata('nik')) || 
                        $this->session->userdata('level') == 1
                      )
                      {
                        redirect(site_url('admin/user_management'));
                      }
                      redirect(site_url('landing'));
                      return;
                }
            }
            $this->session->set_flashdata('info', array(
            'from' => 0,
            'message' =>  'terjadi kesalahan saat mengirim data'
            ));
            redirect(site_url('landing'));

        }else{
            $this->load->view("_user/_template/header");
                $this->load->view("_user/biodata/View_create");
            $this->load->view("_user/_template/footer");  
        }    
  }

}
