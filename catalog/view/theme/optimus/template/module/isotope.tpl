<?php
    global $config;
    $settings = $config->get('isotope_module');

    $store_id = $config->get('config_store_id');

    if ($store_id == 0) {
        $customisation_slider = $config->get('customisation_slider');
    } else {
        $customisation_slider = $config->get('customisation_slider_store');
        if (isset($customisation_slider["slider_type"][$store_id])) {$customisation_slider["slider_type"] = $customisation_slider["slider_type"][$store_id];}
        if (isset($customisation_slider["sliders_isotope_status"][$store_id])) {$customisation_slider["sliders_isotope_status"] = $customisation_slider["sliders_isotope_status"][$store_id];}
        if (isset($customisation_slider["sliders_row_status"][$store_id])) {$customisation_slider["sliders_row_status"] = $customisation_slider["sliders_row_status"][$store_id];}
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


$slider_type = $customisation_slider['slider_type'];


?>
<?php if (!isset($customisation_slider['sliders_isotope_status']) || $customisation_slider['sliders_isotope_status'] != 0) : ?>
<?php if (!isset($slider_type) || $slider_type != 'isotope_sliders') { ?>

<!-- Isotope Products from categories -->
<?php
if (isset($products_category1) || isset($products_category2) || isset($products_category3) || isset($products_category4)) : ?>
<div class="container content slider-products">

    <div class="filters-by-category header-filter clearfix">
        <ul class="option-set" data-option-key="filter">
            <?php if (isset($products_category1)) : ?>
            <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_category1; ?>" class="selected"><?php echo $category_name1; ?></a></li>
            <?php endif; ?>

            <?php if (isset($products_category2)) : ?>
            <li>/</li>
            <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_category2; ?>"><?php echo $category_name2; ?></a></li>
            <?php endif; ?>

            <?php if (isset($products_category3)) : ?>
            <li>/</li>
            <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_category3; ?>"><?php echo $category_name3; ?></a></li>
            <?php endif; ?>

            <?php if (isset($products_category4)) : ?>
            <li>/</li>
            <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_category4; ?>"><?php echo $category_name4; ?></a></li>
            <?php endif; ?>

        </ul>
    </div>

    <!-- Products list -->
    <div class="row">
        <div class="products-list-isotope">
            <?php
            global $config;

            $width_settings = $width_category;
            $height_settings = $height_category;

            if (isset($products_category1)) :

            $products = $products_category1;
            $type_of_slider = $type_of_slider_category1;
            $limit = 1500;
            $quick_type = 'popup';
            $category = 1;

            include('catalog/view/theme/list_isotope.php');

            endif;

            if (isset($products_category2)) :

            $products = $products_category2;
            $type_of_slider = $type_of_slider_category2;
            $limit = 1500;
            $quick_type = 'popup';
            $category = 2;

            include('catalog/view/theme/list_isotope.php');

            endif;


            if (isset($products_category3)) :

            $products = $products_category3;
            $type_of_slider = $type_of_slider_category3;
            $limit = 1500;
            $quick_type = 'popup';
            $category = 3;

            include('catalog/view/theme/list_isotope.php');

            endif;

            if (isset($products_category4)) :

            $products = $type_of_slider_category4;
            $type_of_slider = $type_of_slider_category4;
            $limit = 1500;
            $quick_type = 'popup';
            $category = 4;

            include('catalog/view/theme/list_isotope.php');
            endif;


            ?>

        </div>
    </div>
    <!-- //Products list -->

</div>
<?php endif; ?>
<!-- end Isotope Products from categories -->

<?php } else { ?>

<!-- Isotope Products from Slider -->
<?php if ($products_latest || $products_bestseller || $products_popular || $products_special || $products_featured ) : ?>
<div class="filters-by-category clearfix">
    <div class="container">
        <div class="row">
            <div class="text-center">
                <ul class="option-set" data-option-key="filter">

                    <li><a href="#filter" data-option-value="*" class="selected"><?php echo $filter_title_all; ?></a></li>

                    <?php if ($products_latest) : ?>
                    <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_latest; ?>"><?php echo $filter_title_latest; ?></a></li>
                    <?php endif; ?>

                    <?php if ($products_bestseller) : ?>
                    <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_bestseller; ?>"><?php echo $filter_title_bestseller; ?></a></li>
                    <?php endif; ?>

                    <?php if ($products_popular) : ?>
                    <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_popular; ?>"><?php echo $filter_title_popular; ?></a></li>
                    <?php endif; ?>

                    <?php if ($products_special) : ?>
                    <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_special; ?>"><?php echo $filter_title_special; ?></a></li>
                    <?php endif; ?>


                    <?php if ($products_featured) : ?>
                    <li><a href="#filter" data-option-value=".category<?php echo $type_of_slider_featured; ?>"><?php echo $filter_title_featured; ?></a></li>
                    <?php endif; ?>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="container content slider-products">
    <div class="row">
        <div class="products-list-isotope">

<?php
        if ($products_latest) :
            $products = $products_latest;
            $type_of_slider = $type_of_slider_latest;
            $width_settings = $width_latest;
            $height_settings = $height_latest;
            include('catalog/view/theme/list_isotope.php');
        endif;

        if ($products_bestseller) :
            $products = $products_bestseller;
            $type_of_slider = $type_of_slider_bestseller;
            $width_settings = $width_bestseller;
            $height_settings = $height_bestseller;
            include('catalog/view/theme/list_isotope.php');
        endif;


        if ($products_popular) :
            $products = $products_popular;
            $type_of_slider = $type_of_slider_popular;
            $width_settings = $width_popular;
            $height_settings = $height_popular;
            include('catalog/view/theme/list_isotope.php');
        endif;

        if ($products_special) :
            $products = $products_special;
            $type_of_slider = $type_of_slider_special;
            $width_settings = $width_special;
            $height_settings = $height_special;
            include('catalog/view/theme/list_isotope.php');
        endif;

        if ($products_featured) :
            $products = $products_featured;
            $type_of_slider = $type_of_slider_featured;
            $width_settings = $width_featured;
            $height_settings = $height_featured;
            include('catalog/view/theme/list_isotope.php');
        endif;
?>

        </div>
    </div>
</div>
<?php endif; ?>
<!-- end Isotope Products from Slider -->

<?php } ?>
<?php endif; ?>



<!-- Sliders in row-->
<?php if (!isset($customisation_slider['sliders_row_status']) || $customisation_slider['sliders_row_status'] != 0) : ?>
<?php if ($products_latest || $products_bestseller || $products_popular || $products_special) : ?>


<div class="line-divider divider-xxs"></div>
<div class="grey-container-light">
    <section class="container content nopad-bottom hidden-xs">

    <div class="row add_after_quick_view_section">




        <?php

                if ($products_latest) :
                    switch ($order_latest) :
                        case 1:
                            $products1 = $products_latest;
                            $products_slider_type1 = (isset($customisation_slider['latest_type']) ? $customisation_slider['latest_type'] : 'vertical');
                            $quick_type1 = (isset($customisation_slider['latest_quick_type']) ? $customisation_slider['latest_quick_type'] : 'inline');
                            $slider_title1 = $filter_title_latest;

                            $width1 = (isset($width_latest) ? $width_latest : '126');
                            $height1 = (isset($height_latest) ? $height_latest : '153');

                            $columns1 = $columns_latest;
                            break;
                        case 2:
                            $products2 = $products_latest;
                            $products_slider_type2 = (isset($customisation_slider['latest_type']) ? $customisation_slider['latest_type'] : 'vertical');
                            $quick_type2 = (isset($customisation_slider['latest_quick_type']) ? $customisation_slider['latest_quick_type'] : 'inline');
                            $slider_title2 = $filter_title_latest;
                            $width2 = (isset($width_latest) ? $width_latest : '126');
                            $height2 = (isset($height_latest) ? $height_latest : '153');
                            $columns2 = $columns_latest;
                            break;
                        case 3:
                            $products3 = $products_latest;
                            $products_slider_type3 = (isset($customisation_slider['latest_type']) ? $customisation_slider['latest_type'] : 'vertical');
                            $quick_type3 = (isset($customisation_slider['latest_quick_type']) ? $customisation_slider['latest_quick_type'] : 'inline');
                            $slider_title3 = $filter_title_latest;
                            $width3 = (isset($width_latest) ? $width_latest : '126');
                            $height3 = (isset($height_latest) ? $height_latest : '153');
                            $columns3 = $columns_latest;
                            break;
                        case 4:
                            $products4 = $products_latest;
                            $products_slider_type4 = (isset($customisation_slider['latest_type']) ? $customisation_slider['latest_type'] : 'vertical');
                            $quick_type4 = (isset($customisation_slider['latest_quick_type']) ? $customisation_slider['latest_quick_type'] : 'inline');
                            $slider_title4 = $filter_title_latest;
                            $width4 = (isset($width_latest) ? $width_latest : '126');
                            $height4 = (isset($height_latest) ? $height_latest : '153');
                            $columns4 = $columns_latest;
                            break;
                        case 5:
                            $products5 = $products_latest;
                            $products_slider_type5 = (isset($customisation_slider['latest_type']) ? $customisation_slider['latest_type'] : 'vertical');
                            $quick_type5 = (isset($customisation_slider['latest_quick_type']) ? $customisation_slider['latest_quick_type'] : 'inline');
                            $slider_title5 = $filter_title_latest;
                            $width5 = (isset($width_latest) ? $width_latest : '126');
                            $height5 = (isset($height_latest) ? $height_latest : '153');
                            $columns5 = $columns_latest;
                            break;
                    endswitch;
                endif;

                if ($products_bestseller) :
                    switch ($order_bestseller) :
                        case 1:
                            $products1 = $products_bestseller;
                            $products_slider_type1 = (isset($customisation_slider['bestseller_type']) ? $customisation_slider['bestseller_type'] : 'horizontal');
                            $quick_type1 = (isset($customisation_slider['bestseller_quick_type']) ? $customisation_slider['bestseller_quick_type'] : 'popup');
                            $slider_title1 = $filter_title_bestseller;
                            $scroll1 = 'autoscroll';


                            $width1 = (isset($width_bestseller) ? $width_bestseller : '126');
                            $height1 = (isset($height_bestseller) ? $height_bestseller : '153');

                            $columns1 = $columns_bestseller;
                            break;
                        case 2:
                            $products2 = $products_bestseller;
                            $products_slider_type2 = (isset($customisation_slider['bestseller_type']) ? $customisation_slider['bestseller_type'] : 'horizontal');
                            $quick_type2 = (isset($customisation_slider['bestseller_quick_type']) ? $customisation_slider['bestseller_quick_type'] : 'popup');
                            $slider_title2 = $filter_title_bestseller;
                            $width2 = (isset($width_bestseller) ? $width_bestseller : '126');
                            $height2 = (isset($height_bestseller) ? $height_bestseller : '153');
                            $columns2 = $columns_bestseller;
                            $scroll2 = 'autoscroll';

                            break;
                        case 3:
                            $products3 = $products_bestseller;
                            $products_slider_type3 = (isset($customisation_slider['bestseller_type']) ? $customisation_slider['bestseller_type'] : 'horizontal');
                            $quick_type3 = (isset($customisation_slider['bestseller_quick_type']) ? $customisation_slider['bestseller_quick_type'] : 'popup');
                            $slider_title3 = $filter_title_bestseller;
                            $width3 = (isset($width_bestseller) ? $width_bestseller : '126');
                            $height3 = (isset($height_bestseller) ? $height_bestseller : '153');
                            $columns3 = $columns_bestseller;
                            $scroll3 = 'autoscroll';
                            break;
                        case 4:
                            $products4 = $products_bestseller;
                            $products_slider_type4 = (isset($customisation_slider['bestseller_type']) ? $customisation_slider['bestseller_type'] : 'horizontal');
                            $quick_type4 = (isset($customisation_slider['bestseller_quick_type']) ? $customisation_slider['bestseller_quick_type'] : 'popup');
                            $slider_title4 = $filter_title_bestseller;
                            $width4 = (isset($width_bestseller) ? $width_bestseller : '126');
                            $height4 = (isset($height_bestseller) ? $height_bestseller : '153');
                            $columns4 = $columns_bestseller;
                            $scroll4 = 'autoscroll';
                            break;
                        case 5:
                            $products5 = $products_bestseller;
                            $products_slider_type5 = (isset($customisation_slider['bestseller_type']) ? $customisation_slider['bestseller_type'] : 'horizontal');
                            $quick_type5 = (isset($customisation_slider['bestseller_quick_type']) ? $customisation_slider['bestseller_quick_type'] : 'popup');
                            $slider_title5 = $filter_title_bestseller;
                            $width5 = (isset($width_bestseller) ? $width_bestseller : '126');
                            $height5 = (isset($height_bestseller) ? $height_bestseller : '153');
                            $columns5 = $columns_bestseller;
                            $scroll5 = 'autoscroll';
                            break;
                    endswitch;
                endif;

                if ($products_popular) :
                    switch ($order_popular) :
                        case 1:
                            $products1 = $products_popular;
                            $products_slider_type1 = (isset($customisation_slider['popular_type']) ? $customisation_slider['popular_type'] : 'horizontal');
                            $quick_type1 = (isset($customisation_slider['popular_quick_type']) ? $customisation_slider['popular_quick_type'] : 'popup');
                            $slider_title1 = $filter_title_popular;
                            $width1 = (isset($width_popular) ? $width_popular : '350');
                            $height1 = (isset($height_popular) ? $height_popular : '450');
                            $columns1 = $columns_popular;
                            break;
                        case 2:
                            $products2 = $products_popular;
                            $products_slider_type2 = (isset($customisation_slider['popular_type']) ? $customisation_slider['popular_type'] : 'horizontal');
                            $quick_type2 = (isset($customisation_slider['popular_quick_type']) ? $customisation_slider['popular_quick_type'] : 'popup');
                            $slider_title2 = $filter_title_popular;
                            $width2 = (isset($width_popular) ? $width_popular : '350');
                            $height2 = (isset($height_popular) ? $height_popular : '450');
                            $columns2 = $columns_popular;
                            break;
                        case 3:
                            $products3 = $products_popular;
                            $products_slider_type3 = (isset($customisation_slider['popular_type']) ? $customisation_slider['popular_type'] : 'horizontal');
                            $quick_type3 = (isset($customisation_slider['popular_quick_type']) ? $customisation_slider['popular_quick_type'] : 'popup');
                            $slider_title3 = $filter_title_popular;
                            $width3 = (isset($width_popular) ? $width_popular : '350');
                            $height3 = (isset($height_popular) ? $height_popular : '450');
                            $columns3 = $columns_popular;
                            break;
                        case 4:
                            $products4 = $products_popular;
                            $products_slider_type4 = (isset($customisation_slider['popular_type']) ? $customisation_slider['popular_type'] : 'horizontal');
                            $quick_type4 = (isset($customisation_slider['popular_quick_type']) ? $customisation_slider['popular_quick_type'] : 'popup');
                            $slider_title4 = $filter_title_popular;
                            $width4 = (isset($width_popular) ? $width_popular : '350');
                            $height4 = (isset($height_popular) ? $height_popular : '450');
                            $columns4 = $columns_popular;
                            break;
                        case 5:
                            $products5 = $products_popular;
                            $products_slider_type5 = (isset($customisation_slider['popular_type']) ? $customisation_slider['popular_type'] : 'horizontal');
                            $quick_type5 = (isset($customisation_slider['popular_quick_type']) ? $customisation_slider['popular_quick_type'] : 'popup');
                            $slider_title5 = $filter_title_popular;
                            $width5 = (isset($width_popular) ? $width_popular : '350');
                            $height5 = (isset($height_popular) ? $height_popular : '450');
                            $columns5 = $columns_popular;
                            break;
                    endswitch;
                endif;

                if ($products_special) :
                    switch ($order_special) :
                        case 1:
                            $products1 = $products_special;
                            $products_slider_type1 = (isset($customisation_slider['special_type']) ? $customisation_slider['special_type'] : 'vertical');
                            $quick_type1 = (isset($customisation_slider['special_quick_type']) ? $customisation_slider['special_quick_type'] : 'popup');
                            $slider_title1 = $filter_title_special;

                            $width1 = (isset($width_special) ? $width_special : '350');
                            $height1 = (isset($height_special) ? $height_special : '450');

                            $columns1 = $columns_special;
                            break;
                        case 2:
                            $products2 = $products_special;
                            $products_slider_type2 = (isset($customisation_slider['special_type']) ? $customisation_slider['special_type'] : 'vertical');
                            $quick_type2 = (isset($customisation_slider['special_quick_type']) ? $customisation_slider['special_quick_type'] : 'popup');
                            $slider_title2 = $filter_title_special;
                            $width2 = (isset($width_special) ? $width_special : '350');
                            $height2 = (isset($height_special) ? $height_special : '450');
                            $columns2 = $columns_special;
                            break;
                        case 3:
                            $products3 = $products_special;
                            $products_slider_type3 = (isset($customisation_slider['special_type']) ? $customisation_slider['special_type'] : 'vertical');
                            $quick_type3 = (isset($customisation_slider['special_quick_type']) ? $customisation_slider['special_quick_type'] : 'popup');
                            $slider_title3 = $filter_title_special;
                            $width3 = (isset($width_special) ? $width_special : '350');
                            $height3 = (isset($height_special) ? $height_special : '450');
                            $columns3 = $columns_special;
                            break;
                        case 4:
                            $products4 = $products_special;
                            $products_slider_type4 = (isset($customisation_slider['special_type']) ? $customisation_slider['special_type'] : 'vertical');
                            $quick_type4 = (isset($customisation_slider['special_quick_type']) ? $customisation_slider['special_quick_type'] : 'popup');
                            $slider_title4 = $filter_title_special;
                            $width4 = (isset($width_special) ? $width_special : '350');
                            $height4 = (isset($height_special) ? $height_special : '450');
                            $columns4 = $columns_special;
                            break;
                        case 5:
                            $products5 = $products_special;
                            $products_slider_type5 = (isset($customisation_slider['special_type']) ? $customisation_slider['special_type'] : 'vertical');
                            $quick_type5 = (isset($customisation_slider['special_quick_type']) ? $customisation_slider['special_quick_type'] : 'popup');
                            $slider_title5 = $filter_title_special;
                            $width5 = (isset($width_special) ? $width_special : '350');
                            $height5 = (isset($height_special) ? $height_special : '450');
                            $columns5 = $columns_special;
                            break;
                    endswitch;
                endif;


               if ($products_featured) :
                    switch ($order_featured) :
                        case 1:
                            $products1 = $products_featured;
                            $products_slider_type1 = (isset($customisation_slider['featured_type']) ? $customisation_slider['featured_type'] : 'vertical');
                            $quick_type1 = (isset($customisation_slider['featured_quick_type']) ? $customisation_slider['featured_quick_type'] : 'popup');
                            $slider_title1 = $filter_title_featured;
                            $width1 = (isset($width_featured) ? $width_featured : '350');
                            $height1 = (isset($height_featured) ? $height_featured : '450');
                            $columns1 = $columns_featured;
                            break;
                        case 2:
                            $products2 = $products_featured;
                            $products_slider_type2 = (isset($customisation_slider['featured_type']) ? $customisation_slider['featured_type'] : 'vertical');
                            $quick_type2 = (isset($customisation_slider['featured_quick_type']) ? $customisation_slider['featured_quick_type'] : 'popup');
                            $slider_title2 = $filter_title_featured;
                            $width2 = (isset($width_featured) ? $width_featured : '350');
                            $height2 = (isset($height_featured) ? $height_featured : '450');
                            $columns2 = $columns_featured;
                            break;
                        case 3:
                            $products3 = $products_featured;
                            $products_slider_type3 = (isset($customisation_slider['featured_type']) ? $customisation_slider['featured_type'] : 'vertical');
                            $quick_type3 = (isset($customisation_slider['featured_quick_type']) ? $customisation_slider['featured_quick_type'] : 'popup');
                            $slider_title3 = $filter_title_featured;
                            $width3 = (isset($width_featured) ? $width_featured : '350');
                            $height3 = (isset($height_featured) ? $height_featured : '450');
                            $columns3 = $columns_featured;
                            break;
                        case 4:
                            $products4 = $products_featured;
                            $products_slider_type4 = (isset($customisation_slider['featured_type']) ? $customisation_slider['featured_type'] : 'vertical');
                            $quick_type4 = (isset($customisation_slider['featured_quick_type']) ? $customisation_slider['featured_quick_type'] : 'popup');
                            $slider_title4 = $filter_title_featured;
                            $width4 = (isset($width_featured) ? $width_featured : '350');
                            $height4 = (isset($height_featured) ? $height_featured : '450');
                            $columns4 = $columns_featured;
                            break;
                        case 5:
                            $products5 = $products_featured;
                            $products_slider_type5 = (isset($customisation_slider['featured_type']) ? $customisation_slider['featured_type'] : 'vertical');
                            $quick_type5 = (isset($customisation_slider['featured_quick_type']) ? $customisation_slider['featured_quick_type'] : 'popup');
                            $slider_title5 = $filter_title_featured;
                            $width5 = (isset($width_featured) ? $width_featured : '350');
                            $height5 = (isset($height_featured) ? $height_featured : '450');
                            $columns5 = $columns_featured;
                            break;
                    endswitch;
               endif;

        ?>

        <!--slider 1-->
        <?php



                            if (isset($products1)) :
                                    if ($products_slider_type1 == 'horizontal') {
                                        $quick_type = $quick_type1;
                                        $columns = $columns1;
                                    }
                                    $slider_title = $slider_title1;
                                    $width_settings = $width1;
                                    $height_settings = $height1;
                                    $products = $products1;
                                    $type_of_slider = 1;
                                    $columns = $columns1;

                                    $scroll = (isset($scroll1) ? 'autoscroll' : '');



                                    include('catalog/view/theme/default/sliders_row/'.$products_slider_type1.'.php');
                            endif;

                            if (isset($products2)) :
                                    if ($products_slider_type2 == 'horizontal') {
                                        $quick_type = $quick_type2;
                                        $columns = $columns2;
                                    }
                                    $slider_title = $slider_title2;
                                    $width_settings = $width2;
                                    $height_settings = $height2;
                                    $products = $products2;
                                    $type_of_slider = 2;
                                    $columns = $columns2;
                                    $scroll = (isset($scroll2) ? 'autoscroll' : '');
                                    include('catalog/view/theme/default/sliders_row/'.$products_slider_type2.'.php');
                            endif;

                            if (isset($products3)) :
                                    if ($products_slider_type3 == 'horizontal') {
                                        $quick_type = $quick_type3;
                                        $columns = $columns3;
                                    }
                                    $slider_title = $slider_title3;
                                    $width_settings = $width3;
                                    $height_settings = $height3;
                                    $products = $products3;
                                    $type_of_slider = 3;
                                    $scroll = (isset($scroll3) ? 'autoscroll' : '');
                                    include('catalog/view/theme/default/sliders_row/'.$products_slider_type3.'.php');
                            endif;

                            if (isset($products4)) :
                                    if ($products_slider_type4 == 'horizontal') {
                                        $quick_type = $quick_type4;
                                        $columns = $columns4;
                                    }
                                    $slider_title = $slider_title4;
                                    $width_settings = $width4;
                                    $height_settings = $height4;
                                    $products = $products4;
                                    $type_of_slider = 4;
                                    $scroll = (isset($scroll4) ? 'autoscroll' : '');
                                    include('catalog/view/theme/default/sliders_row/'.$products_slider_type4.'.php');
                            endif;

                            if (isset($products5)) :
                                    if ($products_slider_type5 == 'horizontal') {
                                        $columns = $columns5;
                                        $quick_type = $quick_type5;
                                    }
                                    $slider_title = $slider_title5;
                                    $width_settings = $width5;
                                    $height_settings = $height5;
                                    $products = $products5;
                                    $type_of_slider = 5;
                                    include('catalog/view/theme/default/sliders_row/'.$products_slider_type5.'.php');
                            endif;
                         ?>
        <!--//slider 4-->





        </div>


    <?php
    if (isset($quick_type1) && $quick_type1 == 'inline'
    || isset($quick_type2) && $quick_type2 == 'inline'
    || isset($quick_type3) && $quick_type3 == 'inline'
    || isset($quick_type4) && $quick_type4 == 'inline'
    || isset($quick_type5) && $quick_type5 == 'inline') :

    ?>
<!--
    <div class="product-view-ajax-container"></div>
    <div class="product-view-ajax">
        <div class="ajax-loader progress progress-striped active">
            <div class="progress-bar progress-bar-danger" role="progressbar"></div>
        </div>
        <div class="layar"></div>
        <div class="product-view-container"></div>
    </div>
  -->
<?php endif; ?>


    </section>

</div>

<?php endif; ?>
<?php endif; ?>
<!-- end Sliders in row-->


