<?php require_once('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>DANH SÁCH TRANG ĐƠN </strong>
          </h3>
          <div class="card-tools">
          <a class="btn btn-sm btn-success" href="#"> <i class="fas fa-plus"></i>Thêm</a>
          <a class="btn btn-sm btn-danger" href="#"> <i class="fas fa-trash"></i>Thùng Rác</a>
          </div>
        </div>
        
        <div class="card-body">
                      <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th style='width:160px;' >Hình Ảnh </th>
                    <th >Tiêu Đề Trang Đơn</th>
                    <th >Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>
                        <img src="../../../public/images/photo4.jpg" class="img-fluid" alt="">
                        </th>
                        <td><a href="#">Bài viết mới 1<a></td>
                        
                        <td style="text-align:center;">
                          <a class="btn btn-sm btn-success" href="#"><i class="fas fa-toggle-on"></i></a>
                          <a class="btn btn-sm btn-infor" href="#"><i class="fas fa-edit"></i> </a>
                          <a class="btn btn-sm btn-danger" href="#"> <i class="fas fa-trash"></i></a>
                          
                        </td>
                        <td>1</td>
                      </tr>
                     
                    
                </tbody>
              </table>
                
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          Footer
        </div>
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php require_once('views/footer.php'); ?>