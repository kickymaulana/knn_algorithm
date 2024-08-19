<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Data_testing extends Admin_Controller {

  public function __construct(){
      parent::__construct();
      // $this->output->enable_profiler(TRUE);
    $this->load->model("m_login");
    $this->load->model("m_data_testing");
    $this->load->model("m_data_testing_normalized");
    $this->load->model("m_register");
    $this->load->model("m_admin");
    $this->load->model("m_user");
    $this->load->model("m_log");
    $this->load->helper('array');
    $this->load->library("pagination");
    $this->load->library('form_validation'); 
  } 


  public function index() 
  {
      $log['log_datetime'] = date("Y-m-d H:i:s");
      $log['log_message'] = "HOMEPAGE :  user => ".$this->session->userdata('username')."( id = ".$this->session->userdata('nik').") ; result => ";
      $log['nik'] = $this->session->userdata('nik');
      $log['log_message'] .= "true";
      $this->m_log->inserLog( $log );
    //   $data=$this->m_kost->getData( $this->session->userdata('user_id') );
    //   $data['files'] = $data;
      $data['page_name'] = "Data Training";
      $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') )[0];
      $data['files'] = $this->m_data_testing->read( );
      $data['files_normalized'] = $this->m_data_testing_normalized->read(  );
      $this->load->view("_admin/_template/header");
      $this->load->view("_admin/_template/sidebar_menu");
          $this->load->view("_admin/data_testing/View_list",$data);
      $this->load->view("_admin/_template/footer");  
  }

  public function create()
  {     
        $data['page_name'] = "Tambah Data Testing";
        $inpust =  ( $this->input->post('nama_lengkap[]') == null )? array(): $this->input->post('nama_lengkap[]')  ;
        // echo var_dump( $inpust );
        foreach($inpust as $ind=>$val) 
        {
            if(  !empty( $this->input->post('nama_lengkap')[$ind] ) ){
                $this->form_validation->set_rules('nama_lengkap['.$ind.']','nama_lengkap','trim|required');
                $this->form_validation->set_rules('rencana_tanam['.$ind.']','rencana_tanam','trim|required');
                $this->form_validation->set_rules('umt1['.$ind.']','umt1','trim|required');
                $this->form_validation->set_rules('umt2['.$ind.']','umt2','trim|required');
                $this->form_validation->set_rules('nmt1['.$ind.']','nmt1','trim|required');
                $this->form_validation->set_rules('nmt2['.$ind.']','nmt2','trim|required');
                $this->form_validation->set_rules('data_label['.$ind.']','data_label','trim|required');
            }
            
        }


        

        if ($this->form_validation->run() == true) 
        {
            $data_testing = array();
            $inpust =  ( $this->input->post('nama_lengkap[]') == null )? array(): $this->input->post('nama_lengkap[]')  ;
            foreach($inpust as $ind=>$val) 
            {
                $data = array();
                if(  !empty( $this->input->post('nama_lengkap')[$ind] ) ){
                    $data_test["nama_lengkap"] = $this->input->post('nama_lengkap')[$ind] ;
                    $data_test["rencana_tanam"] = $this->input->post('rencana_tanam')[$ind] ;
                    $data_test["umt1"] = $this->input->post('umt1')[$ind] ;
                    $data_test["umt2"] = $this->input->post('umt2')[$ind] ;
                    $data_test["nmt1"] = $this->input->post('nmt1')[$ind];
                    $data_test["nmt2"] = $this->input->post('nmt2')[$ind] ;
                    $data_test["data_label"] = $this->input->post('data_label')[$ind] ;

                    array_push($data_testing, $data_test) ;
                }
            }

            // echo var_dump( $data_testing );
            if( $this->m_data_testing->create( $data_testing ) ){
                $this->session->set_flashdata('info', array(
                    'from' => 1,
                    'message' =>  'item berhasil ditambah'
                  ));
                  redirect(site_url('admin/data_testing'));
                  return;
            }
            $this->session->set_flashdata('info', array(
                'from' => 0,
                'message' =>  'terjadi kesalahan saat mengirim data'
              ));
              redirect(site_url('admin/data_testing'));

        }else{
            $data['files'] = $this->m_data_testing->read(  );
            $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') );
           $this->load->view("_admin/_template/header");
            $this->load->view("_admin/_template/sidebar_menu");
                $this->load->view("_admin/data_testing/View_create",$data);
            $this->load->view("_admin/_template/footer");  
        }
  }

  public function edit( $data_id = null )
  {     
        $data['page_name'] = "Edit Data Testing";
        $inpust =  ( $this->input->post('nama_lengkap[]') == null )? array(): $this->input->post('nama_lengkap[]')  ;
        // echo var_dump( $inpust );
        foreach($inpust as $ind=>$val) 
        {
            if(  !empty( $this->input->post('nama_lengkap')[$ind] ) ){
                $this->form_validation->set_rules('nama_lengkap['.$ind.']','nama_lengkap','trim|required');
                $this->form_validation->set_rules('rencana_tanam['.$ind.']','rencana_tanam','trim|required');
                $this->form_validation->set_rules('umt1['.$ind.']','umt1','trim|required');
                $this->form_validation->set_rules('umt2['.$ind.']','umt2','trim|required');
                $this->form_validation->set_rules('nmt1['.$ind.']','nmt1','trim|required');
                $this->form_validation->set_rules('nmt2['.$ind.']','nmt2','trim|required');
            }
            
        }

        

        if ($this->form_validation->run() == true) 
        {
            $data_testing = array();
            $inpust =  ( $this->input->post('nama_lengkap[]') == null )? array(): $this->input->post('nama_lengkap[]')  ;
            foreach($inpust as $ind=>$val) 
            {
                $data = array();
                if(  !empty( $this->input->post('nama_lengkap')[$ind] ) ){
                    $data["nama_lengkap"] = $this->input->post('nama_lengkap')[$ind] ;
                    $data["rencana_tanam"] = $this->input->post('rencana_tanam')[$ind] ;
                    $data["umt1"] = $this->input->post('umt1')[$ind] ;
                    $data["umt2"] = $this->input->post('umt2')[$ind] ;
                    $data["nmt1"] = $this->input->post('nmt1')[$ind] ;
                    $data["nmt2"] = $this->input->post('nmt2')[$ind] ;

                    // array_push($data_testing, $data) ;
                }
            }

            // echo var_dump( $data_testing );
            $data_param['data_id'] = $this->input->post('data_id');

            if( $this->m_data_testing->update( $data, $data_param ) ){
                $this->session->set_flashdata('info', array(
                    'from' => 1,
                    'message' =>  'item berhasil diubah'
                  ));
                  redirect(site_url('admin/data_testing'));
                  return;
            }
            $this->session->set_flashdata('info', array(
                'from' => 0,
                'message' =>  'terjadi kesalahan saat mengirim data'
              ));
              redirect(site_url('admin/data_testing'));

        }else{
            if( $data_id == null ) redirect(site_url('admin/data_testing'));

            $data['files'] = $this->m_data_testing->read( $data_id );
            $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') );
            $this->load->view("_admin/_template/header");
            $this->load->view("_admin/_template/sidebar_menu");
                $this->load->view("_admin/data_testing/View_edit",$data);
            $this->load->view("_admin/_template/footer");  
        }
  }

  public function import(  )
  {
    $data['page_name'] = "import Data Testing";
    // if( !($_POST) ) redirect(site_url(''));  

    $this->load->library('upload'); // Load librari upload
    $filename = "excel";
    $config['upload_path'] = './upload/datatestingexcel/';
    $config['allowed_types'] = "xls|xlsx";
    $config['overwrite']="true";
    $config['max_size']="2048";
    $config['file_name'] = ''.$filename;
    $this->upload->initialize($config);

    if( $this->upload->do_upload("document_file") )
    {
        $filename = $this->upload->data()["file_name"];
        // echo $filename;
        // Load plugin PHPExcel nya
        include APPPATH.'third_party/PHPExcel.php';
        
        $excelreader = new PHPExcel_Reader_Excel2007();
        $loadexcel = $excelreader->load('upload/datatestingexcel/'.$filename); // Load file yang telah diupload ke folder excel
        $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);
        
        // Buat sebuah vari
        $data_testing = array();
        $numrow = 1;
        foreach($sheet as $row){
            // Cek $numrow apakah lebih dari 1
            // Artinya karena baris pertama adalah nama-nama kolom
            // Jadi dilewat saja, tidak usah diimport
            if($numrow > 1 &&  !empty( $row['A'] ) ){
                $data_test["nama_lengkap"] = $row['A'] ;
                $data_test["rencana_tanam"] = $row['B'];
                $data_test["umt1"] = $row['C'];
                $data_test["umt2"] = $row['D'];
                $data_test["nmt1"] = $row['E'];
                $data_test["nmt2"] = $row['F'];
		if($row['B'] > 0.00 && $row['B'] <= 2){
                	$data_test["data_label"] = "1";
		} else {
                	$data_test["data_label"] = "0";
		}
		if($row['B'] > 0.00 && $row['B'] <= 1){
                	$data_test["luas_lahan"] = "KECIL";

		} else if($row['B'] > 1.00 && $row['B'] <= 2){
                	$data_test["luas_lahan"] = "TINGGI";
		} else {
                	$data_test["luas_lahan"] = "TIDAK TERMASUK";
		}
                // Kita push (add) array data ke variabel data
                array_push($data_testing, $data_test ) ;
            }
            
            $numrow++; // Tambah 1 setiap kali looping
        }

        // echo var_dump( $data_testing );
        if( $this->m_data_testing->create( $data_testing ) ){
            $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'item berhasil diimport'
              ));
              redirect(site_url('admin//data_testing'));
              return;
        }
        $this->session->set_flashdata('info', array(
            'from' => 0,
            'message' =>  'terjadi kesalahan saat mengirim data'
          ));
          redirect(site_url('admin/data_testing'));

    }else{
        echo  $this->upload->display_errors();
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
            $this->load->view("_admin/data_testing/View_import",$data);
        $this->load->view("_admin/_template/footer");  
    }

  }

  public function normalize(  )
  {
        $this->m_data_testing_normalized->clear( );//kosongka normalisasi
        $files = $this->m_data_testing->read(  );
        $min_max = $this->m_data_testing->get_min_max(  );

        if( empty( $min_max ) ) {
            redirect(site_url('admin/data_testing'));
            return;
        }
        // echo json_encode( $min_max );
        // prosedur untuk menormalisasi
        for( $i=0; $i< count( $files ); $i++ )
        {
            // echo round( $files[ $i ]->data_UKT,3)."<br>";
            $len = $min_max["max_rencana_tanam"] -  $min_max["min_rencana_tanam"];
            $files[ $i ]->rencana_tanam  =  ( ( $files[ $i ]->rencana_tanam - $min_max["min_rencana_tanam"] )/( $len ) )* 1 + 0 ;
            $files[ $i ]->rencana_tanam = round( $files[ $i ]->rencana_tanam, 4 );

            $len = $min_max["max_umt1"] -  $min_max["min_umt1"];
            $files[ $i ]->umt1  =  ( ( $files[ $i ]->umt1 - $min_max["min_umt1"] )/( $len ) )* 1 + 0 ;
            $files[ $i ]->umt1 = round( $files[ $i ]->umt1, 4 );

            $len = $min_max["max_umt2"] -  $min_max["min_umt2"];
            $files[ $i ]->umt2  =  ( ( $files[ $i ]->umt2 - $min_max["min_umt2"] )/( $len ) )* 1 + 0 ;
            $files[ $i ]->umt2 = round( $files[ $i ]->umt2, 4 );

            $len = $min_max["max_nmt1"] -  $min_max["min_nmt1"];
            $files[ $i ]->nmt1  =  ( ( $files[ $i ]->nmt1 - $min_max["min_nmt1"] )/( $len ) )* 1 + 0 ;
            $files[ $i ]->nmt1 = round( $files[ $i ]->nmt1, 4 );

            $len = $min_max["max_nmt2"] -  $min_max["min_nmt2"];
            $files[ $i ]->nmt2  =  ( ( $files[ $i ]->nmt2 - $min_max["min_nmt2"] )/( $len ) )* 1 + 0 ;
            $files[ $i ]->nmt2 = round( $files[ $i ]->nmt2, 4 );
        }
        
        if( $this->m_data_testing_normalized->create( $files ) ){
            $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'item berhasil di normalisasi'
              ));
              redirect(site_url('admin/data_testing'));
              return;
        }
        $this->session->set_flashdata('info', array(
            'from' => 0,
            'message' =>  'terjadi kesalahan saat mengirim data'
          ));
          redirect(site_url('admin/data_testing'));

  }

  public function delete( $data_id = null )
  {
    if( $data_id == null ) redirect(site_url('admin/data_testing'));

    $data_param['data_id'] = $data_id;
    if( $this->m_data_testing->delete(  $data_param ) ){
        $this->session->set_flashdata('info', array(
            'from' => 1,
            'message' =>  'item berhasil diubah'
          ));
          redirect(site_url('admin/data_testing'));
          return;
    }
    $this->session->set_flashdata('info', array(
        'from' => 0,
        'message' =>  'terjadi kesalahan saat mengirim data'
      ));
      redirect(site_url('admin/data_testing'));

  }


}
