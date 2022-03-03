<?php
$title='Đặt Mua';
$user =loadModel('user');
$userid=$_SESSION['userid_customer'];
$row_user=$user->user_row(['id'=>$userid,'access'=>0,'status'=>1]);
$cart_list=$cart->cart_content();
if(isset($_POST['LUU']))
{
    $order=loadModel('order');
    $orderdetail=loadModel('orderdetail');
    //luu thong tin vao bang oder
   $data_order=array(
       'code'=>date('YmdHis'),
       'userid'=>$userid,
       'createdate'=>date('Y-m-d'),
       'exportdate'=>date('Y-m-d'),
       'deliveryaddress'=>(strlen($_POST['deliveryaddress']))?$_POST['deliveryaddress']:$row_user['address'],
       'deliveryname'=>(strlen($_POST['deliveryname']))?$_POST['deliveryname']:$row_user['fullname'],
       'deliveryphone'=>(strlen($_POST['deliveryphone']))?$_POST['deliveryphone']:$row_user['phone'],
       'deliveryemail'=>(strlen($_POST['deliveryemail']))?$_POST['deliveryemail']:$row_user['email'],
       'updated_at'=>date('Y-m-d H:i:s'),
       'updated_by'=> $userid,
       'status'=>2
   );
   $orderid = $order->order_insert($data_order,$insert=TRUE);
   if($orderid!=null)
   {
       foreach($cart_list as $cart_row)
       {
           $data_orderdetail = array(
               'orderid'=> $orderid,
               'productid'=>$cart_row['id'],
               'price'=>$cart_row['price'],
               'quantity'=>$cart_row['qty'],
               'amount'=>$cart_row['amount']

           );
           $orderdetail->orderdetail_insert($data_orderdetail);
       }
   }
   unset($_SESSION['cart']);
   redirect('index.php');

}
?>

<?php require_once('views/header.php');?>

      <section class="clearfix content" >
          <div class="container my-3">
            <div class="row">
                <div class="col-md-6">
                <form action="index.php?option=cart&cat=buy" method="post" >
                <h3 > Thông tin khách hàng</h3> 

                    <div class=" form-group">
                        <label for="">Họ tên khách hàng</label>
                        <input class="form-control" name="fullname" type="text" readonly  valule="<?php echo $row_user['fullname'];?>"/>
                    </div>
                    <div class=" form-group">
                        <label for="">Điện thoại</label>
                        <input class="form-control" name="phone" type="text" readonly  valule="<?php echo $row_user['phone']; ?>"/>
                    </div>
                    <div class=" form-group">
                        <label for="">Email</label>
                        <input class="form-control" name="email" type="text" readonly  valule="<?php echo $row_user['email']; ?>"/>
                    </div>
                    <div class=" form-group">
                        <label for="">Địa chỉ</label>
                        <input class="form-control" type="text" readonly name="address" valule="<?php echo $row_user['address']; ?>"/>
                    </div>

                    <h3 > Thông tin Giao hàng</h3>
                    <div class=" form-group">
                        <label for="">Người nhận hàng</label>
                        <input class="form-control" type="text" name="deliveryname" placeholder="người nhận hàng" />
                    </div>
                    <div class=" form-group">
                        <label for="">Điện thoại Người nhận</label>
                        <input class="form-control" type="text" name="deliveryphone" placeholder=" SDT người nhận" />
                    </div>
                    <div class=" form-group">
                        <label for="">Email người nhận</label>
                        <input class="form-control" type="text" name="deliveryemail" placeholder=" Email người nhận"/>
                    </div>
                    <div class=" form-group">
                        <label for="">Địa chỉ người nhận</label>
                        <input class="form-control" type="text" name="deliveryaddress" placeholder="Địa chỉ người nhận"/>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-success" type="submit" name="LUU">lưu đơn hàng</button>
                    </div>
                    </form>
                </div>

                <div class="col-md-6">
                <?php if($cart_list!=null  ):?>

<h3>ĐƠN HÀNG</h3>

    <table class="table table-light">
       
            <tr>
                <td>Mã </td>
                <td style="width:50px">Hình</td>
                <td>Tênsản phẩm</td>
                <td>Giá</td>
                <td>Số lượng</td>
                <td>Thành tiền</td>
     
            </tr>
     <?php $total_money=0; ?>    
       <?php foreach($cart_list as $cart_row):?>
        <tr>
                <td> <?php echo $cart_row['id'];?> </td>
                <td> <img src="public/images/product/<?php echo $cart_row['img']; ?>" class="card-img-top" alt="<?php echo $cart_row['img']; ?>"> </td>
                <td> <?php echo $cart_row['name'];?> </td>
                <td> <?php echo number_format( $cart_row['price']);?> </td>
                <td> <?php echo number_format( $cart_row['qty']);?> </td>
                <td> <?php echo number_format ($cart_row['amount']);?> </td>
              
            </tr>
        <?php $total_money+=$cart_row['amount']; ?>    
       <?php endforeach; ?>
    
    <tr>
                <td colspan="4" class="text-right">Tổng tiền </td>
                <td colspan="2"><Strong> <?php echo number_format($total_money);?> </Strong> </td>
          
                <td></td>
            </tr>
    </table>
   
    
<?php endif;?>               

                </div>
            </div>
          </div>
      </section>
<?php require_once('views/footer.php');?>     