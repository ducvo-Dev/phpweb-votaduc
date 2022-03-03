<?php
 $product =LoadModel('product');
 $list = $product->product_list(['status'=>'index','sort'=>['orderby'=>'created_at','order'=>'DESC']]);
 ?>
<?php include('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>DANH SÁCH SẢN PHẨM </strong>
          </h3>
          <div class="card-tools">
          <a class="btn btn-sm btn-success" href="index.php?option=product&cat=insert" role="button">
           <i class="fas fa-plus"></i>Thêm mới </a>
          <a class="btn btn-sm btn-danger" href="index.php?option=product&cat=trash" role="button"> <i class="fas fa-trash"></i>Thùng Rác</a>
          </div>
        </div>
       
        <div class="card-body">
              <?php require_once('views/message.php') ;?> 
              <table class="table table-striped table-bordered" id="myTable" >
                <thead>
                  <tr>
                    <th style='width:140px;' >Hình Ảnh </th>
                    <th >Tên Sản phẩm </th>
                    <th >Loại Sản phẩm </th>
                    <th class="text-center" style="width:200px;">Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach($list as $row):?>
                    <tr>
                       <td>
                      <img src="../public/images/post/<?php echo $row['img'];?>" class="img-fluid" alt="<?php echo $row['img'];?>">
                        </td>
                    <td> <?php echo $row['name'];?> </td>
                    <td> <?php echo $row['catid'];?> </td>
                        <td class="text-center">
                        <?php if($row['status']==1):?>
                          <a  class="btn btn-sm btn-success" href="index.php?option=product&cat=status&id=<?php echo $row['id'];?>" role="button"><i class="fas fa-toggle-on"></i></a>
                        <?php else:?>
                          <a class="btn btn-sm btn-danger" href="index.php?option=product&cat=status&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-toggle-off"></i></a>
                        <?php endif;?>
                        <a class="btn btn-sm btn-info" href="index.php?option=product&cat=update&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-edit"></i></a>
          
                        <a class="btn btn-sm btn-danger" href="index.php?option=product&cat=deltrash&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-trash"></i></a>
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
 