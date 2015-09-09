<script type="text/javascript">
    function quickBox(product_id) {
        jQuery('#quickview-'+product_id+' .quickviewblock .large-image').html(jQuery('.main-image-'+product_id + ' .first-main-image-'+product_id+':first').clone());
        jQuery('.fancybox').fancybox({
            "closeBtn": false,
            hideOnContentClick : false,
            autoDimensions: true,
            showTitle: false,
            scrolling: 'auto',
            maxHeight: 800,
            fitToView: false,
            width: "84%",
            height: "70%",
            autoSize: false,
            closeClick: false,

            onComplete: function(){
                jQuery('.fancybox-default').load(function () {
                    jQuery('.fancybox-default').height(jQuery(this).contents().height());
                    jQuery.fancybox.resize();
                });
            }
        });
    }
</script>

<?php
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

?>

<a onclick="quickBox('<?php echo $product['product_id']; ?>');" class="quick-view quickview img-circle hidden-phone hidden-small-desktop hidden-tablet fancybox" href="#quickview-<?php echo $product['product_id']; ?>">
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


<!--quick box-->
<div id="quickview-<?php echo $product['product_id']; ?>" style="display: none;">
    <div class="product-preview-popup quickviewblock">
        <div class="product-view product-view-compact">
            <a onclick="javascript:jQuery.fancybox.close();" class="close-view"><span class="icon-cancel-3"></span></a>

            <div class="row">
                <div class="col-sm-5 col-md-5 col-lg-5">
                    <div class="large-image">
                    </div>
                </div>
                <div class="info-cell col-sm-7 col-md-7 col-lg-7">
                    <a class="close-view"><span class="icon-cancel-3"></span></a>
                    <h2><?php echo $product['name']; ?></h2>
                    <p><?php echo $product_description_short; ?></p>
                    <p>
                        <?php
                        if ($product['rating'] > 0) {
                            for ($i = 1; $i <= $product['rating']; $i++) {echo '<i class="icon-star-3"></i>';}
                            $k =  5 - $product['rating'];
                            for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
                        }
                        ?>
                    </p>
                    <?php if (!isset($product_catalog_mode) || $product_catalog_mode != 1) : ?>
                        <div>
                            <?php if (!$product['special']) { ?>
                            <span class="price"><?php echo $product['price']; ?></span>
                            <?php } else { ?>
                            <span class="price-old price old"><?php echo $product['price']; ?></span>
                            <span class="price-new price new"><?php echo $product['special']; ?></span>
                            <?php } ?>
                        </div>
                    <?php endif; ?>
                    <div class="quick_view_button"><a href="<?php echo $product['href']; ?>" class="btn btn-mega"><?php echo (isset($view_details) ? $view_details : 'view details'); ?>
                    </a></div>
                </div>

            </div>
        </div>
    </div>



</div>
<!--quick box-->



