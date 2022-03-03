<?php require_once('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content --> 
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>THÊM MỚI THÀNH VIÊN </strong>
          </h3>
               
          <div class="card-tools">
          <a class="btn btn-sm btn-success" href="#"> <i class="fas fa-save"></i>Lưu[Thêm]</a>
          <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-sign-out-alt"></i>Thoát</a>
          </div>
        </div>
     
        <div class="card-body">
            <div class="row-1"style="float:left; width:70%; " >
                <div class="from-group">
                    <label for>Họ tên thành viên</label>
                    <input type="text" class="form-control" nam placeholder="Họ Và Tên">
                </div>

                <div class="from-group">
                    <label for>Email</label>
                    <input type="text" class="form-control" nam placeholder="Thư điện tử">
                </div>

                <div class="from-group">
                    <label for>Số Điện thoại</label>
                    <input type="text" class="form-control" nam placeholder="Số Điện thoại">
                </div>

                <div class="from-group">
                    <label for>Tên Đăng Nhập</label>
                    <input type="text" class="form-control" nam placeholder="Tên Đăng Nhập">
                </div>

                <div class="from-group">
                    <label for>Mật Khẩu</label>
                    <input type="text" class="form-control" nam placeholder="Mật Khẩu">
                </div>

                <div class="from-group">
                    <label for>Xác Nhận Mật Khẩu</label>
                    <input type="text" class="form-control" nam placeholder="Họ Và Tên">
                </div>
            </div>
            <div class="row-2" style="float:right;width:25%; ">
                <div class="from-group">
                    <label for> Giới Tính</label>
                    <select  class="form-control" name id>
                        <option >-- Chọn Giới Tính --</option>
                        <option > Nam </option>
                        <option > Nữ </option>
                    </select>
                </div>
                <div class="from-group">
                    <label for>Xét Quyền</label>
                    <select  class="form-control" name id>
                        <option >-- Chọn Quyền --</option>
                        <option > Administrator </option>
                        <option > Editor </option>
                    </select>
                </div>
                <div class="from-group">
                    <label for>Avatar</label>
                    <input type="file" class="form-control" name>
                </div>

                <div class="from-group">
                    <label for> Trạng Thái</label>
                    <select  class="form-control" name id>
                        <option > Xuất Bản </option>
                        <option > Chưa Xuất Bản</option>
                    </select>
                </div>
            </div>
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