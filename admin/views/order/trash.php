<?php
$order = loadModel('order');
$list = $order-> order_list(['status' =>'trash']);
?>
<?php require_once('views/header.php');?>
  <div class="content-wrapper my-2">
    <section class="content">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
          <strong class="text-danger">DANH SÁCH ĐƠN HÀNG TRONG THÙNG RÁC</strong>
          </h3>
          <div class="card-tools">
           <a class="btn btn-sm btn-danger"href="index.php?option=order"><i class="fas fa-times">Thoát</i></a>
          </div>
        </div>
        <div class="card-body">
          <?php require_once("views/message.php"); ?>
        <table class="table table-bordered" id="myTable">
  <thead>
    <tr>
      <th scope="col">Số đơn đặt hàng</th>
      <th scope="col">Họ tên khách hàng</th>
      <th scope="col">Chức năng</th>
      <th style="width:50px;">Id</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($list as $row) : ?>
      <tr style="text-align:center ">
      <td><?php echo $row['userid']; ?></td>
      <td><?php echo $row['deliveryname']; ?></td>

                <td class="text-center">
                  <a class="btn btn-sm btn-info" href="index.php?option=order&cat=retrash&id=<?php echo $row['id']; ?>"><i class="fas fa-edit"></i></a>
                  <a class="btn btn-sm btn-danger" href="index.php?option=order&cat=delete&id=<?php echo $row['id']; ?>"><i class="fas fa-trash"></i></a>
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
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>

  <?php require_once('views/footer.php');?>