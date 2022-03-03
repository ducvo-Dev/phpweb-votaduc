<?php
 $topic =LoadModel('topic');
 $list = $topic->topic_list(['status'=>'index','sort'=>['orderby'=>'created_at','order'=>'DESC']]);
 ?>
<?php include('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>DANH SÁCH CHỦ ĐỀ </strong>
          </h3>
          <div class="card-tools">
          <a class="btn btn-sm btn-success" href="index.php?option=topic&cat=insert" role="button">
           <i class="fas fa-plus"></i>Thêm mới </a>
          <a class="btn btn-sm btn-danger" href="index.php?option=topic&cat=trash" role="button"> <i class="fas fa-trash"></i>Thùng Rác</a>
          </div>
        </div>
       
        <div class="card-body">
              <?php require_once('views/message.php') ;?> 
              <table class="table table-striped table-bordered" id="myTable" >
                <thead>
                  <tr>
                    <th >Tên Loại chủ đề</a> </th>
                    <th class="text-center" style="width:200px;">Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach($list as $row):?>
                    <tr>
                        
                    <td> <?php echo $row['name'];?> </td>
                        
                        <td class="text-center">
                        <?php if($row['status']==1):?>
                          <a  class="btn btn-sm btn-success" href="index.php?option=topic&cat=status&id=<?php echo $row['id'];?>" role="button"><i class="fas fa-toggle-on"></i></a>
                        <?php else:?>
                          <a class="btn btn-sm btn-danger" href="index.php?option=topic&cat=status&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-toggle-off"></i></a>
                        <?php endif;?>
                        <a class="btn btn-sm btn-info" href="index.php?option=topic&cat=update&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-edit"></i></a>
          
                        <a class="btn btn-sm btn-danger" href="index.php?option=topic&cat=deltrash&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-trash"></i></a>
                        </td>
                        <td class="text-center" ><?php echo $row ['id'];?></td>
                      </tr>
                   <?php endforeach;?>      
                </tbody>
              </table>
                
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
        
        </div>
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->
      <?php require_once('views/message.php');?>
    </section>
    <!-- /.content -->
    
  </div>
  
  <script>
    $(document).ready( function () {
      $('#myTable').DataTable();
      } );
  </script>
 
  <!-- /.content-wrapper -->
  <?php include('views/footer.php'); ?>
 