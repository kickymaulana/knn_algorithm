
<!-- Full Width Column -->
<div class="content-wrapper">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Isi biodata penerima
        </h1>
        
      </section>
      <!-- alert  -->
      <?php
        if($this->session->flashdata('info')){
            if( $this->session->flashdata('info')['from'] ){
                echo"
                <div class=' alert alert-success alert-dismissible'>
                <h4><i class='icon fa fa-globe'></i> Information!</h4>".
                $this->session->flashdata('info')["message"].
                "</div>
                ";
            }else{
                echo"
                <div class='alert alert-danger alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h4><i class='icon fa fa-ban'></i> Alert!</h4>".
                $this->session->flashdata('info')["message"].
                "</div>";
            }
          }
        ?>
      <!-- alert  -->
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-md-9">
              <?php echo form_open_multipart();?>
                <div class="box">
                  <div class="box-body">
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">Nik</label>
                      </div>
                      <div class="col-md-8">
                          <input type="text" class="form-control"  name="nik" value="<?php echo set_value("nik"  ); ?>"/>
                          <span style="color:red"><?php echo form_error("nik"); ?></span>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">Nama Lengkap</label>
                      </div>
                      <div class="col-md-8">
                          <input type="text" class="form-control"  name="nama_lengkap" value="<?php echo set_value("nama_lengkap"  ); ?>"/>
                          <span style="color:red"><?php echo form_error("nama_lengkap"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">Alamat</label>
                      </div>
                      <div class="col-md-8">
                          <input type="text" class="form-control"  name="alamat" value="<?php echo set_value("alamat"  ); ?>"/>
                          <span style="color:red"><?php echo form_error("alamat"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">No Telp</label>
                      </div>
                      <div class="col-md-8">
                          <input type="text" class="form-control"  name="no_hp" value="<?php echo set_value("no_hp"); ?>"/>
                          <span style="color:red"><?php echo form_error("no_hp"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">Rencana Tanam(Ha)</label>
                      </div>
                      <div class="col-md-8">
                          <input type="number" step="any" class="form-control"  name="rencana_tanam" value="<?php echo set_value("rencana_tanam"); ?>"/>
                          <span style="color:red"><?php echo form_error("rencana_tanam"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">UREA MT 1</label>
                      </div>
                      <div class="col-md-8">
                          <input type="number" step="any" class="form-control"  name="umt1" value="<?php echo set_value("umt1"); ?>"/>
                          <span style="color:red"><?php echo form_error("umt1"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">UREA MT 2</label>
                      </div>
                      <div class="col-md-8">
                          <input type="number" step="any" class="form-control"  name="umt2" value="<?php echo set_value("umt2"); ?>"/>
                          <span style="color:red"><?php echo form_error("umt2"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">NPK MT 1</label>
                      </div>
                      <div class="col-md-8">
                          <input type="number" step="any" class="form-control"  name="nmt1" value="<?php echo set_value("nmt1"); ?>"/>
                          <span style="color:red"><?php echo form_error("nmt1"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                      <div class="col-md-3">
                          <label for="" class="control-label">NPK MT 2</label>
                      </div>
                      <div class="col-md-8">
                          <input type="number" step="any" class="form-control"  name="nmt2" value="<?php echo set_value("nmt2"); ?>"/>
                          <span style="color:red"><?php echo form_error("nmt2"); ?></span>
                      </div>
                    </div>
                    <!--  -->
                  </div>
                </div>
                <div class="box">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <button type="submit" class="pull-right btn btn-sm btn-primary" >
                                    <i class="ace-icon fa fa-paper-plane"></i>
                                    <span class="bigger-110">Kirim</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
              <?php echo form_close()?>
          </div>
        </div>
      </section>
    </div>
  </div>
