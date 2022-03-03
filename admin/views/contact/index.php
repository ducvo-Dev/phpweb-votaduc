<?php require_once('views/header.php'); ?>
  <div class="content-wrapper my-2">

    <!-- Main content --> 
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            <strong class=text-danger>TẤT CẢ LIÊN HỆ </strong>
          </h3>
               
          <div class="card-tools">
     
          </div>
        </div>
        <div>
                <lable style="margin:20px"> <b>Show</b>
                    <select id="browsers">
                        <option value="25">25</option>
                        <option value="50">50</option>
                        <option value="75">75</option>
                        <option value="100">100</option>
                    </select>
                     <b>Entries</b>
                </lable>
            <label style="float:right ;margin:15px;"> 
                Search:
                <input type="search">
            </label>
        </div>  
        <div class="card-body">
                      <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    
                   
                    <th >Tiêu Đề Liên Hệ</th>
                    <th >Email</th>
                    <th class="text-center">Điện Thoại</th>
                    <th class="text-center">Trạng Thái</th>
                    <th class="text-center" >Chức Năng</th>
                    <th style='width:20px;' >ID</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <td ><a href="#">Tiêu Đề Liên Hệ 1</a></td>
                        <td ><a href="#">taduc333@gmail.com</a></td>
                        <td><a href="#">0303303303</a>
                        <td class="text-center" >
                        <span class="badge badge-success">chưa Trả Lời</span>
                        </td>
                        <td style="width:250px ;text-align:center;">
                    
                          <a class="btn btn-sm btn-infor" href="#"><i class="fas fa-edit">Trả Lời</i> </a>
                       
                        </td>
                        <td class="text-center" >1</td>
                      </tr>
                     
                </tbody>
              </table>
                <div id="mytable-wrapper" style="margin:10px">
                    <nav aria-label="Page navigation example">
                      <ul class="pagination justify-content-end">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#">Next</a>
                        </li>
                      </ul>
                  </nav>
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