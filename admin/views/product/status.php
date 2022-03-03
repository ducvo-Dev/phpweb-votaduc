<?php
$product = loadModel('product');// kết nối cơ dsở dữ liệu
$id =$_REQUEST["id"];
$row =$product->product_row(['id'=>$id]);
if($row==null)
{
    set_flash('message',['type'=>'danger','msg'=>'Mẫu tin không tồn tại']);
    redirect('index.php?option=product');
}
$tt =($row['status']== 1)? 2:1;
$userid = (isset($_SESSION['userid'])) ? $_SESSION['userid']:1;
$data=array(
    'status'=>$tt,
    'updated_at'=> date('Y-m-d H:i:s'),
    'updated_by'=>$userid
);
$product->product_update($data,$id);
set_flash('message',['type'=>'success','msg'=>'Thành công']);
redirect('index.php?option=product');