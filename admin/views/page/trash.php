<?php
 $post =LoadModel('post');
 $topic =LoadModel('topic');
 $list = $post->post_list(['status'=>'trash','type'=>'post']);
 ?>
<?php include('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>THÙNG RÁC BÀI VIẾT </strong>
          </h3>
          <div class="card-tools">
          <a class="btn btn-sm btn-danger" href="index.php?option=post" role="button"> 
          <i class="fas fa-times"></i>Thoát</a>
          </div>
        </div>
       
        <div class="card-body">
                      <table class="table table-striped table-bordered"  >
                <thead>
                  <tr>
                    <th style='width:140px;' >Hình Ảnh </th>
                    <th >Tiêu đề bài viết</th>
                    <th >Chủ đề bài viết</th>
                    <th style="text-align:center;">Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach($list as $row):?>
                    <tr>
                        <td>
                        <img src="../public/images/post/<?php echo $row['img'];?>" class="img-fluid" alt="<?php echo $row['img'];?>">
                        </td>
                        <td><?php echo $row['title'];?></td>
                        <td><?php echo $topic->topic_name( $row['topid']);?></td>
                        <td class="text-center">
                      
                        <a class="btn btn-sm btn-info" href="index.php?option=post&cat=retrash&id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-edit"></i></a>
          
                        <a class="btn btn-sm btn-danger" href="index.php?option=post&cat=delete &id=<?php echo $row['id'];?>" role="button"> <i class="fas fa-trash"></i></a>
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