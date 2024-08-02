<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model{

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function login($data) {
        $username = $data[ "username" ];
        $pass = $data[ "password" ];
        $sql ="
            SELECT a.nama_lengkap,  a.foto, b.status , b.level , b.nik, b.username
            from user_profile a
            LEFT JOIN user b on b.nik = a.nik
            WHERE b.username = '$username'
            and b.password = '$pass'
        ";

        $result = $this->db->query($sql)->result();

        return $result;
        // echo var_dump($result);
    }
    

    function __destruct() {
        $this->db->close();
    }

    // API
    public function loginAPI($data) {
        $username = $data[ "username" ];
        $pass = $data[ "password" ];
        $sql ="
            SELECT a.*, b.status , b.level , b.nik, b.username
            from user_profile a
            LEFT JOIN user b on b.nik = a.nik
            WHERE b.username = '$username'
            and b.password = '$pass'
        ";

        $result = $this->db->query($sql)->result();

        return $result;
    }
}

