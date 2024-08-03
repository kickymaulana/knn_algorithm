<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_data_testing extends CI_Model{
    function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function create( $data_testing )
    {
        return $this->db->insert_batch('data_testing', $data_testing);
    }
    public function read( $data_id = -1 )
    {
        $sql = "
            SELECT * from data_testing
        ";
        if( $data_id != -1 ){
            $sql .= "
                where data_id = '$data_id'
            ";  
        }
        return $query = $this->db->query($sql)->result();
    }
    public function update( $data_testing, $data_testing_param )
    {
        return  $this->db->update('data_testing', $data_testing, $data_testing_param);
    }
    public function delete(  $data_testing_param )
    {
        return $this->db->delete( "data_testing" , $data_testing_param);
    }
    public function count(  )
    {
        return $this->db->count_all("data_testing");
    }

    public function get_min_max(  )
    {
        $sql = "
            SELECT * from data_testing
        ";
         $query = $this->db->query($sql)->result();
         if( empty(  $query ) ){
            return array();
         }
        return array(
            "min_rencana_tanam" => $this->db->query("SELECT a.rencana_tanam FROM data_testing a ORDER BY a.rencana_tanam ASC LIMIT 1")->result(  )[0]->rencana_tanam,
            "max_rencana_tanam" => $this->db->query("SELECT a.rencana_tanam FROM data_testing a ORDER BY a.rencana_tanam DESC LIMIT 1")->result(  )[0]->rencana_tanam,
            "min_umt1" => $this->db->query("SELECT a.umt1 FROM data_testing a ORDER BY a.umt1 ASC LIMIT 1")->result(  )[0]->umt1,
            "max_umt1" => $this->db->query("SELECT a.umt1 FROM data_testing a ORDER BY a.umt1 DESC LIMIT 1")->result(  )[0]->umt1,
            "min_umt2" => $this->db->query("SELECT a.umt2 FROM data_testing a ORDER BY a.umt2 ASC LIMIT 1")->result(  )[0]->umt2,
            "max_umt2" => $this->db->query("SELECT a.umt2 FROM data_testing a ORDER BY a.umt2 DESC LIMIT 1")->result(  )[0]->umt2,
            "min_nmt1" => $this->db->query("SELECT a.nmt1 FROM data_testing a ORDER BY a.nmt1 ASC LIMIT 1")->result(  )[0]->nmt1,
            "max_nmt1" => $this->db->query("SELECT a.nmt1 FROM data_testing a ORDER BY a.nmt1 DESC LIMIT 1")->result(  )[0]->nmt1,
            "min_nmt2" => $this->db->query("SELECT a.nmt2 FROM data_testing a ORDER BY a.nmt2 ASC LIMIT 1")->result(  )[0]->nmt2,
            "max_nmt2" => $this->db->query("SELECT a.nmt2 FROM data_testing a ORDER BY a.nmt2 DESC LIMIT 1")->result(  )[0]->nmt2
        );
         
    }

}
