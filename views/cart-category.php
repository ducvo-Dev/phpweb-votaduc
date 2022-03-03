<?php
 
 $cart=loadClass('cart');
 
//đăng nhập mới mua đc hàng
 if(!isset($_SESSION['user_customer']))
 {
    redirect('index.php?option=customer&cat=login');
 }
 else
 { 
   require_once('views/cart-buy.php');


 }

