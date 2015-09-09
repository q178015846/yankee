<?php
global $config, $loader, $registry;

$type_of_slider = 'featured';

$store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_products = $config->get('customisation_products');
    $customisation_slider = $config->get('customisation_slider');
} else {
    $customisation_products = $config->get('customisation_products_store');
    $customisation_slider = $config->get('customisation_slider_store');

    if (isset($customisation_products["limit_description_popup"][$store_id])) {$customisation_products["limit_description_popup"] = $customisation_products["limit_description_popup"][$store_id];}
    if (isset($customisation_products["limit_description_inline"][$store_id])) {$customisation_products["limit_description_inline"] = $customisation_products["limit_description_inline"][$store_id];}
    if (isset($customisation_products["product_page_images_sizes"][$store_id])) {$customisation_products["product_page_images_sizes"] = $customisation_products["product_page_images_sizes"][$store_id];}
    if (isset($customisation_products["bs_products_listing_images_sizes"][$store_id])) {$customisation_products["bs_products_listing_images_sizes"] = $customisation_products["bs_products_listing_images_sizes"][$store_id];}

    if (isset($customisation_slider["featured_type"][$store_id])) {$customisation_slider["featured_type"] = $customisation_slider["featured_type"][$store_id];}
    if (isset($customisation_slider["featured_quick_type"][$store_id])) {$customisation_slider["featured_quick_type"] = $customisation_slider["featured_quick_type"][$store_id];}
    if (isset($customisation_slider["latest_type"][$store_id])) {$customisation_slider["latest_type"] = $customisation_slider["latest_type"][$store_id];}
    if (isset($customisation_slider["latest_quick_type"][$store_id])) {$customisation_slider["latest_quick_type"] = $customisation_slider["latest_quick_type"][$store_id];}
    if (isset($customisation_slider["bestseller_type"][$store_id])) {$customisation_slider["bestseller_type"] = $customisation_slider["bestseller_type"][$store_id];}
    if (isset($customisation_slider["bestseller_quick_type"][$store_id])) {$customisation_slider["bestseller_quick_type"] = $customisation_slider["bestseller_quick_type"][$store_id];}
    if (isset($customisation_slider["popular_type"][$store_id])) {$customisation_slider["popular_type"] = $customisation_slider["popular_type"][$store_id];}
    if (isset($customisation_slider["popular_quick_type"][$store_id])) {$customisation_slider["popular_quick_type"] = $customisation_slider["popular_quick_type"][$store_id];}
    if (isset($customisation_slider["special_type"][$store_id])) {$customisation_slider["special_type"] = $customisation_slider["special_type"][$store_id];}
    if (isset($customisation_slider["special_quick_type"][$store_id])) {$customisation_slider["special_quick_type"] = $customisation_slider["special_quick_type"][$store_id];}

}

$loader->model('custom/general');
$model_module = $registry->get('model_custom_general');
$setting = $model_module->getModuleSettings($type_of_slider);


$settings[0]['width'] = $setting['width'];
$settings[0]['height'] = $setting['height'];

$loader->model('custom/general');
$model = $registry->get('model_custom_general');
$layout_id = $model->getCurrentLayout();

$pulse = 1;
$scroll = 'autoscroll';

if (!isset($customisation_slider[$type_of_slider.'_quick_type']) || $customisation_slider[$type_of_slider.'_quick_type'] == 'popup') {
    $quick_type = 'popup';
    if (isset($customisation_products["limit_description_popup"]) && is_numeric($customisation_products["limit_description_popup"])) {
        $limit = $customisation_products["limit_description_popup"];
    } else {
        $limit = 1500;
    }
} else {
    $quick_type = 'inline';
    if (isset($customisation_products["limit_description_inline"]) && is_numeric($customisation_products["limit_description_inline"])) {
        $limit = $customisation_products["limit_description_inline"];
    } else {
        $limit = 2600;
    }
}

if ($layout_id == 1) {
    if (!isset($customisation_slider[$type_of_slider.'_type']) || $customisation_slider[$type_of_slider.'_type'] == 'horizontal') {
        include('catalog/view/theme/slider_model_big.php');
    } elseif ($customisation_slider[$type_of_slider.'_type'] == 'vertical') {
        include('catalog/view/theme/slider_model_small.php');
    } else {
        include('catalog/view/theme/list_model_big.php');
    }
} elseif ($layout_id == 2) {
    if (!isset($customisation_products["product_page_images_sizes"]) || $customisation_products["product_page_images_sizes"] !== 'big') {
        include('catalog/view/theme/slider_model_small.php');
    } else {
        include('catalog/view/theme/slider_model_big.php');
    }
} else {
    if (!isset($customisation_products["bs_products_listing_images_sizes"]) || $customisation_products["bs_products_listing_images_sizes"] !== 'big') {
        include('catalog/view/theme/slider_model_small.php');
    } else {
        include('catalog/view/theme/slider_model_big.php');
    }
}
?>