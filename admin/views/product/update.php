<?php 

$category=loadModel('category');
$product=loadModel('product');
$id=$_REQUEST["id"];
$row=$product->product_row(['id'=>$id]); // chi tiết sản phẩm
$list = $category->category_list(['status'=>1]);
$str_catid="";

foreach ($list as $item)
{
   if($item['id']==$row['catid'])
    
    {
        $str_catid.= "<option selected value='".$item['id']."'>".$item['name']."</option>"; 
    }
    else{
        $str_catid.= "<option value='".$item['id']."'>".$item['name']."</option>"; 
    }

}
?>

<?php include('views/header.php'); ?>
<form action="index.php?option=product&cat=process&id=<?php echo $id; ?>" method="post" enctype="multipart/form-data">
    <div class="content-wrapper my-2">

        <!-- Main content --> 
        <section class="content">
        <!-- Default box --> 
        <div class="card">
            <div class="card-header">
            <h3 class="card-title">
                <strong class="text-danger text-uppercase" >CẬP NHẬT SẢN PHẨM </strong>
            </h3>
                
            <div class="card-tools">

            <button class="btn btn-sm btn-success" type="submit" name="CAPNHAT" > 
            <i class="fas fa-save"></i>Lưu[Cập nhật]</button>
            <a class="btn btn-sm btn-danger" href="index.php?option=product" role="button">
            <i class="fas fa-sign-out-alt"></i>Thoát</a>
            </div>
            </div>
        
            <div class="card-body">
                <div class="row-1"style="float:left; width:70%; " >

                    <div class="from-group">
                        <label for>Hình đại diện</label>
                        <input type="file" class="form-control" name="img">
                    </div>

                    <div class="from-group">
                        <label for>Tên Sản Phẩm</label>
                        <input type="text" value="<?php echo $row['name']; ?>" class="form-control" name="name" required placeholder="Tên sản phẩm">
                    </div>

                    <div class="from-group">
                        <label for>Chi tiết bài viết</label>
                        <textarea type="text" class="form-control" name="detail" required row="3"><?php echo $row['detail']; ?></textarea>
                    </div>

                    <div class="from-group">
                        <label for>Mô tả</label>
                        <textarea type="text" class="form-control" name="metadesc" required row="3"><?php echo $row['metadesc']; ?></textarea>
                    </div>

                    <div class="from-group">
                        <label for>Từ khóa</label>
                        <textarea type="text" class="form-control" name="metakey" required row="3"><?php echo $row['metakey']; ?></textarea>
                    </div>

                </div>
                
                <div class="col-3"style="float:right;width:25%; ">
                        <div class="from-group">
                            <label for>Loại sản Phẩm</label>
                            <select  class="form-control" name="catid" required >
                                <option value="" > Chọn Loại Sản Phẩm </option>
                                <?php echo $str_catid ;?>
                            </select>
                        </div>
                        <div class="from-group">
                            <label for>số lượng</label>
                            <input type="number" class="form-control"  name="number" value="<?php echo $row['number']; ?>">
                        </div>

                        <div class="from-group">
                            <label for>Giá bán</label>
                            <input type="number" class="form-control"  name="price" value="<?php echo $row['price']; ?>">
                        </div>


                        <div class="from-group">
                            <label for>Giá khuyến mãi</label>
                            <input type="number" class="form-control"  name="pricesale" value="<?php echo $row['pricesale']; ?>">
                        </div>

                        <div class="from-group">
                            <label for> Trạng Thái</label>
                            <select  class="form-control" name="status" >
                                <option value="1" <?php if($row['status']==1) {echo "selected";} ?>  > Xuất Bản </option>
                                <option value="2" <?php if($row['status']==2) {echo "selected";} ?> > Chưa Xuất Bản</option>
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