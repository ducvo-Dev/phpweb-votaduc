<?php
 $category =LoadModel('category');

 $list = $category->category_list(['status'=>'trash','sort'=>['orderby'=>'created_at','order'=>'DESC']]);
 ?>
<?php include('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>THÙNG RÁC LOẠI SẢN PHẨM </strong>
          </h3>
          <div class="card-tools">
          <a class="btn btn-sm btn-danger" href="index.php?option=category" role="button"> 
          <i class="fas fa-times"></i>Thoát</a>
          </div>
        </div>
       
        <div class="card-body">
                    <?php require_once('views/message.php') ;?>
                      <table class="table table-striped table-bordered"  >
                      <thead>
                  <tr>
                    <th >Tên Loại Sản phẩm</a> </th>
                    <th class="text-center" style="width:200px;">Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                <?php foreach($list as $row):?>
                    <tr>
                        
                    <td> <?php echo $row['name'];?> </td>
                        
                        <td class="text-center">
                       
                        <a class="btn btn-sm btn-info" href="index.php?option=category&cat=retrash&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-edit"></i></a>
          
                        <a class="btn btn-sm btn-danger" href="index.php?option=category&cat=delete &id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-trash"></i></a>
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
  
  <!-- /.content-wrapper -->
  <?php include('views/footer.php'); ?>