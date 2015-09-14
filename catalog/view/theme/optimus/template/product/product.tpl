<?php echo $header; ?>
<?php
    global $config, $loader, $registry, $db, $session;

    $store_id = $config->get('config_store_id');
    $lang = $config->get('config_language_id');

    if ($store_id == 0) {
        $customisation_products = $config->get('customisation_products');
        $customisation_translation = $config->get('customisation_translation');
    } else {
        $customisation_products = $config->get('customisation_products_store');
        $customisation_translation = $config->get('customisation_translation_store');

        if (isset($customisation_products["product_listing_type"][$store_id])) {$customisation_products["product_listing_type"] = $customisation_products["product_listing_type"][$store_id];}
        if (isset($customisation_products["izotope_number"][$store_id])) {$customisation_products["izotope_number"] = $customisation_products["izotope_number"][$store_id];}

        if (isset($customisation_products["tabs_position"][$store_id])) {$customisation_products["tabs_position"] = $customisation_products["tabs_position"][$store_id];}
        if (isset($customisation_products["thumbnails_position"][$store_id])) {$customisation_products["thumbnails_position"] = $customisation_products["thumbnails_position"][$store_id];}
        if (isset($customisation_products["cloudzoom_mode"][$store_id])) {$customisation_products["cloudzoom_mode"] = $customisation_products["cloudzoom_mode"][$store_id];}
        if (isset($customisation_products["product_catalog_mode"][$store_id])) {$customisation_products["product_catalog_mode"] = $customisation_products["product_catalog_mode"][$store_id];}
        if (isset($customisation_products["product_page_button"][$store_id])) {$customisation_products["product_page_button"] = $customisation_products["product_page_button"][$store_id];}
        if (isset($customisation_products["related"][$store_id])) {$customisation_products["related"] = $customisation_products["related"][$store_id];}
        if (isset($customisation_products["limit_description_popup"][$store_id])) {$customisation_products["limit_description_popup"] = $customisation_products["limit_description_popup"][$store_id];}
        if (isset($customisation_products["product_page_images_sizes"][$store_id])) {$customisation_products["product_page_images_sizes"] = $customisation_products["product_page_images_sizes"][$store_id];}
        if (isset($customisation_translation[$lang]["tags_tab_title"][$store_id])) {$customisation_translation[$lang]["tags_tab_title"] = $customisation_translation[$lang]["tags_tab_title"][$store_id];}
    }


$loader->model('custom/general');
$model_product = $registry->get('model_custom_general');

$video1 = $model_product->getProductOption($product_id, 'video1');

$tab_title = $model_product->getProductOption($product_id, 'tab_title');
$html_product_tab = $model_product->getProductOption($product_id, 'html_product_tab');

$html_product_bottom = $model_product->getProductOption($product_id, 'html_product_bottom');
$html_product_right = $model_product->getProductOption($product_id, 'html_product_right');

$tabs_position = (isset($customisation_products['tabs_position']) ? $customisation_products['tabs_position'] : '1');


?>

<div class="container product_page">
  <ul class="breadcrumb" itemprop="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a itemprop="url" href="<?php echo $breadcrumb['href']; ?>"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
</div>

