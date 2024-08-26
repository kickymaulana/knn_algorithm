<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <style>
        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }
    </style>
  </head>
  <body>
 <h1 style="text-align: center;">Daftar Perengkingan Penerima Pupuk Subsidi</h1>
              <table id="tableDocument" class="table table-striped table-bordered table-hover" border="1">
                <thead class="thin-border-bottom">
                  <tr >
                    <th>No</th>
                    <th>Nama</th>
                    <th>tanaman</th>
                    <th>rencana_tanam </th>
                    <th>umt1</th>
                    <th>umt2</th>
                    <th>nmt1</th>
                    <th>nmt2</th>
                    <th>Label</th>
                    <th>X</th>
                    
                  </tr>
                </thead>
                <tbody>
                    <?php 
                      $no=1;
                      foreach( $files as $file ):
                    ?>
                      <tr>
                        <td>
                            <?php echo $no?>
                        </td>
                        <td>
                            <?php echo $file->nama_lengkap  ?>
                        </td>
                        <td>
                            <?php echo $file->tanaman  ?>
                        </td>
                        <td>
                            <?php echo $file->rencana_tanam ?>
                        </td>
                        <td>
                            <?php echo $file->umt1 ?>
                        </td>
                        <td>
                            <?php echo $file->umt2 ?>
                        </td>
                        <td>
                            <?php echo $file->nmt1 ?>
                        </td>
                        <td>
                            <?php echo $file->nmt2 ?>
                        </td>
                        <td>
                            <?php echo  ( $file->data_label == 1 )? "LAYAK" : ( ( $file->data_label == 0 )? "TIDAK LAYAK" : "BELUM DI UJI"   )  ?>
                        </td>
                        <td>
                            <?php echo  ( $file->tetangga_terdekat)  ?>
                        </td>
                      </tr>
                    <?php 
                      $no++;
                    endforeach;?>
                </tbody>
              </table>
<script type="text/javascript">
	window.print();
</script>
  </body>
</html>
