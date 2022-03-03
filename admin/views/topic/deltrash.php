<?php
$topic= loadModel('topic');
$id =$_REQUEST["id"];
$row =$topic->topic_row(['id'=>$id]);
if($row==null)
{
    set_flash('message',['type'=>'danger','msg'=>'Mẫu tin không tồn tại']);
    redirect('index.php?option=topic');
}

$userid = (isset($_SESSION['userid'])) ? $_SESSION['userid']:1;
$data=array(
    'status'=>0,
    'updated_at'=> date('Y-m-d H:i:s'),
    'updated_by'=>$userid
);
$topic->topic_update($data,$id);
set_flash('message',['type'=>'success','msg'=>'Thành công']);
redirect('index.php?option=topic');