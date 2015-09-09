<?php
    global $config;
    $customisation_products = $config->get('customisation_products');


    $store_id = $config->get('config_store_id');
    $lang = $config->get('config_language_id');

    if ($store_id == 0) {
        $customisation_products = $config->get('customisation_products');
    } else {
        $customisation_products = $config->get('customisation_products_store');

        if (isset($customisation_products["product_catalog_mode"][$store_id])) {$customisation_products["product_catalog_mode"] = $customisation_products["product_catalog_mode"][$store_id];}
        if (isset($customisation_products["listing_quick_type"][$store_id])) {$customisation_products["listing_quick_type"] = $customisation_products["listing_quick_type"][$store_id];}
        if (isset($customisation_products["product_listing_type"][$store_id])) {$customisation_products["product_listing_type"] = $customisation_products["product_listing_type"][$store_id];}
        if (isset($customisation_products["bs_products_listing_images_sizes"][$store_id])) {$customisation_products["bs_products_listing_images_sizes"] = $customisation_products["bs_products_listing_images_sizes"][$store_id];}
        if (isset($customisation_products["izotope_number"][$store_id])) {$customisation_products["izotope_number"] = $customisation_products["izotope_number"][$store_id];}
        if (isset($customisation_products["limit_description_inline"][$store_id])) {$customisation_products["limit_description_inline"] = $customisation_products["limit_description_inline"][$store_id];}
        if (isset($customisation_products["limit_description_popup"][$store_id])) {$customisation_products["limit_description_popup"] = $customisation_products["limit_description_popup"][$store_id];}
        if (isset($customisation_products["sale_status"][$store_id])) {$customisation_products["sale_status"] = $customisation_products["sale_status"][$store_id];}
        if (isset($customisation_products["sale_label_bg"][$store_id])) {$customisation_products["sale_label_bg"] = $customisation_products["sale_label_bg"][$store_id];}
        if (isset($customisation_products["new_status"][$store_id])) {$customisation_products["new_status"] = $customisation_products["new_status"][$store_id];}
        if (isset($customisation_products["days"][$store_id])) {$customisation_products["days"] = $customisation_products["days"][$store_id];}
        if (isset($customisation_products["new_label_bg"][$store_id])) {$customisation_products["new_label_bg"] = $customisation_products["new_label_bg"][$store_id];}
        if (isset($customisation_products["discount_label_bg"][$store_id])) {$customisation_products["discount_label_bg"] = $customisation_products["discount_label_bg"][$store_id];}
        if (isset($customisation_products["quick_status"][$store_id])) {$customisation_products["quick_status"] = $customisation_products["quick_status"][$store_id];}
        if (isset($customisation_products["discount_status"][$store_id])) {$customisation_products["discount_status"] = $customisation_products["discount_status"][$store_id];}
        if (isset($customisation_products["countdown_status"][$store_id])) {$customisation_products["countdown_status"] = $customisation_products["countdown_status"][$store_id];}
        if (isset($customisation_products["popup_small_status"][$store_id])) {$customisation_products["popup_small_status"] = $customisation_products["popup_small_status"][$store_id];}
        if (isset($customisation_products["thumbnails_position"][$store_id])) {$customisation_products["thumbnails_position"] = $customisation_products["thumbnails_position"][$store_id];}
        if (isset($customisation_products["tabs_position"][$store_id])) {$customisation_products["tabs_position"] = $customisation_products["tabs_position"][$store_id];}
        if (isset($customisation_products["related"][$store_id])) {$customisation_products["related"] = $customisation_products["related"][$store_id];}
        if (isset($customisation_products["product_page_images_sizes"][$store_id])) {$customisation_products["product_page_images_sizes"] = $customisation_products["product_page_images_sizes"][$store_id];}
        if (isset($customisation_products["cloudzoom_mode"][$store_id])) {$customisation_products["cloudzoom_mode"] = $customisation_products["cloudzoom_mode"][$store_id];}
        if (isset($customisation_products["product_page_button"][$store_id])) {$customisation_products["product_page_button"] = $customisation_products["product_page_button"][$store_id];}

    }

    if ($modules) : foreach ($modules as $module) : echo $module; endforeach; endif;
?>