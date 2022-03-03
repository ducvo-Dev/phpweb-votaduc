<?php
$order = loadModel('order');
$list = $order->order_list(['status'=>'index']);
?>
<?php require_once('views/header.php'); ?>
<div class="content-wrapper my-2">

    <section class="content">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">
                    <strong class='text-danger '>TẤT CẢ ĐƠN HÀNG </strong></h3>
                    <div class="card-tools">
           <a class="btn btn-sm btn-success"href="index.php?option=order&cat=insert"><i class="fas fa-plus">Thêm</i></a>
           <a class="btn btn-sm btn-danger"href="index.php?option=order&cat=trash"><i class="fas fa-trash">Thùng Rác</i></a>

          </div>
            </div>
    
            <div class="card-body">
            <?php require_once("views/message.php"); ?>
                <table class="table  table-bordered" id="myTable">
                    <thead class="thead-info">
                        <tr style="text-align:center">
                            <th style="width:100px;">Số hóa đơn</th>
                            <th>Họ tên khách hàng</th>
                            <th>Trạng thái</th>
                            <th style="width:130px;">Chức năng</th>
                            <th style="width:20px;">ID</th>
                        </tr>
                    </thead>




                    
                    <tbody class="">
                        <?php foreach ($list as $row) : ?>
                        <tr style="text-align:center ">
                            <td>
                                <?php echo $row['code']; ?>
                            </td>
                            <td>
                                <?php echo $row['deliveryname']; ?>
                            </td>
                            <td>

<?php if ($row['status'] == 1) : ?>
<a href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>"
    class="btn btn-sm btn-success"><i class="far ">Mới đặt hàng</i></i></a>
<?php else : ?>
<a href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>"
    class="btn btn-sm btn-danger"><i class="far ">Đã hủy</i></a>
<?php endif; ?>
</td>




                            <td class="text-center">
                  <?php if($row['status']==1):?>
                  <a class="btn btn-sm btn-success" href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>"><i class="fas fa-toggle-on"></i></a>
                  <?php else:?>
                    <a class="btn btn-sm btn-danger" href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>"><i class="fas fa-toggle-off"></i></a>
                  <?php endif;?>
                  <a class="btn btn-sm btn-info" href="index.php?option=order&cat=update&id=<?php echo $row['id']; ?>"><i class="fas fa-edit"></i></a>
                  <a class="btn btn-sm btn-danger" href="index.php?option=order&cat=deltrash&id=<?php echo $row['id']; ?>"><i class="fas fa-trash"></i></a>
                </td>
                <td class="text-center"><?php echo $row['id']; ?></td>

                       
                       
                       
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

        </div>
    </section>
</div>
<script>
$(document).ready(function() {
    $('#myTable').DataTable();
});
</script>
<?php require_once('views/footer.php'); ?>
