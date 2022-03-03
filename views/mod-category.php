<?php 

$category = loadModel('category');
$list_category1 = $category->category_list(['parentid'=>0,'status'=>1]);

?>
<style>
#menu_cate{
    background-color: #2c3b4d;
    border-radius: 12px;
    width:250px;
    box-shadow: 10px 10px 10px 1px rgba(0,0,0,0.28);
}
#menu_cate li{
    position: relative;
    text-decoration: none;
    list-style-type:none;
    border-bottom:1px solid gray;
    left:0px;
    width:180px;
}
#menu_cate li a{
    text-decoration: none;
    font-size: 15px;
    font-weight: bold;
    padding:auto ;
    color: gray;
    line-height: 50px;
    display: block;
}

#menu_cate li a:hover{
    color: #40bea7;
    background: rgb(244, 244, 245);
    width:250px;
    
}

#menu_cate li ul{
    background: rgb(244, 244, 245);
    position: absolute;
    display: none;
    box-shadow: 5px 10px 10px -3px rgba(0,0,0,0.28);
    z-index: 10;
}
#menu_cate li ul a{
    color: #0a0a0a;
}
#menu_cate li ul a:hover{
    color:white;
    background: rgb(193, 193, 196);
    width:250px;
    
}

#menu_cate li:hover ul{
    display: block;
    left:200px;
    width: 250px;
}

#menu_cate li ul li {
    width: 100%;
}
 
#menu_cate li:hover > a{
    background: rgb(244, 244, 245);
}



</style>
<h3>DANH MỤC LOẠI</h3>
<ul id="menu_cate">
    <?php foreach($list_category1 as $row_cat1): ?>
        <?php
          $list_category2 = $category->category_list(['parentid'=>$row_cat1['id'],'status'=>1]);      
        ?>
    <li><a href="index.php?option=product&cat=<?php echo $row_cat1['slug']; ?>"><?php echo $row_cat1['name'] ?></a>
    <?php if(count( $list_category2)>0): ?>
        <ul>
        <?php foreach($list_category2 as $row_cat2): ?>
             <li><a href="index.php?option=product&cat=<?php echo $row_cat2['slug']; ?>"><?php echo $row_cat2['name'] ?></a></li>
             <?php endforeach; ?>
        </ul>
    
    <?php endif; ?>
    </li>
    <?php endforeach; ?>

</ul>