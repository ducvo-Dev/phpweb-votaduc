<?php
// dong 2, 3, 4 go sau
session_start();
require_once('Config.php'); // chứa câu hình website
require_once('system/DataBase.php'); //kết nối CSDL
require_once('system/core.php'); //hàm xử lí
require_once('system/load.php');
loadPage();
?>