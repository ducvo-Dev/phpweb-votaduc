<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../public/css/adminlte.min.css">
    <style>
        .swapper
        {
            max-width:500px;
            min-height:300px;
            box-shadow:1px 1px 4px 5px #ccc;
            margin-left:auto;
            margin-right:auto;
            border-radius:7px;
            padding:20px;
        }
    </style>
    <title>Đăng nhập hệ thống</title>
</head>
<body>
    <?php
        session_start();
        require_once('../system/core.php');

        if(isset($_SESSION["useradmin"]))
        {
            redirect('index.php');
        }

        if(isset($_POST['DANGNHAP']))
        {
            $username = $_POST['username'];
            $data =array();
            $data['status']=1;
            if (filter_var($username, FILTER_VALIDATE_EMAIL)) {
                $data['email']=$username;
              }
              else{
                $data['username']=$username;
              }
            $password = sha1($_POST['password']);
            
            require_once('../system/load.php');
            require_once('../Config.php');//1
            require_once('../system/Database.php');//sau 1
            $user=loadModel('user');
            $row_username=$user->user_row($data);
            if ($row_username!=null)
            {
                $data['password']=$password;
                $row_acount=$user->user_row($data);
                if ($row_acount!=null)
                {
                   $_SESSION["useradmin"]=$row_acount['username'];
                   $_SESSION["userid"]=$row_acount['id'];
                   $_SESSION["fullname"]=$row_acount['fullname'];
                   $_SESSION["img"]=$row_acount['img'];
                   redirect('index.php');
                }else{
                    $error="mật khẩu sai";
                }
            }
            else{
                $error=" tên tài khoản không tồn tại";
            }
        }
    ?>
    <form action="login.php" method="post" name="form1">
        <div class="swapper mt-md-5" >
                <h3 class="text-center"> Dang nhap</h3>
                <div class="form-group" >
                        <label for=""><strong>Ten dang nhap(*)</strong> </label>
                        <input class="form-control" required type="text" name="username"placeholder="ten dang nhap hoac gmail">
                    </div> 
                    <div class="form-group" >
                        <label for=""><strong>Mat khau(*)</strong> </label>
                        <input class="form-control" required type="password" name="password"placeholder="mat khau">
                    </div>

                    <button type="submit" name="DANGNHAP" class="btn btn-success">Dang Nhap</button>

                    <div class="form-group" >
                        
                    <?php if(isset($error)): ?>
                        <div class="text-danger"> <?php echo $error; ?> </div>
                    <?php endif; ?>
                    </div>
        </div>
    </form> 
</body>
</html>