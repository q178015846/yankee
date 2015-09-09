<?php
if (isset($_GET['image_main'])){$image_main = $_GET['image_main'];}
if (isset($_GET['image_popup'])){$image_popup = $_GET['image_popup'];}
if (isset($_GET['product_name'])){$product_name = $_GET['product_name'];}
if (isset($_GET['product_description_short'])){$product_description_short = $_GET['product_description_short'];}
if (isset($_GET['product_price'])){$product_price = $_GET['product_price'];}
if (isset($_GET['product_special'])){$product_special = $_GET['product_special'];}

if (isset($_GET['product_rating'])){$product_rating = $_GET['product_rating'];}
if (isset($_GET['product_href'])){$product_href = $_GET['product_href'];}

if (isset($_GET['view_details'])){$view_details = $_GET['view_details'];} else {$view_details = 'view details';}

if (isset($_GET['product_id'])){
    $product_href = $product_href.'&amp;product_id='.$_GET['product_id'];
} else {
    $product_href = $_GET['product_href'];
}

$additional_images_array = (isset($_GET['array_images']) && !empty($_GET['array_images']))? $_GET['array_images'] : 0;
if ($additional_images_array) :
    $additional_images = unserialize($_GET['array_images']);
    $additional_images_full = unserialize($additional_images);
endif;

?>


<div class="product-view product-view-compact row">

    <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 ">
        <?php if (!empty($additional_images_full)) : ?>
        <div class="hidden-xs flexslider-thumb-vertical-outer">
            <div class="flexslider flexslider-thumb-vertical vertical min">
                <ul class="previews-list slides">
                    <?php foreach ($additional_images_full as $additional_image_full) : ?>
                    <li><img class='cloudzoom-gallery' alt="<?php echo $product_name; ?>"  src ="<?php echo $additional_image_full['small']; ?>" data-cloudzoom="useZoom:'#cloudzoom1',image: '<?php echo $additional_image_full['big']; ?>', zoomImage: '<?php echo $additional_image_full['big']; ?>', autoInside : 991" ></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
        <?php endif; ?>

        <div class="large-image  vertical hidden-xs">
          <img class="cloudzoom" id="cloudzoom1" src="<?php echo $image_main; ?>" data-cloudzoom="zoomImage:'<?php echo $image_popup; ?>', autoInside:991,zoomPosition:'inside'" />
      </div>
  </div>
  <div class="info-cell col-sm-5 col-md-5 col-lg-5">
      <a class="close-view"><span class="icon-cancel-3"></span></a>
    <h2><?php echo $product_name; ?></h2>
    <p><?php echo $product_description_short; ?></p>
     <p>
         <?php
         if ($product_rating > 0) {
             for ($i = 1; $i <= $product_rating; $i++) {echo '<i class="icon-star-3"></i>';}
             $k =  5 - $product_rating;
             for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
         } else {
             for ($i = 1; $i <= 5; $i++) {echo '<i class="icon-star-empty"></i>';}
         }
         ?>
     </p>


<div>
    <?php if (!isset($product_special)) { ?>
    <span class="price"><?php echo $product_price; ?></span>
    <?php } else { ?>
    <span class="price-old price old"><?php echo $product_price; ?></span>
    <span class="price-new price new"><?php echo $product_special; ?></span>
    <?php } ?>

</div>
<div class="quick_view_button"><a href="<?php echo $product_href; ?>" class="btn btn-mega"><?php echo $view_details; ?></a></div>
</div>
</div>
