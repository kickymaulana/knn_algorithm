<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends Admin_Controller {

  public function __construct(){
      parent::__construct();
      // $this->output->enable_profiler(TRUE);
    $this->load->model("m_user");
    $this->load->model("m_log");
    $this->load->helper('array');
    $this->load->library("pagination");
    $this->load->library('upload');
    $this->load->library('form_validation'); 
  } 


  public function index() 
  {
    $data['page_title'] = "Profile ";
    
        $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') );
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
            $this->load->view("_admin/profile/View",$data);
        $this->load->view("_admin/_template/footer");
     
  }

  public function edit() 
  {
    $data['page_title'] = "edit ";
     $this->form_validation->set_rules('nama_lengkap','nama_lengkap','trim|required');
     $this->form_validation->set_rules('email','email','trim|required');
     $this->form_validation->set_rules('alamat','alamat','trim|required');
     $this->form_validation->set_rules('no_hp','no_hp','trim|required');
     
     $message="lengkapi semua form !!";
     if ($this->form_validation->run() === true) 
     {  
        $data_user_profile['nama_lengkap'] = $this->input->post('nama_lengkap');
        $data_user_profile['email'] = $this->input->post('email');
        $data_user_profile['alamat'] = $this->input->post('alamat');
        $data_user_profile['no_hp'] = $this->input->post('no_hp');
        
        // echo var_dump( $data_store );
        $name= $_FILES['document_file']['name'];        
        $size= $_FILES['document_file']['size'];
        $type= $_FILES['document_file']['type'];
        $tmp_name = $_FILES['document_file']['tmp_name'];

        $data_user_profile['foto'] = $this->input->post('user_old_images') ;

        $location = './upload/user/';
        $source_file = $location.$data_user_profile['foto'];
        $im = ImageCreateFromJpeg($source_file); 
        
        $message="terjadi kesalahan saat mengirim data)";
        if(!empty( $name ) && $size  < 16777216 ){
                $location = './upload/user/';
                $data_user_profile['foto'] =time()."-".$name;
                if(move_uploaded_file($tmp_name, $location.$data_user_profile['foto']))
                {
                        $old_photo = $this->input->post('user_old_images') ;
                        @unlink($location.$old_photo );
                }else{
                        if( $result )
                        {
                                $this->session->set_flashdata('info', array(
                                'from' => 0,
                                'message' =>  'foto tidak terupload'
                                ));
                                redirect(site_url('admin/profile'));
                                return;
                        }
                }
        }
        

        $data_user_profile_param['nik'] = $this->session->userdata('nik');

        if( !empty( $this->input->post('password') ) )
        {
            $data_user['password'] = md5(  $this->input->post('password') );
            $this->m_user->update( $data_user, $data_user_profile_param );
        }
        $result = $this->m_user->update_profile( $data_user_profile, $data_user_profile_param );
        if( $result )
        {
                $data = array(
                        'nama_lengkap' => $data_user_profile['nama_lengkap'],
                        'foto' => $data_user_profile['foto']
                );
                    #Set value ke session
                $this->session->set_userdata($data);

                $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'data berhasil diubah'
                ));
                redirect(site_url('admin/profile'));
                return;
        }

        $this->session->set_flashdata('info', array(
                'from' => 0,
                'message' =>  $message
                ));
                redirect(site_url('admin/profile'));
     }else{
        
        $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') );
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
            $this->load->view("_admin/profile/View_edit",$data);
        $this->load->view("_admin/_template/footer");
     }
  }
}
