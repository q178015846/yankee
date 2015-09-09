<?php
if ($products):

$width_settings = $settings[0]['width'];
$height_settings = $settings[0]['height'];

global $config, $loader, $registry, $settings,$db;
    $store_id = $config->get('config_store_id');

    ?>

    <!-- Products widgets desktop-->

    <div class="<?php echo $type_of_slider; ?>">
            <h3>
                <?php echo ($pulse == 1 ? '<span class="pulse"><span class="pulse_icon"></span></span>' : ''); ?>
                <?php echo $heading_title; ?>
            </h3>
            <div class="products-widget jcarousel-skin-previews vertical <?php echo (isset($scroll) ? $scroll : 'noscroll'); ?>">
                <ul class="slides">
    <!-- Products list -->
             <?php
                foreach ($products as $product) :

                    if ($store_id == 0) {
                        $customisation_products = $config->get('customisation_products');
                        if (isset($customisation_products["product_catalog_mode"])) {$product_catalog_mode = $customisation_products["product_catalog_mode"];}
                    } else {
                        $customisation_products = $config->get('customisation_products_store');
                        if (isset($customisation_products["product_catalog_mode"][$store_id])) {$product_catalog_mode = $customisation_products["product_catalog_mode"][$store_id];}
                    }


                    $loader->model('catalog/product');
                    $model = $registry->get('model_catalog_product');
                    $product_info = $model->getProduct($product['product_id']);

                    $loader->model('tool/image');
                    $model_resize = $registry->get('model_tool_image');

                    if ($product_info) :
                            if ($product_info['image']) {
                                $image2x = $model_resize->resize($product_info['image'], $width_settings*2, $height_settings*2);
                            } else {
                                $image2x = $model_resize->resize('placeholder.png', $width_settings*2, $height_settings*2);

                            }
                        endif;
                    ?>
                    <li>
                        <div class="product">
                            <a class="preview-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                                 <?php if ($product['thumb']) : ?>
                                        <img class="img-responsive <?php echo (current($product) == $products[0]["product_id"] ? 'product_activ' : 'product_normal'); ?>" src="<?php echo $product['thumb']; ?>" data-image2x="<?php echo $image2x; ?>" alt="<?php echo $product['name']; ?>" />
                                 <?php endif; ?>
                            </a>


                                <p class="name">
                                    <a class="preview-image" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                </p>
                                <span class="rating">
                                    <?php
                                    if ($product['rating'] > 0) :
                                        for ($i = 1; $i <= $product['rating']; $i++) {echo '<i class="icon-star-3"></i>';}
                                        $k =  5 - $product['rating'];
                                        for ($j = 1; $j <= $k; $j ++) {echo '<i class="icon-star-empty"></i>';}
                                    endif;
                                    ?>
                                </span>
                                <?php if (!isset($product_catalog_mode) || $product_catalog_mode != 1) : ?>
                                    <?php if ($product['price']) : ?>
                                        <?php if (!$product['special']) { ?>
                                            <span class="price"><?php echo $product['price']; ?></span>
                                        <?php } else { ?>
                                            <span class="price-old price old"><?php echo $product['price']; ?></span>
                                            <span class="price-new price new"><?php echo $product['special']; ?></span>
                                        <?php } ?>
                                    <?php endif; ?>
                                <?php endif; ?>
                        </div>
                    </li>

             <?php endforeach; ?>

            </ul>
                </div>

        </div>

<div class="line-divider"></div>

<!-- end Products widgets desktop-->
<?php endif; ?>
