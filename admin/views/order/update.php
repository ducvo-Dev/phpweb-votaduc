<?php 
$category = loadModel('category');
 $order = loadModel('order');
 $id = $_REQUEST["id"];
 $row = $order->order_row(['id'=>$id]);//chi tiet san pham
$listcat = $category->category_list(['status'=> 1]);
$strcatid ="";

?>
<?php require_once('views/header.php'); ?>
<form name="form1" action="index.php?option=order&cat=process&id=<?php echo $id;?>" method="post" enctype="multipart/form-data">
<div class="content-wrapper my-2">
    <section class="content">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">
                    <strong class='text-uppercase text-danger '>CẬP NHẬT ĐƠN HÀNG</strong></h3>
                <div class="card-tools">
                <button type="submit" name="CAPNHAT" class="btn btn-sm btn-success"><i class="far fa-save"></i> Lưu[Cập Nhật]</button>
                    <a class="btn btn-sm btn-danger" href="index.php?option=order"role="button">
                    <i class="far fa-times-circle"></i> Thoát</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="">Số hóa đơn</label>
                            <input type="text" value ="<?php echo $row['userid'];?>" class="form-control" required name="userid" placeholder="Số hóa đơn">

                        </div>

                        <div class="form-group">
                            <label for="">Tên khách hàng</label>
                            <textarea class="form-control" name="deliveryname" rows="3"> <?php echo $row['deliveryname'];?> </textarea>
                        </div>

                        <div class="form-group">
                            <label for="">Trạng thái</label>
                            <select class="form-control" name="status">
                                <option value="1"<?php if($row['status']==1){
                                    echo "selected";}?>>   Xuất bản</option>
                               <option value="1"<?php if($row['status']==2){
                                    echo "selected";}?>>  Chưa xuất bản</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</div>
</form>
<?php require_once('views/header.php'); ?>
