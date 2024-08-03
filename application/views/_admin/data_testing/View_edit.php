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

<!-- Main content -->
  <section class="content">
    <div class="box">
        <div class="box-header">
          <h3 class="box-title"><?php echo $page_name ?></h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <?php echo form_open_multipart();?>
            <div class="row">
                <div class="col-xs-12">
                    <?php 
                      $a = array( 1 );
                      $ind = 0;
                      foreach( $files as $file ):
                    ?>
                      <div class="row  ">
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="text" class="form-control" placeholder="Nama" name="nama_lengkap[<?php echo $ind ?>]" value="<?php echo set_value("nama_lengkap[$ind]", $file->nama_lengkap  ); ?>"/>
                                  <span style="color:red"><?php echo form_error("nama_lengkap[$ind]"); ?></span>
                              </div>
                          </div> 
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="number"  step="any"  class="form-control" placeholder="rencana_tanam" name="rencana_tanam[<?php echo $ind ?>]" value="<?php echo set_value("rencana_tanam[$ind]",  $file->rencana_tanam ); ?>"/>
                                  <span style="color:red"><?php echo form_error("rencana_tanam[$ind]"); ?></span>
                              </div>
                          </div> 
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="number" step="any" class="form-control" placeholder="umt1" name="umt1[<?php echo $ind ?>]" value="<?php echo set_value('umt1['.$ind.']',  $file->umt1); ?>"/>
                                  <span style="color:red"><?php echo form_error('umt1['.$ind.']'); ?></span>
                              </div>
                          </div> 
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="number" step="any" class="form-control" placeholder="umt2" name="umt2[<?php echo $ind ?>]" value="<?php echo set_value('umt2['.$ind.']',  $file->umt2); ?>"/>
                                  <span style="color:red"><?php echo form_error('umt2['.$ind.']'); ?></span>
                              </div>
                          </div> 
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="number" step="any" class="form-control" placeholder="nmt1" name="nmt1[<?php echo $ind ?>]" value="<?php echo set_value('nmt1['.$ind.']', $file->nmt1); ?>"/>
                                  <span style="color:red"><?php echo form_error('nmt1['.$ind.']'); ?></span>
                              </div>
                          </div> 
                          <div class="col-xs-2 ">
                              <div class="form-group has-feedback">
                                  <input type="number" step="any" class="form-control" placeholder="nmt2" name="nmt2[<?php echo $ind ?>]" value="<?php echo set_value('nmt2['.$ind.']', $file->nmt2); ?>"/>
                                  <span style="color:red"><?php echo form_error('nmt2['.$ind.']'); ?></span>
                              </div>
                          </div> 
                      </div>
                    <?php 
                      $ind++;
                      endforeach;
                    ?>
                    <br>
                    <div class="row">
                        <div class="col-xs-12">
                            <input id="" type="text" name="data_id" value="<?php echo $file->data_id ?>"  hidden readonly />
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
      </div>
    </div>
  </section>
</div>
