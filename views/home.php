<?php
$title="Trang chủ";
$category = loadModel('category');
$product = loadModel('product'); 
$list_category = $category->category_list(['status'=>1,'parentid'=>0]);

?>
<?php require_once('views/header.php');?>
<?php require_once('views/mod-slideshow.php');?>
   
   
      <section class="clearfix content bg-white" >
          <div class="container">
          <?php foreach($list_category as $cat): ?>
        
              <h1 class="text-uppercase mt-3"><?php echo $cat['name']; ?></h1>
              <div class="row">

              <?php 
                    
                    $catid=$cat['id'];
                    $arr_listcatid=array();
                    $arr_listcatid[]=$catid;
                    $list_cat1=$category->category_list(['status'=>1,'parentid'=>$catid]);
                    foreach($list_cat1 as $cat1)
                    {
                      $arr_listcatid[]=$cat1['id'];
                      $list_cat2=$category->category_list(['status'=>1,'parentid'=>$cat1['id']]);
                      foreach($list_cat2 as $cat2)
                      {
                        $arr_listcatid[]=$cat2['id'];
                      }

                    }


                    $args=array(
                    'status'=>1,
                    'catid_in'=>$arr_listcatid,
                    'sort'=>['orderby'=>'created_at','order'=>'DESC'],
                    'limit'=>8);
                    $list = $product->product_list($args);   
                ?> 

              <?php foreach($list as $row): ?>
                  <div class="col-md-3 col-md mt-2">
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
            <?php endforeach;?>
          </div>
      </section>
    <?php require_once('views/footer.php');?>