<?php
$product=loadModel('product');
$category=loadModel('category');
$slug =$_REQUEST['id'];
$row=$product->product_row(['slug'=>$slug,'status'=>1]);
$catid=$row['catid'];

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
'catid_in'=>$arr_listcatid,
'status'=>1,
'not_id'=>$row['id'],
'sort'=>['orderby'=>'created_at','order'=>'DESC'],
'limit'=>6);
$list_other = $product->product_list($args);   

$title=$row['name'];
?>
<?php require_once('views/header.php');?>
<section class="clearfix content my-3" >
          <div class="container">
            <div class="row product-detail">
                <div class="col-md-6" >
                <img src="public/images/product/<?php echo $row['img']; ?>
                    " class="card-img-top" alt="<?php echo $row['img']; ?>">
                </div>

                <div class="col-md-6" >
                    <h1><?php echo $row['name']; ?> </h1>
                    <h3><?php echo str_limit($row['metadesc'],250); ?></h3>
                    <h2>Giá: <?php echo number_format($row['price']); ?></h2>
                    <form action="index.php?option=cart&addcart=<?php echo $row['id']; ?>" method="post">
                    <input type="number" value="1" name="qty" min="1" max="20"/>
                    <button type="submit" name="DATMUA">Đặt Mua </button>
                    </form>
                </div>
            </div>
            
            <h3> Chi tiết sản phẩm</h3>
            <div class="row product-detail">
                
                <div class="col-12">
                    <?php echo $row['name']; ?> 
                </div>
            </div>


            <div class="fb-like" data-href="index.php?option=product&id=<?php echo $row['slug']; ?>" data-width="" data-layout="button_count"
            data-action="like" data-size="small" data-share="true"></div>
            <div class="binhluan">
            <div class="fb-comments" data-href="index.php?option=product&id=<?php echo $row['slug']; ?>"
             data-numposts="5" data-width="100%"></div>
            </div>

            <h3> Sản phẩm khác</h3>
            <div class="row product-detail ">
                
            <?php foreach($list_other as $item): ?>
                  <div class="col-md-3 col-md my-3">
                    <div class="card" style="width: 100%;">
                        <a href="index.php?option=product&id=<?php echo $item['slug']; ?>">
                            <img src="public/images/product/<?php echo $item['img']; ?>" class="card-img-top" alt="<?php echo $item['img']; ?>">
                        </a> 
                        <div class="card-body">
                            <h5 class="card-title">
                              <a href="index.php?option=product&id=<?php echo $item['slug']; ?>">
                                  <?php echo $item['name']; ?>
                              </a>
                            </h5>
                              <br>
                            <h3>Giá: <?php echo number_format($item['price']); ?><sup>đ</sup></h3>
                              
                              <a href="index.php?option=cart&addcart=<?php echo $item['id']; ?>" class="btn btn-primary">Đặt mua</a>
                        </div>
                      </div>
                  </div>
                  <?php endforeach;?>
               
            </div>

          </div>
<section>         

<?php require_once('views/footer.php');?>