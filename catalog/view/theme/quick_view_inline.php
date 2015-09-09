<?php
$additional_images_size_done = serialize(str_replace("\"","'",$additional_images_size));

$store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
    $customisation_products = $config->get('customisation_products');
    $customisation_translation = $config->get('customisation_translation');
    if (isset($customisation_translation[$lang]["view_details"])) {$view_details = $customisation_translation[$lang]["view_details"];}
    if (isset($customisation_general[$lang]["quick_view_text"])) {$quick_view_text = $customisation_general[$lang]["quick_view_text"];}
    if (isset($customisation_products["product_catalog_mode"])) {$product_catalog_mode = $customisation_products["product_catalog_mode"];}
    if (isset($customisation_products["quick_status"])) {$quick_status = $customisation_products["quick_status"];}

} else {
    $customisation_general = $config->get('customisation_general_store');
    $customisation_products = $config->get('customisation_products_store');
    $customisation_translation = $config->get('customisation_translation_store');

    if (isset($customisation_translation[$lang]["view_details"][$store_id])) {$view_details = $customisation_translation[$lang]["view_details"][$store_id];}
    if (isset($customisation_general[$lang]["quick_view_text"][$store_id])) {$quick_view_text = $customisation_general[$lang]["quick_view_text"][$store_id];}
    if (isset($customisation_products["product_catalog_mode"][$store_id])) {$product_catalog_mode = $customisation_products["product_catalog_mode"][$store_id];}
    if (isset($customisation_products["quick_status"][$store_id])) {$quick_status = $customisation_products["quick_status"][$store_id];}
}


$view_details = (isset($view_details) ? $view_details : 'view');

if (!isset($product_catalog_mode) || $product_catalog_mode != 1) {
?>

<?php if ($product['special']) { ?>
<a class="quick-view hidden-xs" href='catalog/view/theme/_ajax_view-product.php?product_href=<?php echo $product['href']; ?>&amp;view_details=<?php echo $view_details; ?>&amp;image_main=<?php echo $image_qv; ?>&amp;image_popup=<?php echo $image_qv_popup; ?>&amp;product_name=<?php echo $product['name']; ?>&amp;product_price=<?php echo $product['price']; ?>&amp;product_special=<?php echo $product['special']; ?>&amp;product_rating=<?php echo $product['rating']; ?>&amp;array_images=<?php echo serialize($additional_images_size_done); ?>&amp;product_description_short=<?php echo htmlspecialchars($product_description_short, ENT_QUOTES); ?>'>
<?php } else { ?>
    <a class="quick-view hidden-xs" href='catalog/view/theme/_ajax_view-product.php?product_href=<?php echo $product['href']; ?>&amp;view_details=<?php echo $view_details; ?>&amp;image_main=<?php echo $image_qv; ?>&amp;image_popup=<?php echo $image_qv_popup; ?>&amp;product_name=<?php echo $product['name']; ?>&amp;product_price=<?php echo $product['price']; ?>&amp;product_rating=<?php echo $product['rating']; ?>&amp;array_images=<?php echo serialize($additional_images_size_done); ?>&amp;product_description_short=<?php echo htmlspecialchars($product_description_short, ENT_QUOTES); ?>'>
<?php } ?>


<?php } else { ?>
    <a class="quick-view hidden-xs" href='catalog/view/theme/_ajax_view-product.php?product_href=<?php echo $product['href']; ?>&amp;view_details=<?php echo $view_details; ?>&amp;image_main=<?php echo $image_qv; ?>&amp;image_popup=<?php echo $image_qv_popup; ?>&amp;product_name=<?php echo $product['name']; ?>&amp;product_rating=<?php echo $product['rating']; ?>&amp;array_images=<?php echo serialize($additional_images_size_done); ?>&amp;product_description_short=<?php echo htmlspecialchars($product_description_short, ENT_QUOTES); ?>'>
<?php } ?>

    <?php
    if ($product['rating'] > 0) :
        echo '<span class="rating">';
        for ($i = 1; $i <= $product['rating']; $i++) {echo '<i class="icon-star-3"></i>';}
        $k =  5 - $product['rating'];
        for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
        echo '</span>';
    endif;
    ?>
    <?php if (!isset($quick_status) || $quick_status !== '0') : ?>
    <span class="icon-zoom-in-2"></span> <?php echo (isset($quick_view_text) ? $quick_view_text : 'Quick view'); ?>
    <?php endif; ?>
</a>
<div class="quick-view visible-xs">
    <?php
    if ($product['rating'] > 0) :
        echo '<span class="rating">';
        for ($i = 1; $i <= $product['rating']; $i++) {echo '<i class="icon-star-3"></i>';}
        $k =  5 - $product['rating'];
        for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
        echo '</span>';
    endif;
    ?>
</div>
