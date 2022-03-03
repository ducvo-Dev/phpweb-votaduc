<?php
$topic =loadModel('topic');
$list_topic=$topic->topic_list(['status'=>'index']);
$strtopid='';
foreach($list_topic as $item)
{
 $strtopid.= '<option value="'.$item['id'].'" >'.$item['name']. '</option>';
}
?>

<?php include('views/header.php'); ?>
<form action="index.php?option=post&cat=process" method="post" enctype="multipart/form-data">
    <div class="content-wrapper my-2">

        <!-- Main content --> 
        <section class="content">
        <!-- Default box --> 
        <div class="card">
            <div class="card-header">
            <h3 class="card-title">
                <strong class=text-danger>THÊM MỚI TRANG  ĐƠN </strong>
            </h3>
                
            <div class="card-tools">

            <button class="btn btn-sm btn-success" type="submit" name="THEM" > 
            <i class="fas fa-save"></i>Lưu[Thêm]</button>
            <a class="btn btn-sm btn-danger" href="index.php?option=post">
            <i class="fas fa-sign-out-alt"></i>Thoát</a>
            </div>
            </div>
        
            <div class="card-body">
                <div class="row-1"style="float:left; width:70%; " >
                    <div class="from-group">
                        <label for>Tên bài viết</label>
                        <input type="text" class="form-control" name="title" required placeholder="Tên bài viết">
                    </div>

                    <div class="from-group">
                        <label for>Chi tiết bài viết</label>
                        <textarea type="text" class="form-control" name="detail" required row="3"></textarea>
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
                <div class="row-2" style="float:right;width:25%; ">
                    <div class="from-group">
                        <label for> Chủ đề bài viết</label>
                        <select  class="form-control" name="topid" required>
                            <option >-- Chọn chủ đề bài viết --</option>
                            <?php echo $strtopid;?>
                        </select>
                    </div>
                
                    <div class="from-group">
                        <label for>Hình đại diện</label>
                        <input type="file" class="form-control" name="img">
                    </div>

                    <div class="from-group">
                        <label for> Trạng Thái</label>
                        <select  class="form-control" name="status" >
                            <option value="1" > Xuất Bản </option>
                            <option value="2" > Chưa Xuất Bản</option>
                        </select>
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