<?php 
$category = loadModel('category');
 $order = loadModel('order');
$listcat = $category->category_list(['status'=> 1]);
$strcatid ="";
foreach($listcat as $item)
{
   $strcatid .= "<option value='". $item['id'] . "'>" . $item['name'] . "</option>";
}   
?>
<?php require_once('views/header.php'); ?>
<form name="form1" action="index.php?option=order&cat=process" method="post" enctype="multipart/form-data">
<div class="content-wrapper my-2">
    <section class="content">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">
                    <strong class='text-uppercase text-danger '>THÊM MỚI SẢN PHẨM</strong></h3>
                <div class="card-tools">
                <button type="submit" name="THEM" class="btn btn-sm btn-success"><i class="far fa-save"></i> Lưu[Thêm]</button>
                    <a class="btn btn-sm btn-danger" href="index.php?option=order"role="button">
                    <i class="far fa-times-circle"></i> Thoát</a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-9">
                        <div class="form-group">
                            <label for="">Tên sản phẩm</label>
                            <input type="text" class="form-control" name="name" placeholder="Tên sản phẩm">

                        </div>
                        <div class="form-group">
                            <label for="">Chi tiết sản phẩm</label>
                            <input type="text" class="form-control" name="detail" rows="3" placeholder="Chi tiết sản phẩm">
                        </div>
                        <div class="form-group">
                            <label for="">Mô tả</label>
                            <input type="text" class="form-control" name="metadesc" rows="3" placeholder="Mô tả">
                        </div>
                        <div class="form-group">
                            <label for="">Từ khóa</label>
                            <input type="text" class="form-control" name="metakey" rows="3" placeholder="Từ khóa tìm kiếm">
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                        <label for="">Loại sản phẩm</label>
                            <select class="form-control" name="catid" required>
                                <option value="">-- Chọn loại sản phẩm --</option>
                             <?php echo $strcatid;?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Số lượng</label>
                            <input type="text" class="form-control" name="number" placeholder="1">
                        </div>
                        <div class="form-group">
                            <label for="">Giá Bán</label>
                            <input type="text" class="form-control" name="price" placeholder="500000000">
                        </div>
                        <div class="form-group">
                            <label for="">Giá khuyến mãi</label>
                            <input type="text" class="form-control" name="pricesale" placeholder="30000000">
                        </div>

                        <div class="form-group">
                            <label for="">Hình đại diện</label>
                            <input type="file" class="form-control" name="img">
                        </div>
                        <div class="form-group">
                            <label for="">Trạng thái</label>
                            <select class="form-control" name="status">
                                <option value="1">Xuất bản</option>
                                <option value="2">Chưa xuất bản</option>
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
