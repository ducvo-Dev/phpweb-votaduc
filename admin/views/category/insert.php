<?php 
$category=loadModel('category');
$list = $category->category_list(['status'=>'index']);
$str_parentid="";
$str_orders="";
foreach ($list as $item)
{
   
    
     $str_parentid.= "<option value='".$item['id']."'>".$item['name']."</option>"; 
    $str_orders.= "<option value='".$item['orders']."'>sau:".$item['name']."</option>"; 

}
?>

<?php include('views/header.php'); ?>
<form name="form1" action="index.php?option=category&cat=process" method="post" enctype="multipart/form-data">
    <div class="content-wrapper my-2">

        <!-- Main content --> 
        <section class="content">
        <!-- Default box --> 
        <div class="card">
            <div class="card-header">
            <h3 class="card-title">
                <strong class=text-danger>THÊM MỚI LOẠI SẢN PHẨM </strong>
            </h3>
                
            <div class="card-tools">

            <button class="btn btn-sm btn-success" type="submit" name="THEM" > 
            <i class="fas fa-save"></i>Lưu[thêm]</button>
            <a class="btn btn-sm btn-danger" href="index.php?option=category" role="button">
            <i class="fas fa-sign-out-alt"></i>Thoát</a>
            </div>
            </div>
        
            <div class="card-body">
                <div class="row-1"style="float:left; width:70%; " >
                    <div class="from-group">
                        <label for>Tên loại Sản Phẩm</label>
                        <input type="text" class="form-control" name="name" required placeholder="Tên sản phẩm">
                    </div>


                    <div class="from-group">
                        <label for>Mô tả</label>
                        <textarea type="text" class="form-control" name="metadesc" required row="3"></textarea>
                    </div>

                    <div class="from-group">
                        <label for>Từ khóa</label>
                        <textarea type="text" class="form-control" name="metakey" required row="3"></textarea>
                    </div>

                </div>
                
                <div class="col-3"style="float:right;width:25%; ">
                        <div class="from-group">
                            <label for>Loại sản Phẩm</label>
                            <select  class="form-control" name="parentid" >
                                <option value="0" > Chọn Loại Sản Phẩm </option>
                                <?php echo $str_parentid ;?>
                            </select>
                        </div>

                        <div class="from-group">
                            <label for>Sắp Xếp</label>
                            <select  class="form-control" name="orders" >
                                <option value="0" >-- none --</option>
                                <?php echo $str_orders ;?>
                            </select>
                        </div>

                        <div class="from-group">
                            <label for> Trạng Thái</label>
                            <select  class="form-control" name="status" >
                                <option value="1"  > Xuất Bản </option>
                                <option value="2" > Chưa Xuất Bản</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
            
            </div>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->
        </section>
        <!-- /.content -->
    </div>
  </form>
  <!-- /.content-wrapper -->
  <?php include('views/footer.php'); ?>