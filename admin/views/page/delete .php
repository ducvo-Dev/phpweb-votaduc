<?php
$post = loadModel('post');
$id =$_REQUEST["id"];
$row =$post->post_row(['id'=>$id,'status'=>'trash']);
if($row==null)
{
    set_flash('message',['type'=>'danger','msg'=>'Mẫu tin không tồn tại']);
    redirect('index.php?option=post&cat=trash');
}

$post->post_delete($id);
set_flash('message',['type'=>'success','msg'=>'Thành công']);
redirect('index.php?option=post&cat=trash');