<?php
if (isset($products) && sizeof($products) > 0) :
global $config, $loader, $registry, $db, $session;
?>
<div class="container">
    <div class="row add_after_quick_view_section">
        <section class="slider-products content-box upsells">
            <h3><?php echo $tab_also_bought_title; ?></h3>
            <div class="products-list-small">
                <ul class="slides">

                    <?php
                    $store_id = $config->get('config_store_id');
                    $lang = $config->get('config_language_id');


                    if ($store_id == 0) {
                        $customisation_translation = $config->get('customisation_translation');
                    } else {
                        $customisation_translation = $config->get('customisation_translation_store');
                        if (isset($customisation_translation[$lang]["view_details"][$store_id])) {$customisation_translation[$lang]["view_details"] = $customisation_translation[$lang]["view_details"][$store_id];}
                    }

                    $view_details = (isset($customisation_translation[$lang]['view_details']) ? $customisation_translation[$lang]['view_details'] : 'view');

                    foreach ($products as $product) :


                $product_description_short = (strlen($product['description']) > $limit ? utf8_substr($product['full_description'], 0, $limit) . '...' : $product['full_description']);

                    $loader->model('catalog/product');
                    $model = $registry->get('model_catalog_product');
                    $additional_images = $model->getProductImages($product['product_id']);


                    $loader->model('tool/image');
                    $model_resize = $registry->get('model_tool_image');


                    if ($additional_images){
                    $additional_images_size = array();

                    foreach ($additional_images as $additional_image) {

                    $additional_images_size[] = array(
                    'small'   	 => $model_resize->resize($additional_image['image'], $config->get('config_image_additional_width'), $config->get('config_image_additional_height')),
                    'big'   	 => $model_resize->resize($additional_image['image'], $config->get('config_image_popup_width'), $config->get('config_image_popup_height'))
                    );

                    }
                    } else {
                    $additional_images_size = 0;
                    }

                    $additional_images_size_done = serialize(str_replace("\"","'",$additional_images_size));


                    $image_empty = $model_resize->resize('no_image.png', $config->get('config_image_product_width'), $config->get('config_image_product_height'));
                    ?>
                    <li>
                        <div class="product-preview">
                            <div class="preview animate scale">
                                <a href="<?php echo $product['href']; ?>">
                                    <?php if ($product['thumb_small']) { ?>
                                    <img src="<?php echo $product['thumb_small']; ?>" data2x="<?php echo $product['thumb_small2x']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                                    <?php } else { ?>
                                    <img src="<?php echo $image_empty; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                                    <?php }  ?>
                                </a>
                                <?php

                        if ($product['special']) { ?>
                                <a class="quick-view" href='catalog/view/theme/_ajax_view-product.php?
                                product_href=<?php echo $product['href']; ?>
                                &amp;image_main=<?php echo $product['thumb']; ?>
                                &amp;view_details=<?php echo $view_details; ?>
                                &amp;image_popup=<?php echo $product['popup']; ?>
                                &amp;product_name=<?php echo $product['name']; ?>
                                &amp;product_price=<?php echo $product['price']; ?>
                                &amp;product_special=<?php echo $product['special']; ?>
                                &amp;product_rating=<?php echo $product['rating']; ?>
                                &amp;array_images=<?php echo serialize($additional_images_size_done); ?>
                                &amp;product_description_short=<?php echo htmlspecialchars($product_description_short, ENT_QUOTES); ?>'>
                                <span class="icon-zoom-in-2"></span> <?php echo $text_view; ?>
                                </a>
                                <?php } else { ?>
                                <a class="quick-view" href='catalog/view/theme/_ajax_view-product.php?
                                product_href=<?php echo $product['href']; ?>
                                &amp;image_main=<?php echo $product['thumb']; ?>
                                &amp;view_details=<?php echo $view_details; ?>
                                &amp;image_popup=<?php echo $product['popup']; ?>
                                &amp;product_name=<?php echo $product['name']; ?>
                                &amp;product_price=<?php echo $product['price']; ?>
                                &amp;product_rating=<?php echo $product['rating']; ?>
                                &amp;array_images=<?php echo serialize($additional_images_size_done); ?>
                                &amp;product_description_short=<?php echo htmlspecialchars($product_description_short, ENT_QUOTES); ?>'>
                                <span class="icon-zoom-in-2"></span> <?php echo $text_view; ?>
                                </a>

                                <?php } ?>

                            </div>
                        </div>
                    </li>
                    <?php endforeach; ?>
                </ul>

            </div>

        </section>

    </div>


    <!-- product view ajax container -->
    <div class="product-view-ajax-container"></div>
    <!-- //end product view ajax container -->
    <!-- Product view compact -->
    <div class="product-view-ajax">
        <div class="ajax-loader progress progress-striped active">
            <div class="progress-bar progress-bar-danger" role="progressbar"></div>
        </div>
        <div class="layar"></div>
        <div class="product-view-container"></div>
    </div>
    <!-- //end Product view compact -->

</div>


<!--changed listings-->
<?php endif; ?>