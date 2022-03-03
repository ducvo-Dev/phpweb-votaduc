<?php
 $title='Đăng nhập';
 $error="";
 if(isset($_POST['DANGNHAP']))
 {
     $user= loadModel('user');
     $username=$_POST['username'];
     $password=$_POST['password'];
     $args=array();
     $args['access']=0;
     $args['status']=1;
     //kiểm tra tài khoản -Email hoặc Tên đăng nhập
     if (filter_var($username, FILTER_VALIDATE_EMAIL))
      {
       $args['email']=$username;
      } else {
        $args['username']=$username;
      }
      $count_username=$user->user_count($args);
      if($count_username==1)
      {
        $args['password']= sha1($password);
        $row_user =$user->user_row($args);
        if($row_user != null)
        {
            $_SESSION['user_customer']=$row_user['username'];
            $_SESSION['fullname_customer']=$row_user['fullname'];
            $_SESSION['userid_customer']=$row_user['id'];
        
            redirect('index.php?option=cart&cat=buy');
            
        }else{
            $error ="Mật khẩu không chính xác";
        }
      }
      else
      {
        $error=" Tài khoản không tồn tại";
      }
     
 }
 require_once('views/header.php');
?>
<form action="index.php?option=customer&cat=login" method="post" name="form1" >
<section class="clearfix content" >
          <div class="container">
          <h1> Dang nhap</h1>
          <div class="form-group" >
                <label for=""> Tên đăng nhập hoặc Email </label>
                <input type="text" name="username" class="form-control"
                 placeholder="Tên đăng nhập hoặc email"/>
          </div>
          <div class="form-group" >
                <label for="">Mật khẩu</label>
                <input type="password" name="password" class="form-control"
                 placeholder="Mật khẩu"/>
          </div>
          <div class="form-group" >
                <button name="DANGNHAP" class="btn btn-success" type="submit"> Đăng nhập </button>
          </div>
            <div class="form-group" >
                    <?php echo "<span class='text-danger'>".$error."</span>";?>
            </div>
        </div>
</section>          
</form>

<?php
require_once('views/footer.php');
?>