<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    <?php echo $page_name ?>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active">Dashboard</li>
  </ol>
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
          "</div>
          ";
      }
    }
  ?>
<!-- alert  -->
<!-- Main content -->
  <section class="content">
    <?php foreach( $users as $user ):  ?>
        <div class="row">
            <div class="col-md-12">
                <?php echo form_open_multipart();?>
                <div class="box">
                    <div class="box-body">
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">Nama Lengkap</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control"  name="nama_lengkap" value="<?php echo set_value("nama_lengkap" , $user->nama_lengkap   );  ?>" readonly />
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
                            <input type="text" class="form-control"  name="alamat" value="<?php echo set_value("alamat",$user->alamat  ); ?>"readonly  />
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
                            <input type="text" class="form-control"  name="no_hp" value="<?php echo set_value("no_hp" , $user->no_hp); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("no_hp"); ?></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">Tanaman</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control"  name="tanaman" value="<?php echo set_value("tanaman" , $user->tanaman); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("tanaman"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">Rencana Tanam</label>
                        </div>
                        <div class="col-md-8">
                            <input type="number" step="any" class="form-control"  name="rencana_tanam" value="<?php echo set_value("rencana_tanam" , $user->rencana_tanam); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("rencana_tanam"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">umt1</label>
                        </div>
                        <div class="col-md-8">
                            <input type="number" step="any" class="form-control"  name="umt1" value="<?php echo set_value("umt1" , $user->umt1); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("umt1"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">umt2</label>
                        </div>
                        <div class="col-md-8">
                            <input type="number" step="any" class="form-control"  name="umt2" value="<?php echo set_value("umt2" , $user->umt2); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("umt2"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">nmt1</label>
                        </div>
                        <div class="col-md-8">
                            <input type="number" step="any" class="form-control"  name="nmt1" value="<?php echo set_value("nmt1" , $user->nmt1); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("nmt1"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    <!-- - -->
                    <div class="row">
                        <div class="col-md-3">
                            <label for="" class="control-label">nmt2</label>
                        </div>
                        <div class="col-md-8">
                            <input type="number" step="any" class="form-control"  name="nmt2" value="<?php echo set_value("nmt2" , $user->nmt2 ); ?>" readonly/>
                            <span style="color:red"><?php echo form_error("nmt2"); ?></span>
                        </div>
                    </div>
                    <!--  -->
                    </div>
                </div>
                <?php echo form_close()?>
            </div>
        </div>
    <?php endforeach;  ?>
  </section>
</div>
