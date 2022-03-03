<?php
 $order = loadModel('order');

$userid = (isset($_SESSION["userid"]))?$_SESSION["userid"]:1;

if(isset($_POST['THEM']))
{
    $slug=str_slug($_POST['name']);
    $data = array(
        
        'name'=>$_POST['name'],
        'slug'=>str_slug($_POST['name']),
        'parentid'=>$_POST['parentid'],
        'orders'=>($_POST['orders']+1),
        'metakey'=>$_POST['metakey'],
        'metadesc'=>$_POST['metadesc'],
        'created_at'=>date('Y-m-d H:i:s'),
        'created_by'=>$userid,
        'updated_at'=>date('Y-m-d H:i:s'),
        'updated_by'=>$userid,
        'status'=>$_POST['status'],
    );
    $order->order_insert($data);
    set_flash('message', ['type' => 'success', 'msg' => 'Thêm thành công!']);
    redirect("index.php?option=order");
}
if(isset($_POST['CAPNHAT']))
{
    $id=$_REQUEST['id'];
    $row = $order->order_row(['id'=>$id]);
    if($row==null)
{
    set_flash('message', ['type' => 'danger', 'msg' => 'Mẫu tin không tồn tại!']);
    redirect("index.php?option=order");
}
    $slug=str_slug($_POST['deliveryname']);
    $data = array(
        'deliveryname'=>$_POST['deliveryname'],
        'slug'=>str_slug($_POST['deliveryname']),
        'updated_at'=>date('Y-m-d H:i:s'),
        'updated_by'=>$userid,
        'status'=>$_POST['status'],
    );
    $order->order_update($data,$id);
    set_flash('message', ['type' => 'success', 'msg' => 'Cập nhật thành công!']);
    redirect("index.php?option=order");
}