<!--container for image and info-->
<div class="container product_image_info">
    <div class="product-info">
        <?php echo $content_top; ?>


        <!--product view - with left and right part-->
        <div class="product-view row">
            <?php if ($thumb || $images || isset($video1) && $video1 != '') : ?>
                <div class="col-sm-6 <?php echo (!empty($column_right) || $products  || isset($html_product_right) && $html_product_right != '' && $html_product_right != '<p>&nbsp;</p>' ? (!isset($customisation_products['related']) || $customisation_products['related'] == 'disable' ? 'col-md-6 col-lg-6' : 'col-md-5 col-lg-5') : 'col-md-6 col-lg-6'); ?>">
                    <!--left previews-->
                    <?php if ($images && (isset($customisation_products["thumbnails_position"]) && $customisation_products["thumbnails_position"] == 'left')) : ?>
                        <div class="hidden-xs flexslider-thumb-vertical-outer">
                            <div class="flexslider flexslider-thumb-vertical vertical min">
                                <ul class="previews-list slides">
                                    <?php if ($images) : ?>
                                    <li><img class="cloudzoom-gallery" src="<?php echo $thumb; ?>" data-cloudzoom = "useZoom: '.cloudzoom', image: '<?php echo $popup; ?>', zoomImage: '<?php echo $popup; ?>', autoInside :991" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
                                    <?php foreach ($images as $image) : ?>
                                    <li><img class="cloudzoom-gallery" src="<?php echo $image['thumb']; ?>" data-cloudzoom = "useZoom: '.cloudzoom', image: '<?php echo $image['popup']; ?>', zoomImage: '<?php echo $image['popup']; ?>'" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
                                    <?php endforeach; ?>
                                    <?php endif; ?>

                                   <!--  <?php if (isset($video1) && $video1 != '') : ?>
                                    <li><a class="various fancybox.iframe" href="<?php echo $video1; ?>"><img alt="youtube video"  class="fancybox-video" src = "catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/video.png" ></a></li>
                                    <?php endif; ?> -->
                                </ul>
                            </div>
                        </div>
                    <?php endif; ?>
                    <!--end left previews-->


                    <?php if ($thumb) : ?>
                        <div class="large-image <?php echo (isset($customisation_products["thumbnails_position"]) && $customisation_products["thumbnails_position"] == 'left' ? ' vertical hidden-xs' : ''); ?>">
                            <img itemprop="image" class="cloudzoom" src="<?php echo $thumb; ?>" data-cloudzoom="zoomImage:'<?php echo $popup; ?>', autoInside :991,zoomSizeMode: 'image',captionSource:'none'<?php echo (isset($customisation_products["cloudzoom_mode"]) && $customisation_products["cloudzoom_mode"] == 'inside' ? ",zoomPosition:'inside'" : ""); ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                        </div>
                    <?php endif; ?>

                    <?php if ($images || isset($video1) && $video1 != '') : ?>
                        <div class="flexslider <?php echo ((count($images) < 3 && (!isset($video1) || $video1 == '') || (count($images) == 1)) ? 'not_full_slider' : 'full_slider'); ?> <?php echo (isset($customisation_products["thumbnails_position"]) && $customisation_products["thumbnails_position"] == 'left' ? 'flexslider-large visible-xs' : 'flexslider-thumb'); ?>">
                            <ul class="previews-list slides">
                                <?php if ($images) : ?>
                                    <li><img class="cloudzoom-gallery" src="<?php echo $thumb; ?>" data-cloudzoom = "useZoom: '.cloudzoom', image: '<?php echo $popup; ?>', zoomImage: '<?php echo $popup; ?>', autoInside :991" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
                                    <?php foreach ($images as $image) : ?>
                                        <li><img class="cloudzoom-gallery" src="<?php echo $image['thumb']; ?>" data-cloudzoom = "useZoom: '.cloudzoom', image: '<?php echo $image['popup']; ?>', zoomImage: '<?php echo $image['popup']; ?>'" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                               <!--  <?php if (isset($video1) && $video1 != '') : ?>
                                    <li><a class="various fancybox.iframe" href="<?php echo $video1; ?>"><img alt="youtube video"  class="fancybox-video" src = "catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/video.png" ></a></li>
                                <?php endif; ?> -->
                            </ul>
                        </div>
                    <?php endif; ?>
                </div>
            <?php endif; ?>



            <!--product info right-->
            <div class="<?php echo (!empty($column_right) || $products || isset($html_product_right) && $html_product_right != '' && $html_product_right != '<p>&nbsp;</p>' ? (!isset($customisation_products['related']) || $customisation_products['related'] == 'disable' ? 'col-sm-6 col-md-6 col-lg-6' : 'col-sm-6 col-md-4 col-lg-4') : ($thumb ? 'col-sm-6 col-md-6 col-lg-6' : 'col-sm-12 col-md-12 col-lg-12')); ?>">
                <!-- Product label -->
                <div class="product-label">
                    <div class="box-wrap">
                        <div class="box-wrap-top"></div>
                        <div class="box-wrap-bot"></div>
                        <div class="box-wrap-center"></div>
                        <div class="box">
                            <div class="box-content">
                                <h1><?php echo $heading_title; ?></h1>
                                <?php if (!isset($customisation_products['product_catalog_mode']) || $customisation_products['product_catalog_mode'] != 1) : ?>
                                <?php if ($price) : ?>
                                <div class="product_page_price" itemprop="offerDetails" itemscope itemtype="http://data-vocabulary.org/Offer">
                                    <?php if (!$special) { ?>
                                    <?php echo '<span class="price" itemprop="price">'.$price.'</span>'; ?>
                                    <?php } else { ?>
                                    <span class="price old price-old"><?php echo $price; ?></span>
                                    <span class="price new price-new" itemprop="price"><?php echo $special; ?></span>
                                    <?php } ?>
                                    <br />
                                    <?php if ($tax) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
                                    <?php } ?>
                                    <?php if ($points) { ?>
                                    <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
                                    <?php } ?>
                                    <?php if ($discounts) { ?>
                                    <div class="discount">
                                        <?php foreach ($discounts as $discount) { ?>
                                         <?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </div>
                                <?php endif; ?>
                                <?php endif; ?>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- end Product label -->

                <!-- Description -->
                <div class="product-description">
                <?php if ($review_status) { ?>
                    <p class="review">
                        <?php
                            echo '<span class="rating">';
                        for ($i = 1; $i <= $rating; $i++) {echo '<i class="icon-star-3"></i>';}
                        $k =  5 - $rating;
                        for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
                        echo '</span>';
                        ?>
                        <a class="reviews_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a class="write_review_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
                <?php } ?>



                <?php if ($manufacturer) { ?>
                <p>
                    <span><?php echo $text_manufacturer; ?></span>
                    <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>
                </p>
                <?php } ?>
                <p><span><?php echo $text_model; ?></span> <?php echo $model; ?></p>
                <?php if ($reward) { ?>
                <p>
                    <span><?php echo $text_reward; ?></span> <?php echo $reward; ?>
                </p>
                <?php } ?>
                <p><span><?php echo $text_stock; ?></span> <?php echo $stock; ?></p>

                <div class="add-to-links wish_comp">
                    <ul>
                        <li>
                            <a class="icon" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist_theme.add('<?php echo $product_id; ?>');"><i class="icon-heart"></i></a>
                            <a class="text" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist_theme.add('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a>
                        </li>
                        <li>
                            <a class="icon" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare_theme.add('<?php echo $product_id; ?>');"><i class="icon-justice"></i></a>
                            <a class="text" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare_theme.add('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
                        </li>
                    </ul>
                </div>


                    <div id="product">
                        <?php if ($options) { ?>
                        <hr>
                        <h3><?php echo $text_option; ?></h3>
                        <?php foreach ($options as $option) { ?>
                        <?php if ($option['type'] == 'select') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'radio') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                        <?php echo $option_value['name']; ?>
                                        <?php if ($option_value['price']) { ?>
                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                        <?php } ?>
                                    </label>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'checkbox') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                        <?php echo $option_value['name']; ?>
                                        <?php if ($option_value['price']) { ?>
                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                        <?php } ?>
                                    </label>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'image') { ?>
                        <div class="image_option_type form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <div class="product-options" id="input-option<?php echo $option['product_option_id']; ?>">
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                <div class="radio">
                                    <label>
                                        <input class="image_radio" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                        <img data-toggle="tooltip" title="<?php echo $option_value['name']; ?><?php if ($option_value['price']) { ?>
                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                        <?php } ?>" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail icon icon-color" />
                                    </label>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'text') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'textarea') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'file') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'date') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group date">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'datetime') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group datetime">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'time') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group time">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span>
                            </div>
                        </div>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                        <?php if ($recurrings) { ?>
                        <hr>
                        <h3><?php echo $text_payment_recurring ?></h3>
                        <div class="form-group required">
                            <select name="recurring_id" class="form-control">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($recurrings as $recurring) { ?>
                                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block" id="recurring-description"></div>
                        </div>
                        <?php } ?>
                        <?php if (!isset($customisation_products['product_catalog_mode']) || $customisation_products['product_catalog_mode'] != 1) : ?>

                        <div class="cart">
                            <div class="option quantity">
                                <b><?php echo $entry_qty; ?></b>
                                <div class="input-group quantity-control">
                                    <span class="input-group-addon">−</span>
                                    <input class="form-control" type="text" name="quantity" value="<?php echo $minimum; ?>" />
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    <span class="input-group-addon">+</span>
                                </div>
                            </div>
                            <div class="clearfix visible-xs"></div>
                            <input type="button" value="<?php echo $button_cart; ?>" data-loading-text="<?php echo $text_loading; ?>" id="button-cart" class="btn btn-mega btn-lg" />
                            <?php if ($minimum > 1) : ?><div class="minimum"><?php echo $text_minimum; ?></div><?php endif; ?>
                        </div>

                        <?php endif; ?>

                    </div>


                <!--tabs type 3-->
                <?php if ($tabs_position == 3) : ?>
                    <div class="producttab panel-group accordion-simple" id="product-accordion">

                        <?php if ($description) : ?>
                            <div class="panel">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#product-accordion" href="#product-description" class="collapsed">
                                        <span class="arrow-down icon-arrow-down-4"></span>
                                        <span class="arrow-up icon-arrow-up-4"></span>
                                        <?php echo $tab_description; ?>
                                    </a>
                                </div>
                                <div id="product-description" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <?php echo $description; ?>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if ($attribute_groups) : ?>
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#product-accordion" href="#product-attribute" class="collapsed">
                                    <span class="arrow-down icon-arrow-down-4"></span>
                                    <span class="arrow-up icon-arrow-up-4"></span>
                                    <?php echo $tab_attribute; ?>
                                </a>
                            </div>
                            <div id="product-attribute" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table class="attribute">
                                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                                        <thead>
                                        <tr>
                                            <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                        <tr>
                                            <td><?php echo $attribute['name']; ?></td>
                                            <td><?php echo $attribute['text']; ?></td>
                                        </tr>
                                        <?php } ?>
                                        </tbody>
                                        <?php } ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>

                        <?php if ($review_status) : ?>
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#product-accordion" href="#tab-review" class="collapsed">
                                    <span class="arrow-down icon-arrow-down-4"></span>
                                    <span class="arrow-up icon-arrow-up-4"></span>
                                    <?php echo $tab_review; ?>
                                </a>
                            </div>
                            <div id="tab-review" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <form>
                                        <div id="review"></div>
                                        <h2 id="review-title"><?php echo $text_write; ?></h2>
                                        <?php if ($review_guest) { ?>
                                        <div class="contacts-form">
                                            <div class="form-group">
                                                <span class="icon icon-user"></span>
                                                <input type="text" name="name" class="form-control" value="<?php echo $entry_name; ?>" onblur="if (this.value == '') {this.value = '<?php echo $entry_name; ?>';}" onfocus="if(this.value == '<?php echo $entry_name; ?>') {this.value = '';}">
                                            </div>
                                            <div class="form-group">
                                                <span class="icon icon-bubbles-2"></span>
                                                <textarea class="form-control" name="text" onblur="if (this.value == '') {this.value = '<?php echo $entry_review; ?>';}" onfocus="if(this.value == '<?php echo $entry_review; ?>') {this.value = '';}"><?php echo $entry_review; ?></textarea>
                                            </div>
                                            <span style="font-size: 11px;"><?php echo $text_note; ?></span>
                                            <br />
                                            <br />
                                            <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                                            <input type="radio" name="rating" value="1" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="2" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="3" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="4" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="5" />
                                            &nbsp;<span><?php echo $entry_good; ?></span><br />
                                            <br />
                                            <?php if ($site_key) { ?>
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                                                </div>
                                            </div>
                                            <?php } ?>


                                            <div class="buttons"><a id="button-review" class="btn btn-mega"><?php echo $button_continue; ?></a></div>

                                        </div>
                                        <?php } else { ?>
                                        <?php echo $text_login; ?>
                                        <?php } ?>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>

                        <?php if ($tags) : ?>
                            <div class="panel">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#product-accordion" href="#product-tags" class="collapsed">
                                        <span class="arrow-down icon-arrow-down-4"></span>
                                        <span class="arrow-up icon-arrow-up-4"></span>
                                        <?php echo (isset($customisation_translation[$lang]["tags_tab_title"]) ? $customisation_translation[$lang]["tags_tab_title"] : 'TAGS'); ?>
                                    </a>
                                </div>
                                <div id="product-tags" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <?php for ($i = 0; $i < count($tags); $i++) { ?>
                                        <?php if ($i < (count($tags) - 1)) { ?>
                                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                                        <?php } else { ?>
                                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if (!empty($html_product_tab) && !empty($tab_title)) : ?>
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#product-accordion" href="#product-custom" class="collapsed">
                                    <span class="arrow-down icon-arrow-down-4"></span>
                                    <span class="arrow-up icon-arrow-up-4"></span>
                                    <?php echo $tab_title; ?>
                                </a>
                            </div>
                            <div id="product-custom" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <?php echo $html_product_tab; ?>
                                </div>
                            </div>
                        </div>

                        <?php endif; ?>

                    </div>
                <?php endif; ?>

                <!--end tabs type 3-->

                <!-- AddThis Button BEGIN -->
                


                <!-- AddThis Button END -->


                </div>
                <!-- end Description -->


            </div>
            <!--end product info right-->


    <!--right custom block-->
    <?php if (!empty($column_right) || $products || isset($html_product_right) && $html_product_right != '' && $html_product_right != '<p>&nbsp;</p>') : ?>
    <section class="col-sm-12 col-md-3 col-lg-3 slider-products module right_column">
        <?php echo $column_right; ?>

        <?php
        if (isset($html_product_right) && $html_product_right != '' && $html_product_right != '<p>&nbsp;</p>') :
        echo $html_product_right;
        endif;


                if (!isset($customisation_products['related']) || $customisation_products['related'] !== 'disable') :
                    $pulse = 0;
                    $type_of_slider = 'related';
                    $quick_type = 'popup';
                    if (isset($customisation_products["limit_description_popup"]) && is_numeric($customisation_products["limit_description_popup"])) {
                        $limit = $customisation_products["limit_description_popup"];
                    } else {
                        $limit = 1500;
                    }
                    $settings[0]['width'] = $config->get('config_image_related_width');
        $settings[0]['height'] = $config->get('config_image_related_height');
        $heading_title = $text_related;

        if (!isset($customisation_products['product_page_images_sizes']) || $customisation_products['product_page_images_sizes'] == 'small') {
            include('catalog/view/theme/slider_model_small.php');
        } else {
            include('catalog/view/theme/slider_model_big.php');
        }



        endif;
        ?>
    </section>
    <?php endif; ?>
    <!--end right custom block-->



</div>
<!--end product view - with left and right part-->
<?php if ($tabs_position != 3) : ?>
<div class="producttab">
    <div class="tabsslider <?php echo ($tabs_position == 1 ? 'visible-xs' : ''); ?>">
        <ul class="nav nav-tabs">
            <?php if ($description) : ?>
            <li class="active"><a data-toggle="tab" href="#tab-1"><?php echo $tab_description; ?></a></li>
            <?php endif; ?>

            <?php if ($attribute_groups) : ?>
            <li class="<?php echo (!$description ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-2"><?php echo $tab_attribute; ?></a></li>
            <?php endif; ?>

            <?php if ($review_status) : ?>
            <li class="<?php echo (!$description && !$attribute_groups ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-review"><?php echo $tab_review; ?></a></li>
            <?php endif; ?>

            <?php if ($tags) : ?>
            <li class="<?php echo (!$description && !$attribute_groups && !$review_status ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-4"><?php echo (isset($customisation_translation[$lang]["tags_tab_title"]) ? $customisation_translation[$lang]["tags_tab_title"] : 'TAGS'); ?></a></li>
            <?php endif; ?>

            <?php if (!empty($html_product_tab)) : ?>
            <li class="<?php echo (!$description && !$attribute_groups && !$review_status && !$tags ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-5"><?php echo (!empty($tab_title) ? $tab_title : 'Custom block'); ?></a></li>
            <?php endif; ?>
        </ul>
        <a class="carousel-prev">&nbsp;</a>
        <a class="carousel-next">&nbsp;</a>
    </div>


<?php if ($tabs_position == 1) : ?>
        <!--tabs (left position)-->

        <!--desktop tabs-->
        <div class="tabs-left">
            <ul class="nav nav-tabs hidden-xs">
                <?php if ($description) : ?>
                <li class="active"><a data-toggle="tab" href="#tab-1"><?php echo $tab_description; ?></a></li>
                <?php endif; ?>

                <?php if ($attribute_groups) : ?>
                <li class="<?php echo (!$description ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-2"><?php echo $tab_attribute; ?></a></li>
                <?php endif; ?>

                <?php if ($review_status) : ?>
                <li class="<?php echo (!$description && !$attribute_groups ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-review"><?php echo $tab_review; ?></a></li>
                <?php endif; ?>

                <?php if ($tags) : ?>
                <li class="<?php echo (!$description && !$attribute_groups && !$review_status ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-4"><?php echo (isset($customisation_translation[$lang]["tags_tab_title"]) ? $customisation_translation[$lang]["tags_tab_title"] : 'TAGS'); ?></a></li>
                <?php endif; ?>

                <?php if (!empty($html_product_tab)) : ?>
                <li class="<?php echo (!$description && !$attribute_groups && !$review_status && !$tags ? 'active' : 'item_nonactive'); ?>"><a data-toggle="tab" href="#tab-5"><?php echo (!empty($tab_title) ? $tab_title : 'Custom block'); ?></a></li>
                <?php endif; ?>
            </ul>
            <div class="tab-content-outer">
<?php endif; ?>

                <div class="tab-content">
                    <?php if ($description) : ?>
                    <div id="tab-1" class="tab-pane fade active in">
                        <?php echo $description; ?>
                    </div>
                    <?php endif; ?>

                    <?php if ($attribute_groups) : ?>
                    <div id="tab-2" class="<?php echo (!$description ? 'tab-pane fade active in' : 'tab-pane fade'); ?>">
                        <table class="attribute">
                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                            <thead>
                            <tr>
                                <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                            <tr>
                                <td><?php echo $attribute['name']; ?></td>
                                <td><?php echo $attribute['text']; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                            <?php } ?>
                        </table>
                    </div>
                    <?php endif; ?>

                    <?php if ($review_status) : ?>
                    <div id="tab-review" class="<?php echo (!$description && !$attribute_groups ? 'tab-pane fade active in' : 'tab-pane fade'); ?>">
                        <form>
                            <div id="review"></div>
                            <h2 id="review-title"><?php echo $text_write; ?></h2>
                            <?php if ($review_guest) { ?>
                                <div class="contacts-form">
                                    <div class="form-group">
                                        <span class="icon icon-user"></span>
                                        <input type="text" name="name" class="form-control" value="<?php echo $entry_name; ?>" onblur="if (this.value == '') {this.value = '<?php echo $entry_name; ?>';}" onfocus="if(this.value == '<?php echo $entry_name; ?>') {this.value = '';}">
                                    </div>
                                    <div class="form-group">
                                        <span class="icon icon-bubbles-2"></span>
                                        <textarea class="form-control" name="text" onblur="if (this.value == '') {this.value = '<?php echo $entry_review; ?>';}" onfocus="if(this.value == '<?php echo $entry_review; ?>') {this.value = '';}"><?php echo $entry_review; ?></textarea>
                                    </div>
                                    <span style="font-size: 11px;"><?php echo $text_note; ?></span>
                                    <br />
                                    <br />
                                    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                                    <input type="radio" name="rating" value="1" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="2" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="3" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="4" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="5" />
                                    &nbsp;<span><?php echo $entry_good; ?></span><br />
                                    <br />
                                    <?php if ($site_key) { ?>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <div class="buttons clearfix"><a id="button-review" class="btn btn-mega"><?php echo $button_continue; ?></a></div>

                                </div>
                            <?php } else { ?>
                            <?php echo $text_login; ?>
                            <?php } ?>
                        </form>

                    </div>
                    <?php endif; ?>

                    <?php if ($tags) : ?>
                    <div id="tab-4" class="<?php echo (!$description && !$attribute_groups && !$review_status ? 'tab-pane fade active in' : 'tab-pane fade'); ?>">
                        <?php for ($i = 0; $i < count($tags); $i++) { ?>
                        <?php if ($i < (count($tags) - 1)) { ?>
                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                        <?php } else { ?>
                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php endif; ?>

                    <?php if (!empty($html_product_tab)) : ?>
                    <div id="tab-5" class="<?php echo (!$description && !$attribute_groups && !$review_status && !$tags ? 'tab-pane fade active in' : 'tab-pane fade'); ?>">
                        <?php echo $html_product_tab; ?>
                    </div>
                    <?php endif; ?>

                </div>

<?php if ($tabs_position == 1) : ?>
            </div>
        </div>
<?php endif; ?>


</div>
<?php endif; ?>




<div class="line-divider"></div>

   <?php echo $content_bottom ?>




    </div>

</div>
<!--end container for image and info-->


<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			//$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				//$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                $('#notification').parent().before('<div class="preloader"><div class="success_ev" style="display: none;">' + json['success'] + '</div></div>');
                $('.success_ev').fadeIn('slow');

                var str=json['total'];
                var myArray = str.split(' ');
                var str1=myArray[0];

                $('.mobile-nav .cart-total-full').html(str);
                $('.navbar-secondary-menu .cart-total-full').html(str);

                $('.mobile-nav .cart-total-number').html(str1);
                $('.navbar-secondary-menu .cart-total-number').html(str1);


                //$('html, body').animate({ scrollTop: 0 }, 'slow');
                setTimeout(function(){
                    jQuery('.success_ev').fadeOut();
                },1500)




                //$('#cart-total').html(json['total']);
				
				//$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('.cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
    if (typeof timer != 'undefined') {
        clearInterval(timer);
    }
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script> 
<?php echo $footer; ?>