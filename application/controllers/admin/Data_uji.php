<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Data_uji extends Admin_Controller {

  public function __construct(){
      parent::__construct();
      // $this->output->enable_profiler(TRUE);
    $this->load->model("m_login");
    $this->load->model("m_data_testing");
    $this->load->model("m_data_uji");
    $this->load->model("m_data_testing_normalized");
    $this->load->model("m_data_uji_normalized");
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
      $log['log_message'] = "HOMEPAGE :  user => ".$this->session->userdata('user_username')."( id = ".$this->session->userdata('user_id').") ; result => ";
      $log['nik'] = $this->session->userdata('nik');
      $log['log_message'] .= "true";
      $this->m_log->inserLog( $log );
    
      $data['page_name'] = "Data Uji";
      $data['user'] = $this->m_user->getUser( $this->session->userdata('nik') )[0];
      $data['files'] = $this->m_data_uji->read(  );
      $data['files_normalized'] = $this->m_data_uji_normalized->read(  );
      $data['data_testing']  = $this->m_data_testing_normalized->read(  );

      $data['data_uji_count'] = $this->m_data_uji->record_count(  );
      $data['data_uji_normalized_count'] = $this->m_data_uji_normalized->record_count(  );

      $this->load->view("_admin/_template/header");
      $this->load->view("_admin/_template/sidebar_menu");
          $this->load->view("_admin/data_uji/View_list",$data);
      $this->load->view("_admin/_template/footer");  
  }

  public function rangking(  )
  {
    $quota = $this->input->post('quota');
    $data['files']  = $this->m_data_uji_normalized->rangking(-1,  "object", $quota );
    // echo json_encode( $data['files'] );return;
    $data['page_name'] = "Perengkingan";
    $data['quota'] = $quota;

    $this->load->view("_admin/_template/header");
      $this->load->view("_admin/_template/sidebar_menu");
          $this->load->view("_admin/data_uji/View_rangking",$data);
      $this->load->view("_admin/_template/footer");  
  }

  public function cetak(){
    $quota = $this->input->get('quota');
    $data['files']  = $this->m_data_uji_normalized->rangking(-1,  "object", $quota );
    // echo json_encode( $data['files'] );return;
    $data['page_name'] = "Perengkingan";
    $data['quota'] = $quota;

    $this->load->view("_admin/data_uji/print", $data);
   	
  }
  public function import(  )
  {
    $data['page_name'] = "import Data Peserta";
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
        $__data_uji = array();
        $numrow = 1;
        foreach($sheet as $row){
            // Cek $numrow apakah lebih dari 1
            // Artinya karena baris pertama adalah nama-nama kolom
            // Jadi dilewat saja, tidak usah diimport
            if($numrow > 1 &&  !empty( $row['A'] ) ){
                // $data_uji["data_name"] = $row['A'] ;
                $data_uji["tanaman"] = $row['C'];
                $data_uji["rencana_tanam"] = $row['D'];
                $data_uji["umt1"] = $row['E'];
                $data_uji["umt2"] = $row['F'];
                $data_uji["nmt1"] = $row['G'];
                $data_uji["nmt2"] = $row['H'];
                $data_uji["data_label"] = -1;
                ##########################################################
                $data_profile["nama_lengkap"] = $row['B'];
                $data_profile["alamat"] = $row['I'];
                $data_profile["email"] = $row['J'];
                $data_profile["no_hp"] = $row['K'];
                //add user
                $identitas = time();
                $data_user["nik"] = $row['A'];
                $data_user['username'] = $identitas + $numrow;
                $data_user['password'] = md5( $identitas );
                $result = $this->m_register->register($data_user, $data_profile);
                if( $result['status'] ){
                    $data_uji["nik"] = $result['message']['nik'];
                    // Kita push (add) array data ke variabel data
                    array_push($__data_uji, $data_uji ) ;
                }
            }
            
            $numrow++; // Tambah 1 setiap kali looping
        }

        // echo json_encode( $__data_uji );
        // return;
        if( $this->m_data_uji->create( $__data_uji ) ){
            $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'item berhasil diimport'
              ));
              redirect(site_url('admin/data_uji'));
              return;
        }
        $this->session->set_flashdata('info', array(
            'from' => 0,
            'message' =>  'terjadi kesalahan saat mengirim data'
          ));
          redirect(site_url('admin/user_management'));

    }else{
        // echo  $this->upload->display_errors();
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
            $this->load->view("_admin/data_uji/View_import",$data);
        $this->load->view("_admin/_template/footer");  
    }

  }

  public function normalize(  )
  {
        $this->m_data_uji_normalized->clear( );//kosongka normalisasi
        $files = $this->m_data_uji->read_normalize( );

        $min_max = $this->m_data_testing->get_min_max( );

        if( empty( $min_max ) || empty( $files ) ) {
            redirect(site_url('admin/data_uji'));
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
        
        if( $this->m_data_uji_normalized->create( $files ) ){
            $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'item berhasil di normalisasi'
              ));
              redirect(site_url('admin/data_uji'));
              return;
        }
        $this->session->set_flashdata('info', array(
            'from' => 0,
            'message' =>  'terjadi kesalahan saat mengirim data'
          ));
          redirect(site_url('admin/data_uji'));

  }

  public function uji(  )
  {
        if( !($_POST) ) redirect(site_url('admin/data_uji'));  

        $data_id = $this->input->post('data_id');
        // $data_uji = $this->m_data_uji_normalized->read_single_table( $data_id , "array" );
        $data_uji = $this->m_data_uji_normalized->read( $data_id , "array" );
        $data_testing = $this->m_data_testing_normalized->read( -1, "array" );

        $min_max = $this->m_data_testing->get_min_max( );
        // echo json_encode( $data_uji ).'<br>' ;
        // return;
        if(  empty( $data_uji ) || empty( $data_testing ) ) {
            redirect(site_url('admin/data_uji'));
            return;
        }

        if(  empty( $data_uji ) ) {
            redirect(site_url('/data_uji'));
            return;
        }
        $DISTANCES = array();
        //prosedur mencari tetangga terdekat
        for( $i=0; $i< count( $data_uji ); $i++ )
        {
            $DISTANCES = array();
            for( $j=0; $j< count( $data_testing ); $j++ )
            {
                $dist['tetangga_terdekat'] = $this->tetangga_terdekat( $data_uji[ $i ], $data_testing[ $j ] );
                $dist['data_label'] = $data_testing[ $j ]['data_label'];
                $dist['nama_lengkap'] = $data_testing[ $j ]['nama_lengkap'];
                
                array_push($DISTANCES , $dist) ;
            }
            sort($DISTANCES);//mengurutkan distance dari terdekat

            $K_VALUE = $this->input->post('k_value');
            $NEIGHBOUR = array();
            for( $k=0; $k< $K_VALUE ; $k++ ) //memetakan tetangga
            {
                if( !isset( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] ) )
                    $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] = array();
                
                array_push( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] , $DISTANCES[ $k ]) ;
            }

            $terbesar =  array();//mencari tetangga terbanyak
            foreach(array_keys($NEIGHBOUR) as $paramName)
            {
                
                if(  count( $NEIGHBOUR[ $paramName ] )  > count( $terbesar ) )
                {
                    $terbesar = $NEIGHBOUR[ $paramName ];
                }
            }
            
            $data_uji[ $i ]['data_label'] = $terbesar[0]['data_label'];//update nilai label (lulus / tidak lulus)
        }
        
        $data["K_VALUE"] = $K_VALUE;
        $data["NEIGHBOURS"] = $NEIGHBOUR;
        
        $data["tetangga_terdekat"] = $DISTANCES;
        //ubah ke array object
        foreach( $data["tetangga_terdekat"]  as  $ind=>$val )
        {   
            $data["tetangga_terdekat"][ $ind ] = (object) $data["tetangga_terdekat"][ $ind ];
        }
        $data["data_uji"] = $data_uji;
        //ubah ke array object
        foreach( $data["data_uji"]  as  $ind=>$val )
        {   
            $data["data_uji"][ $ind ] = (object) $data_uji[ $ind ];
            unset( $data_uji[ $ind ]['nama_lengkap'] );
        }
        // echo json_encode( $data_uji ).'<br>' ;

        // update data uji
        $this->m_data_uji_normalized->_update_batch( $data_uji );

        $data['page_name'] = "Hasil Data Uji";
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
            $this->load->view("_admin/data_uji/View_detail_uji",$data);
        $this->load->view("_admin/_template/footer");  
  }

  public function uji_batch(  )
  {

				
       if( !($_POST) ) redirect(site_url('admin/data_uji'));  

        $data_uji = $this->m_data_uji_normalized->read_single_table( -1, "array" );
        $data_testing = $this->m_data_testing_normalized->read( -1, "array" );

        $min_max = $this->m_data_testing->get_min_max( );
        // echo json_encode( $data_testing ).'<br>' ;
        // return;

        if(  empty( $data_uji ) || empty( $data_testing ) ) {
            redirect(site_url('admin/data_uji'));
            return;
        }
        // echo json_encode( $data_testing );
        

        for( $i=0; $i< count( $data_uji ); $i++ )
        {
            $DISTANCES = array();
            for( $j=0; $j< count( $data_testing ); $j++ )
            {
                $dist['distances'] = $this->distance( $data_uji[ $i ], $data_testing[ $j ] );
                $dist['data_label'] = $data_testing[ $j ]['data_label'];
                $dist['data_name'] = $data_testing[ $j ]['data_name'];
                // echo json_encode( $dist ).'<br>' ;
                
                array_push($DISTANCES , $dist) ;
            }
            sort($DISTANCES);//mengurutkan distance dari terdekat
            // echo "DISTANCES".json_encode( $DISTANCES ).'<br>' ;

            $K_VALUE = $this->input->post('k_value');
            $NEIGHBOUR = array();
            for( $k=0; $k< $K_VALUE ; $k++ ) //memetakan tetangga
            {
                if( !isset( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] ) )
                    $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] = array();
                
                array_push( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] , $DISTANCES[ $k ]) ;
            }
            // echo 'NEIGHBOUR'.json_encode( $NEIGHBOUR ).'<br>' ;
            

            $terbesar =  array();
            foreach(array_keys($NEIGHBOUR) as $paramName)
            {
                
                if(  count( $NEIGHBOUR[ $paramName ] )  > count( $terbesar ) )
                {
                    $terbesar = $NEIGHBOUR[ $paramName ];
                    // echo json_encode( $terbesar ).'<br>' ;
                }
            }
            // echo 'terbesar'.json_encode( $terbesar ).'<br>' ;
            
            $data_uji[ $i ]['data_label']        = $terbesar[0]['data_label'];//update nilai label (lulus / tidak lulus)
            $data_uji[ $i ]['tetangga_terdekat'] =  $terbesar[0]['data_name'] ."(" . $terbesar[0]['distances']  .")" ;//update nilai label (lulus / tidak lulus)
        }

        foreach( $data_uji  as  $ind=>$val )
        {   
            unset( $data_uji[ $ind ]['user_profile_fullname'] );
        }
        // echo json_encode( $data_uji );
        if(  $this->m_data_uji_normalized->_update_batch( $data_uji ) )
        {
            $this->session->set_flashdata('info', array(
                'from' => 1,
                'message' =>  'item berhasil di di uji'
              ));
              redirect(site_url('admin/data_uji'));
              return;
        }else{
            $this->session->set_flashdata('info', array(
                'from' => 0,
                'message' =>  'terjadi kesalahan saat menguji data'
              ));
              redirect(site_url('admin/data_uji'));
				}

  }

  public function uji_batch_2(  ){

// Nonaktifkan semua error kecuali error fatal
error_reporting(E_ERROR);

// Kode Anda di sini
// ...

// Aktifkan kembali error reporting (opsional)
error_reporting(E_ALL);


        if( !($_POST) ) redirect(site_url('admin/data_uji'));  

        // $data_uji = $this->m_data_uji_normalized->read_single_table( -1, "array" );
        $data_uji = $this->m_data_uji_normalized->read( -1, "array" );
        $data_testing = $this->m_data_testing_normalized->read( -1, "array" );


        $min_max = $this->m_data_testing->get_min_max( );
        // echo json_encode( $data_testing ).'<br>' ;
        // return;

        if(  empty( $data_uji ) || empty( $data_testing ) ) {
            redirect(site_url('admin/data_uji'));
            return;
        }
        // echo json_encode( $data_testing );
        

        for( $i=0; $i< count( $data_uji ); $i++ )
        {
            $DISTANCES = array();
            for( $j=0; $j< count( $data_testing ); $j++ )
            {
                $dist['jarak'] = $this->distance( $data_uji[ $i ], $data_testing[ $j ] );
                $dist['data_label'] = $data_testing[ $j ]['data_label'];
                $dist['nama_lengkap'] = $data_testing[ $j ]['nama_lengkap'];
                // echo json_encode( $dist ).'<br>' ;
                
                array_push($DISTANCES , $dist) ;
            }
            sort($DISTANCES);//mengurutkan distance dari terdekat
            // echo "DISTANCES".json_encode( $DISTANCES ).'<br>' ;

            $K_VALUE = $this->input->post('k_value');
            $NEIGHBOUR = array();
            for( $k=0; $k< $K_VALUE ; $k++ ) //memetakan tetangga
            {
                if( !isset( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] ) )
                    $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] = array();
                
                array_push( $NEIGHBOUR[ $DISTANCES[ $k ]['data_label'] ] , $DISTANCES[ $k ]) ;
            }


           	$terbesar =  array();
            foreach(array_keys($NEIGHBOUR) as $paramName)
            {
                
                if(  count( $NEIGHBOUR[ $paramName ] )  > count( $terbesar ) )
                {
                    $terbesar = $NEIGHBOUR[ $paramName ];
                }
            }


            /*$lulus = ( @$NEIGHBOUR[ 1 ] )  ? count( $NEIGHBOUR[ 1 ] )  : 0;

            $sum = 0;
            $count = count( $NEIGHBOUR[ 1 ] ) ; 
            foreach( $NEIGHBOUR[ 1 ] as $_length )
            {
                $sum += $_length['jarak'];
            }
            $avrg = $sum / $count; // perhitungan nilai jarak rata-rata*/

	//kode dari chat gpt berhasil
	$lulus = ( isset($NEIGHBOUR[1]) && count($NEIGHBOUR[1]) > 0 ) ? count($NEIGHBOUR[1]) : 0;

	$sum = 0;
	$count = isset($NEIGHBOUR[1]) ? count($NEIGHBOUR[1]) : 0; 
	if($count > 0) {
	    foreach( $NEIGHBOUR[1] as $_length ) {
		$sum += $_length['jarak'];
	    }
	    $avrg = $sum / $count;
	} else {
	    $avrg = 0; // atau nilai default lainnya
	}


            
            $data_uji[ $i ]['data_label']        = $terbesar[0]['data_label'];//update nilai label (lulus / tidak lulus)
            $data_uji[ $i ]['tetangga_terdekat'] =  $avrg;
            $data_uji[ $i ]['K_VALUE']           = $K_VALUE;
            $data_uji[ $i ]['jarak']             = $DISTANCES;
            $data_uji[ $i ]['NEIGHBOURS']        = $NEIGHBOUR;

            $data_uji_param['data_id'] = $data_uji[ $i ]['data_id'];
						$this->m_data_uji_normalized->update( $data_uji[ $i ], $data_uji_param );
        }
        
        $data['data_uji'] = $data_uji;

        $data['files']  = $this->m_data_uji_normalized->rangking(  );
        $data['data_uji'] = $data_uji;
        $data['page_name'] = "Hasil Data Uji";
        $this->load->view("_admin/_template/header");
        $this->load->view("_admin/_template/sidebar_menu");
        $this->load->view("_admin/data_uji/View_detail_uji_batch",$data);
	$this->load->view("_admin/_template/footer");

  }

    //   fungsi untuk menghitung jarak
  private function distance($data_uji, $data_testing )
  {     
        $attrs = array(
            'rencana_tanam', 'umt1', 'umt2', 'nmt1', 'nmt2'
        );
        $value = 0;
        foreach( $attrs as $attr )
        {
            $value+= pow( ( $data_uji[ $attr ] - $data_testing[ $attr ] ), 2 );
        }
        return round( sqrt( $value ), 6 );
  }
}
