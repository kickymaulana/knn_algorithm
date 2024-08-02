<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_register extends CI_Model{

    function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function getData(){
        return $result =array(
            array(),
            array()
        ) ;
    }

    public function register($data, $dataProfile) {
        $data['level'] = 2;
        $data['status'] = 1;
        $data['create_date'] = date("Y-m-d");
        $this->db->where('username', $data['username']);
        $result = $this->db->get('user')->row();
            // echo var_dump($result);
        if(empty($result) ){
            if( $this->db->insert('user', $data) ){
                    $this->db->where('username', $data['username']);
                    $this->db->where('password', $data['password']);
                    $result = $this->db->get('user')->row();
                    // echo var_dump($result);
                    $datasession = array(
                        'nik' => $result->nik,
                        'username' => $data['username'],
                        'level' => $data['level'],
                        'nama_lengkap' => $dataProfile['nama_lengkap'],
                    );
                    $dataProfile['nik'] = $result->nik;
                    
                    if( $this->db->insert('user_profile', $dataProfile)){
                        return $data = array(
                            'status' => 1,
                            'message' => $datasession
                        );
                    }else{
                        return $data = array (
                            'status' => 0,
                            'message' => "terjadi kesalahan input"
                        );
                    }
                }
        }else{
            return $data = array (
                'status' => 0,
                'message' => "username sudah di gunakan, gunakan username lain"
            );
        }
            
        
    }

    function __destruct() {
        $this->db->close();
    }
}
?>
