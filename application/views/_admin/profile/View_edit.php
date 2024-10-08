<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Profile
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
  <!-- Small boxes (Stat box) -->
    <?php if( !empty($user) ): ?>
        <?php echo form_open_multipart();?>
        <div class="row">
            <div class="col-xs-12">
                <div class="row  ">
                    <div class="col-xs-6 ">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Full Name" name="nama_lengkap" value="<?php echo set_value('nama_lengkap', $user[0]->nama_lengkap); ?>"/>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                        <span style="color:red"><?php echo form_error('nama_lengkap'); ?></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" placeholder="Email" name="email" value="<?php echo set_value('email', $user[0]->email); ?>"/>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                        <span style="color:red"><?php echo form_error('email'); ?></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Address" name="alamat" value="<?php echo set_value('alamat', $user[0]->alamat); ?>"/>
                        <span class="ace-icon fa fa-location-arrow form-control-feedback"></span>
                        <span style="color:red"><?php echo form_error('alamat'); ?></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Password" name="password" value="<?php echo set_value('password'); ?>"/>
                        <span class="ace-icon fa fa-lock form-control-feedback"></span>
                        <span style="color:red"><?php echo form_error('password'); ?></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" placeholder="Phone" name="no_hp" value="<?php echo set_value('no_hp',  $user[0]->no_hp); ?>"/>
                        <span class="ace-icon fa fa-user form-control-feedback"></span>
                        <span style="color:red"><?php echo form_error('no_hp'); ?></span>
                    </div>
                    <!--  -->
                    <label for="">Foto </label>
                    <label class="block clearfix">
                        <span class="block input-icon input-icon-right">
                            <input type="file" class="form-control"  name="document_file"/>
                        </span>
                    </label>
                    <!--  -->
                    </div> 
                    <div class="col-xs-6"> 
                        <center>
                            <div style="background-color: grey ; padding : 8px">
                            <img src="<?php echo base_url()."upload/user/".$user[0]->foto  ?>" alt="" height="300" width="auto" >
                            </div>
                        </center>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-xs-12">
                    <input id="" type="text" name="user_old_images" value="<?php echo $user[0]->foto ?>"  hidden readonly />
                        <button type="submit" class="pull-right btn btn-sm btn-primary ">
                            <i class="ace-icon fa fa-paper-plane"></i>
                            <span class="bigger-110">Submit</span>
                        </button>  
                    </div>
                </div>
            </div>
        </div>
            <?php echo form_close()?>
        </div>    
    <?php endif; ?>
</section>
<!-- /.content -->
</div>
