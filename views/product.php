<?php 

$product = loadModel('product');
$pt=loadClass('phantrang');




 // xử lý phân trang
$limit=12;
$pageCurrent =$pt->pageCurrent();
$offset =$pt->pageOffset($pageCurrent,$limit);

//
    $args=array(
    
    'status'=>1,
    'sort'=>['orderby'=>'created_at','order'=>'DESC'],
    'offset'=>$offset,
    'limit'=>$limit
  
);
//hiện liên kết trang
$total=$product->product_count($args);
$list=$product->product_list($args);    
$title = 'Tất cả sản phẩm';
?>
<?php require_once('views/header.php') ?>

<section class="clearfix content" >
          <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <?php require_once('views/mod-category.php');?>
                </div>
                <div class="col-md-9"> 
                        
                            <h1 class="text-uppercase text-center "><?php echo $title; ?></h1>
                            <div class="row">

                    
                                <?php foreach($list as $row): ?>
                                    <div class="col-md-4 col-md">
                                        <div class="card" style="width: 100%;">
                                            <a href="index.php?option=product&id=<?php echo $row['slug']; ?>">
                                                <img src="public/images/product/<?php echo $row['img']; ?>" class="card-img-top" alt="<?php echo $row['img']; ?>">
                                            </a> 
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                <a href="index.php?option=product&id=<?php echo $row['slug']; ?>">
                                                    <?php echo $row['name']; ?>
                                                </a>
                                                </h5>
                                                <br>
                                                <h3>Giá: <?php echo number_format($row['price']); ?><sup>đ</sup></h3>
                                                
                                                <a href="index.php?option=cart&addcart=<?php echo $row['id']; ?>" class="btn btn-primary">Đặt mua</a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach;?>
                            </div>
                        
                        <?php echo $pt->pageLink($total, $pageCurrent, $limit,'index.php?option=product');?>
                    </div>
                </div>
            </div>
          </div>

</section>

<?php require_once('views/footer.php') ?>