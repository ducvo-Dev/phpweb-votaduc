<!doctype html>
<html lang="en">
  <head>
    <title><?php echo isset($title)?$title:'Shop nông sản';?></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="public/css/bootstrap.min.css" >
    <link rel="stylesheet" href="public/css/all.min.css" >
    <link rel="stylesheet" href="public/css/style.css" >
    <title> <?php
    if(isset($title))
    {
        echo "$title";
    }else{
        echo "Shop Nong San";
    } ?></title>
  </head>
  <body>

  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" nonce="KZaiaxLs"></script>

  <?php
     $product =loadModel('product')
    ?>
      <section class="clearfix header bg-white" >
          <div class="container">
              <div class="row" >
                  <div class="col-6 col-md-3 "> 
                      
                  </div>
                  <div class="col-6 col-md-6 ">
                  <img class="img-fluid" src="public/images/logo.png"  alt="">
                  </div>

                  <div class="col-6 col-md-2 mt-4 ">
                  <?php if ( isset($_SESSION['fullname_customer'])): ?>
                   <div><i class="fas fa-user"></i> <?php echo $_SESSION['fullname_customer']; ?> </div>
                    <div>  <a href="index.php?option=customer&cat=logout"> Thoát</a> </div>
                  <?php else:?>
                    <a href="index.php?option=customer&cat=login"> Đăng nhập</a>
                    <a href="index.php?option=customer&cat=register"> Đăng kí</a>
                  <?php endif;?>
                </div>

                  <div class="col-6 col-md-1 text-right mt-3">

                  <?php
                  $cart=loadClass('cart');
                  $sl=$cart->cart_qty();
                  if (isset($_SESSION['cart']))
                  {
                    $cart=$_SESSION['cart'];
                    $sl= count($cart);
                  }
                  ?>
                  <div style="font-size:30px;">
                    <a href="index.php?option=cart">
                     <span class="badge badge-light"><i class="fas fa-shopping-bag"></i>
                     <sup> <?php echo $sl; ?> </sup></span>
                    </a>
                  </div>
    
                </div>

              </div>
          </div>
    </section>
        
        <section class="clearfix mainmenu bg-danger" >  
            <div class="container" ></div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
                <a class="navbar-brand  d-md-block d-md-none " href="#">
                    <img class="img-fluid" style="height: 50px;" src="public/images/logo2.png"  alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
            
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <?php require_once('views/mod-mainmenu.php');?>
                    
                    <div class="col-6 col-md-5 cao">
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                 
                </div>
            </nav>
        </div>
    </section>