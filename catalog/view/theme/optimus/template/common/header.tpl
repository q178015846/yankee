<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->

<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!--default css-->
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!--end default css-->

<?php
    global $config, $loader, $registry, $db, $session;

    $store_id = $config->get('config_store_id');
    $lang = $config->get('config_language_id');

    $loader->model('custom/general');
    $model = $registry->get('model_custom_general');
    $layout_id = $model->getCurrentLayout();

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
    $customisation_colors = $config->get('customisation_colors');
    $customisation_products = $config->get('customisation_products');
    $customisation_topslider = $config->get('customisation_topslider');
} else {
    $customisation_general_default = $config->get('customisation_general');

    $customisation_general = $config->get('customisation_general_store');
    $customisation_colors = $config->get('customisation_colors_store');
    $customisation_products = $config->get('customisation_products_store');
    $customisation_topslider = $config->get('customisation_topslider_store');

	
/* GENERAL */
if (isset($customisation_general["css_file"][$store_id])) {$customisation_general["css_file"] = $customisation_general["css_file"][$store_id];}
if (isset($customisation_general["homepage_mode"][$store_id])) {$customisation_general["homepage_mode"] = $customisation_general["homepage_mode"][$store_id];}
if (isset($customisation_general["bg_image_status"][$store_id])) {$customisation_general["bg_image_status"] = $customisation_general["bg_image_status"][$store_id];}
if (isset($customisation_general["bgall"][$store_id])) {$customisation_general["bgall"] = $customisation_general["bgall"][$store_id];}
if (isset($customisation_general["headertopline"][$store_id])) {$customisation_general["headertopline"] = $customisation_general["headertopline"][$store_id];}
if (isset($customisation_general["quickpanel"][$store_id])) {$customisation_general["quickpanel"] = $customisation_general["quickpanel"][$store_id];}
if (isset($customisation_general["header_account"][$store_id])) {$customisation_general["header_account"] = $customisation_general["header_account"][$store_id];}
if (isset($customisation_general["footerpopup"][$store_id])) {$customisation_general["footerpopup"] = $customisation_general["footerpopup"][$store_id];}
if (isset($customisation_general["headerspy"][$store_id])) {$customisation_general["headerspy"] = $customisation_general["headerspy"][$store_id];}
if (isset($customisation_general["spy_type"][$store_id])) {$customisation_general["spy_type"] = $customisation_general["spy_type"][$store_id];}
if (isset($customisation_general[$lang]["welcome_message"][$store_id])) {$customisation_general[$lang]["welcome_message"] = $customisation_general[$lang]["welcome_message"][$store_id];}
if (isset($customisation_general[$lang]["mobile_menu_title"][$store_id])) {$customisation_general[$lang]["mobile_menu_title"] = $customisation_general[$lang]["mobile_menu_title"][$store_id];}
if (isset($customisation_general[$lang]["customitem_item_title1"][$store_id])) {$customisation_general[$lang]["customitem_item_title1"] = $customisation_general[$lang]["customitem_item_title1"][$store_id];}
if (isset($customisation_general[$lang]["blog_link_title"][$store_id])) {$customisation_general[$lang]["blog_link_title"] = $customisation_general[$lang]["blog_link_title"][$store_id];}
if (isset($customisation_general[$lang]["pages_link_title"][$store_id])) {$customisation_general[$lang]["pages_link_title"] = $customisation_general[$lang]["pages_link_title"][$store_id];}
if (isset($customisation_general[$lang]["contact_map_title"][$store_id])) {$customisation_general[$lang]["contact_map_title"] = $customisation_general[$lang]["contact_map_title"][$store_id];}
if (isset($customisation_general[$lang]["footer_socials_title"][$store_id])) {$customisation_general[$lang]["footer_socials_title"] = $customisation_general[$lang]["footer_socials_title"][$store_id];}
if (isset($customisation_general[$lang]["custom_html_title"][$store_id])) {$customisation_general[$lang]["custom_html_title"] = $customisation_general[$lang]["custom_html_title"][$store_id];}
if (isset($customisation_general[$lang]["customblock_html"][$store_id])) {$customisation_general[$lang]["customblock_html"] = $customisation_general[$lang]["customblock_html"][$store_id];}
if (isset($customisation_general["header_type"][$store_id])) {$customisation_general["header_type"] = $customisation_general["header_type"][$store_id];}
if (isset($customisation_general["menu_type"][$store_id])) {$customisation_general["menu_type"] = $customisation_general["menu_type"][$store_id];}
if (isset($customisation_general["homebutton"][$store_id])) {$customisation_general["homebutton"] = $customisation_general["homebutton"][$store_id];}
if (isset($customisation_general["customitem_item_url1"][$store_id])) {$customisation_general["customitem_item_url1"] = $customisation_general["customitem_item_url1"][$store_id];}
if (isset($customisation_general["blog_link_status"][$store_id])) {$customisation_general["blog_link_status"] = $customisation_general["blog_link_status"][$store_id];}
if (isset($customisation_general["blog_link_url"][$store_id])) {$customisation_general["blog_link_url"] = $customisation_general["blog_link_url"][$store_id];}
if (isset($customisation_general["pages_link_url"][$store_id])) {$customisation_general["pages_link_url"] = $customisation_general["pages_link_url"][$store_id];}
if (isset($customisation_general["pages_status"][$store_id])) {$customisation_general["pages_status"] = $customisation_general["pages_status"][$store_id];}
if (isset($customisation_general["contact_map_status"][$store_id])) {$customisation_general["contact_map_status"] = $customisation_general["contact_map_status"][$store_id];}
if (isset($customisation_general["additional_page_id"][$store_id])) {$customisation_general["additional_page_id"] = $customisation_general["additional_page_id"][$store_id];}
if (isset($customisation_general["additional_page_checkout_status"][$store_id])) {$customisation_general["additional_page_checkout_status"] = $customisation_general["additional_page_checkout_status"][$store_id];}
if (isset($customisation_general["additional_page_account_status"][$store_id])) {$customisation_general["additional_page_account_status"] = $customisation_general["additional_page_account_status"][$store_id];}
if (isset($customisation_general["twitter"][$store_id])) {$customisation_general["twitter"] = $customisation_general["twitter"][$store_id];}
if (isset($customisation_general["facebook"][$store_id])) {$customisation_general["facebook"] = $customisation_general["facebook"][$store_id];}
if (isset($customisation_general["video_code"][$store_id])) {$customisation_general["video_code"] = $customisation_general["video_code"][$store_id];}
if (isset($customisation_general["rightimg"][$store_id])) {$customisation_general["rightimg"] = $customisation_general["rightimg"][$store_id];}
if (isset($customisation_general["delimeter"][$store_id])) {$customisation_general["delimeter"] = $customisation_general["delimeter"][$store_id];}

/* colors */
if (isset($customisation_colors["layout_skin"][$store_id])) {$customisation_colors["layout_skin"] = $customisation_colors["layout_skin"][$store_id];}
if (isset($customisation_colors["general_bgcolor"][$store_id])) {$customisation_colors["general_bgcolor"] = $customisation_colors["general_bgcolor"][$store_id];}
if (isset($customisation_colors["contentbg"][$store_id])) {$customisation_colors["contentbg"] = $customisation_colors["contentbg"][$store_id];}
if (isset($customisation_colors["content_bg_mode"][$store_id])) {$customisation_colors["content_bg_mode"] = $customisation_colors["content_bg_mode"][$store_id];}
if (isset($customisation_colors["general_themecolor"][$store_id])) {$customisation_colors["general_themecolor"] = $customisation_colors["general_themecolor"][$store_id];}
if (isset($customisation_colors["general_input"][$store_id])) {$customisation_colors["general_input"] = $customisation_colors["general_input"][$store_id];}
if (isset($customisation_colors["general_text"][$store_id])) {$customisation_colors["general_text"] = $customisation_colors["general_text"][$store_id];}
if (isset($customisation_colors["general_link"][$store_id])) {$customisation_colors["general_link"] = $customisation_colors["general_link"][$store_id];}
if (isset($customisation_colors["general_linkhover"][$store_id])) {$customisation_colors["general_linkhover"] = $customisation_colors["general_linkhover"][$store_id];}
if (isset($customisation_colors["captions_font"][$store_id])) {$customisation_colors["captions_font"] = $customisation_colors["captions_font"][$store_id];}
if (isset($customisation_colors["captions_text"][$store_id])) {$customisation_colors["captions_text"] = $customisation_colors["captions_text"][$store_id];}
if (isset($customisation_colors["topline_bgcolor"][$store_id])) {$customisation_colors["topline_bgcolor"] = $customisation_colors["topline_bgcolor"][$store_id];}
if (isset($customisation_colors["topline_shadow"][$store_id])) {$customisation_colors["topline_shadow"] = $customisation_colors["topline_shadow"][$store_id];}
if (isset($customisation_colors["topline_phonecolor"][$store_id])) {$customisation_colors["topline_phonecolor"] = $customisation_colors["topline_phonecolor"][$store_id];}
if (isset($customisation_colors["dd_ink"][$store_id])) {$customisation_colors["dd_ink"] = $customisation_colors["dd_ink"][$store_id];}
if (isset($customisation_colors["dd_linkhover"][$store_id])) {$customisation_colors["dd_linkhover"] = $customisation_colors["dd_linkhover"][$store_id];}
if (isset($customisation_colors["dd_bgcolor"][$store_id])) {$customisation_colors["dd_bgcolor"] = $customisation_colors["dd_bgcolor"][$store_id];}
if (isset($customisation_colors["dd_border"][$store_id])) {$customisation_colors["dd_border"] = $customisation_colors["dd_border"][$store_id];}
if (isset($customisation_colors["headernav_text"][$store_id])) {$customisation_colors["headernav_text"] = $customisation_colors["headernav_text"][$store_id];}
if (isset($customisation_colors["headernav_linkhover"][$store_id])) {$customisation_colors["headernav_linkhover"] = $customisation_colors["headernav_linkhover"][$store_id];}
if (isset($customisation_colors["headernav_link"][$store_id])) {$customisation_colors["headernav_link"] = $customisation_colors["headernav_link"][$store_id];}
if (isset($customisation_colors["top_menu_bgcolor"][$store_id])) {$customisation_colors["top_menu_bgcolor"] = $customisation_colors["top_menu_bgcolor"][$store_id];}
if (isset($customisation_colors["headernav_bgcolor"][$store_id])) {$customisation_colors["headernav_bgcolor"] = $customisation_colors["headernav_bgcolor"][$store_id];}
if (isset($customisation_colors["content_border_color"][$store_id])) {$customisation_colors["content_border_color"] = $customisation_colors["content_border_color"][$store_id];}
if (isset($customisation_colors["product_border"][$store_id])) {$customisation_colors["product_border"] = $customisation_colors["product_border"][$store_id];}
if (isset($customisation_colors["product_shadow"][$store_id])) {$customisation_colors["product_shadow"] = $customisation_colors["product_shadow"][$store_id];}
if (isset($customisation_colors["footerinfo_text"][$store_id])) {$customisation_colors["footerinfo_text"] = $customisation_colors["footerinfo_text"][$store_id];}
if (isset($customisation_colors["footerinfo_link"][$store_id])) {$customisation_colors["footerinfo_link"] = $customisation_colors["footerinfo_link"][$store_id];}
if (isset($customisation_colors["footerinfo_captions"][$store_id])) {$customisation_colors["footerinfo_captions"] = $customisation_colors["footerinfo_captions"][$store_id];}
if (isset($customisation_colors["footerinfo_bgcolor"][$store_id])) {$customisation_colors["footerinfo_bgcolor"] = $customisation_colors["footerinfo_bgcolor"][$store_id];}
if (isset($customisation_colors["footer_text"][$store_id])) {$customisation_colors["footer_text"] = $customisation_colors["footer_text"][$store_id];}
if (isset($customisation_colors["footer_link"][$store_id])) {$customisation_colors["footer_link"] = $customisation_colors["footer_link"][$store_id];}
if (isset($customisation_colors["footer_link_hover"][$store_id])) {$customisation_colors["footer_link_hover"] = $customisation_colors["footer_link_hover"][$store_id];}
if (isset($customisation_colors["footer_bgcolor"][$store_id])) {$customisation_colors["footer_bgcolor"] = $customisation_colors["footer_bgcolor"][$store_id];}
if (isset($customisation_colors["footerpopup_captions"][$store_id])) {$customisation_colors["footerpopup_captions"] = $customisation_colors["footerpopup_captions"][$store_id];}
if (isset($customisation_colors["footerpopup_link"][$store_id])) {$customisation_colors["footerpopup_link"] = $customisation_colors["footerpopup_link"][$store_id];}
if (isset($customisation_colors["footerpopup_linkhover"][$store_id])) {$customisation_colors["footerpopup_linkhover"] = $customisation_colors["footerpopup_linkhover"][$store_id];}
if (isset($customisation_colors["footerpopup_bgcolor"][$store_id])) {$customisation_colors["footerpopup_bgcolor"] = $customisation_colors["footerpopup_bgcolor"][$store_id];}
if (isset($customisation_colors["price_font"][$store_id])) {$customisation_colors["price_font"] = $customisation_colors["price_font"][$store_id];}
if (isset($customisation_colors["price_regular"][$store_id])) {$customisation_colors["price_regular"] = $customisation_colors["price_regular"][$store_id];}
if (isset($customisation_colors["price_new"][$store_id])) {$customisation_colors["price_new"] = $customisation_colors["price_new"][$store_id];}
if (isset($customisation_colors["price_old"][$store_id])) {$customisation_colors["price_old"] = $customisation_colors["price_old"][$store_id];}

/* colors */

/* products */
if (isset($customisation_products["product_catalog_mode"][$store_id])) {$customisation_products["product_catalog_mode"] = $customisation_products["product_catalog_mode"][$store_id];}
if (isset($customisation_products["sale_label_bg"][$store_id])) {$customisation_products["sale_label_bg"] = $customisation_products["sale_label_bg"][$store_id];}
if (isset($customisation_products["new_label_bg"][$store_id])) {$customisation_products["new_label_bg"] = $customisation_products["new_label_bg"][$store_id];}
if (isset($customisation_products["discount_label_bg"][$store_id])) {$customisation_products["discount_label_bg"] = $customisation_products["discount_label_bg"][$store_id];}
/* end products */

/* top slider */
if (isset($customisation_topslider["rev_full_status"][$store_id])) {$customisation_topslider["rev_full_status"] = $customisation_topslider["rev_full_status"][$store_id];}
if (isset($customisation_topslider[$lang]["rev_full_html"][$store_id])) {$customisation_topslider[$lang]["rev_full_html"] = $customisation_topslider[$lang]["rev_full_html"][$store_id];}
/* end top slider */
}


if (isset($customisation_general['header_type'])){
        $header_type = $customisation_general['header_type'];
    } else {
        $header_type = 4;
    }

    if (isset($customisation_general['menu_type'])){
        $menu_type = $customisation_general['menu_type'];
    } else {
        $menu_type = 1;
    }

    function Hex2RGB($color){$color=str_replace("#","",$color);if(strlen($color)!=6){return array(0,0,0);}$rgb=array();for($x=0;$x<3;$x++){$rgb[$x]=hexdec(substr($color,(2*$x),2));}return $rgb;}

?>


<?php if (isset($customisation_colors["captions_font"]) && $customisation_colors["captions_font"] !== '-') : ?>
<link href='//fonts.googleapis.com/css?family=<?php echo str_replace(' ', '+', $customisation_colors["captions_font"]); ?>:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<?php endif; ?>


<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/common_styles.css" rel="stylesheet">

<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template_rtl.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template.css" rel="stylesheet">
<?php } ?>


<!--layouts css-->
    <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'electronic') : ?>
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-electronics_rtl.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-electronics.css" rel="stylesheet">
<?php } ?>
    <?php endif; ?>

    <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'food') : ?>
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-food_rtl.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-food.css" rel="stylesheet">
<?php } ?>
    <?php endif; ?>

    <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'kids') : ?>
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-kids_rtl.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-kids.css" rel="stylesheet">
<?php } ?>
    <?php endif; ?>

<?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'corporative') : ?>
<?php if ($direction == 'rtl') { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-corporative_rtl.css" rel="stylesheet">
<?php } else { ?>
<link href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/optimus-template-corporative.css" rel="stylesheet">
<?php } ?>
<?php endif; ?>




<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/html5shiv.js"></script>
    <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/is/respond.min.js"></script>
<![endif]-->



<?php echo $google_analytics; ?>


<!-- changing options from admin panel-->
<style type="text/css">
    <?php
        if (isset($customisation_general["bg_image_status"]) && $customisation_general["bg_image_status"] == 1) :
            $customisation_bgall = $config->get('customisation_bgall');
            if ((isset($customisation_bgall) && $customisation_bgall !== '') || (isset($customisation_general["bgall"]) && $customisation_general["bgall"] != '')):
    ?>
                body{
                   background:url("image/<?php echo ($store_id != 0 && isset($customisation_general["bgall"]) && isset($customisation_general["bg_image_status"]) && $customisation_general["bg_image_status"] == 1 && isset($customisation_general["bgall"]) && $customisation_general["bgall"] != '' ? 'catalog/'.$customisation_general["bgall"] : $customisation_bgall); ?>") fixed no-repeat center 0;
                }
    <?php
             endif;
         endif;
    ?>
/*colors: general*//*colors: general*//*colors: general*//*colors: general*/


                            /*colors: general*/
    <?php if (!empty($customisation_colors["general_themecolor"])): ?>
                        .twitter-widget a,
                        .product-view .close-view:hover,
                        .rating,
                        .slider-controls a:hover,
                        .product-controls-list .cart,
                        .blog-widget-small .rating, .products-widget .rating,
                        .navbar-main-submenu .button-up:hover, .navbar-main-submenu .exclusive .icon,
                        .flex-direction-nav a:hover, .owl-slider-outer .owl-slider-next:hover, .owl-slider-outer .owl-slider-prev:hover, .owl-theme .owl-controls .owl-buttons div:hover,
                        .small-previews a:hover,
                        .dropcap.color,
                        .styled-list li:before, .styled-list ul.circle li:before,
                        .color, .color:hover,
                        .countdown-amount,
                        .infobox .inside :before,
                        .comment a,
                        .carouFredSel .carouFredSel-controls .carouFredSel-buttons a:hover,
                        .owl-slider-outer .owl-slider-next:hover, .owl-slider-outer .owl-slider-prev:hover, .owl-theme .owl-controls .owl-buttons div:hover,
                        .main-slider .owl-slider-outer .owl-slider-next:hover, .main-slider .owl-slider-outer .owl-slider-prev:hover,
                        .main-slider .owl-theme .owl-controls .owl-buttons div:hover,
                        .services-block-dark a:hover .icon span,
                        .twitter-widget ul li:before,
                        .filters-panel .view-mode a.active,
                        .filters-panel .view-mode a:hover,
                        .btn-mega:hover,
                        .btn-primary.active,
                        .btn-primary:active,
                        .btn-primary:focus,
                        .btn-primary:hover,
                        .open .dropdown-toggle.btn-primary{
        color: <?php echo $customisation_colors["general_themecolor"]; ?> !important;
    }
    <?php endif; ?>

    <?php if (!empty($customisation_colors["general_themecolor"])): ?>
    .btn-mega,.btn-mega.btn-inverse:hover,.label-mega,
    .services-block-box .full-text, .services-block-box .icon, .services-block-box .title,
    .member-info .contact-icon:hover,.pagination-main li a:hover, .pagination-main li.active a,
    .tags-list li a:hover,.accordion-faq .panel-heading a,
    .filters-by-category li a.selected,.icon-circle-sm.active, .icon-circle-xs.active, .icon-circle.active,
    .price-table.active .price-table-price,.flex-control-paging li a.flex-active, .flex-control-paging li a:hover,
    .view-back span.zoom-view:hover,.navbar-switcher{
       background: <?php echo $customisation_colors["general_themecolor"]; ?> !important;
    }
    <?php endif; ?>

    <?php if (!empty($customisation_colors["general_themecolor"])): ?>
    .dropcap.dark,.color_mark,.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover,
    .nav-tabs>li>a:hover,
    .btn-danger, .btn-primary, .btn-info{
       background-color:<?php echo $customisation_colors["general_themecolor"]; ?> !important;
    }
    <?php endif; ?>

    <?php if (!empty($customisation_colors["general_themecolor"])): ?>
    .navbar-main-menu .item .btn-main, .sf-menu>li, .sf-menu>li:hover,
    .navbar-main-menu .active .btn-main, .navbar-main-menu .with-sub .btn-main:hover,
    .btn-mega.btn-inverse, .btn-mega:hover,.btn-mega.btn-inverse:hover,
    .services-block-box .item,.member-info .contact-icon:hover,.pagination-main li a:hover, .pagination-main li.active a,
    .tags-list li a:hover,
    .product-description .product-options .icon.selected,
    .filters-by-category li a.selected, .filters-by-category li a:hover,
    .countdown_inner,
    .blockquote, .testimonials,
    .price-table.active, .price-table.active .price-table-price, .price-table.active .price-table-title,
    .view:hover,
    .container-widget,
    .nav-tabs,.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover,
    .nav-tabs>li>a:hover,
    .sf-menu>li:hover,
    .btn-danger, .btn-primary, .btn-info{
       border-color:<?php echo $customisation_colors["general_themecolor"]; ?> !important;
    }
    <?php endif; ?>

    <?php if (!empty($customisation_colors["general_themecolor"])): ?>
    .infobox{
        border:1px solid <?php echo $customisation_colors["general_themecolor"]; ?> !important;
    }
    <?php endif; ?>

    @media (min-width:768px) {
        <?php if (!empty($customisation_colors["general_themecolor"])): ?>
        .responsive .tabs-left .tab-content-outer {
            border-color:<?php echo $customisation_colors["general_themecolor"]; ?> !important
        }
        <?php endif; ?>

    }
    @media (max-width:767px) {
        <?php if (!empty($customisation_colors["general_themecolor"])): ?>
        .responsive .tabsslider .carousel-next:hover, .responsive .tabsslider .carousel-prev:hover {
            color:<?php echo $customisation_colors["general_themecolor"]; ?> !important
        }
        <?php endif; ?>

    }

    <?php $customisation_contentbg = $config->get('customisation_contentbg'); ?>

    .navbar .background, body {
        <?php if (isset($customisation_contentbg) && $customisation_contentbg !== '') : ?>
            background-image: url("image/<?php echo $customisation_contentbg; ?>");
            background-repeat:<?php echo (!empty($customisation_colors["content_bg_mode"]) ? $customisation_colors["content_bg_mode"] : ''); ?>;
            background-position:top center;
        <?php endif; ?>

        <?php if (!empty($customisation_colors["general_bgcolor"])): ?>
        background-color:<?php echo $customisation_colors["general_bgcolor"]; ?>;
        <?php endif; ?>

    }

    <?php if (!empty($customisation_colors["general_input"])): ?>
    select.form-control, textarea.form-control, input[type="text"].form-control, input[type="password"].form-control, input[type="datetime"].form-control, input[type="datetime-local"].form-control, input[type="date"].form-control, input[type="month"].form-control, input[type="time"].form-control, input[type="week"].form-control, input[type="number"].form-control, input[type="email"].form-control, input[type="url"].form-control, input[type="search"].form-control, input[type="tel"].form-control, input[type="color"].form-control,
    select,input,textarea,
    select.btn-default,
    select.btn-default:hover,
    header .navbar-search input.form-control,
    .navbar-search input.form-control,
    header .navbar-search:hover input.form-control, header .navbar-search.focus input.form-control,
    input[type=checkbox]{
        border-color:<?php echo $customisation_colors["general_input"]; ?>;
    }
    <?php endif; ?>


    h1, h2, h3, h4,.footer-bottom-block,.price, .price_normal,.products-list-in-row .list_description,.simple-list .checkbox,.simple-list p,
    .sort,.limit,.product-description,.tab-content,
    .navbar-welcome,.product-preview .price,.left_block.block_category a,
    header .navbar-search input.form-control, .navbar-search input.form-control{
       color:<?php echo (!empty($customisation_colors["general_text"]) ? $customisation_colors["general_text"] : ''); ?>;
    }

    a, a:active, a:focus, a:hover, a:visited,.products-widget a,.footer-navbar.dark a,footer .copyright-text a,.left_block.block_category a:hover,
    header .navbar-main-menu .item .btn-main,.sf-menu>li>a,
    .product-preview .quick-view{
        color:<?php echo (!empty($customisation_colors["general_link"]) ? $customisation_colors["general_link"] : ''); ?>;
    }
    a:hover,.footer-navbar.dark a:hover,footer a:hover,
    header .navbar-main-menu .item .btn-main:hover,.sf-menu>li>a:hover{
        color:<?php echo (!empty($customisation_colors["general_linkhover"]) ? $customisation_colors["general_linkhover"] : ''); ?>;
    }


        /*colors: captions*/
    h1, h2, h3, h4,header .navbar-main-menu .item .btn-main,
    header .navbar-main-menu-outer .sf-menu>li>a.sf-with-ul,
    .slider-products h3,.footer-navbar.dark h3{
        color:<?php echo (!empty($customisation_colors["captions_text"]) ? $customisation_colors["captions_text"] : ''); ?>;

    }

    <?php if (isset($customisation_colors["captions_font"]) && $customisation_colors["captions_font"] !== '-'): ?>
    h1, h2, h3, h4,header .navbar-main-menu .item .btn-main,
    header .navbar-main-menu-outer .sf-menu>li>a.sf-with-ul,
    .slider-products h3,.footer-navbar.dark h3{
        font-family: <?php echo $customisation_colors["captions_font"]; ?>
    }
    <?php endif; ?>
        /*colors: header*/
    header .navbar .background{
        background:<?php echo (!empty($customisation_colors["topline_bgcolor"]) ? $customisation_colors["topline_bgcolor"] : ''); ?>;
    }
    .navbar-welcome{
        color:<?php echo (!empty($customisation_colors["topline_phonecolor"]) ? $customisation_colors["topline_phonecolor"] : ''); ?>;
    }
    <?php if (isset($customisation_colors["topline_shadow"]) && $customisation_colors["topline_shadow"] == '0'): ?>
    header .navbar-main-menu-outer,.navbar .background{
        box-shadow:none
    }
    <?php endif; ?>
        /*colors: header-dropdown blocks*/

    header .navbar-secondary-menu .dropdown-menu{
        background:<?php echo (!empty($customisation_colors["dd_bgcolor"]) ? $customisation_colors["dd_bgcolor"] : ''); ?>;
        border-color:<?php echo (!empty($customisation_colors["dd_border"]) ? $customisation_colors["dd_border"] : ''); ?>
    }
    .dropdown-menu>li>a, .dropdown-menu div.top_block>a,
    .navbar-secondary-menu .btn-group.btn-hidden .btn-default, .navbar-secondary-menu .btn-group.btn-hidden.open .btn-default,
    .navbar-secondary-menu .btn-group:last-child .btn-default{
        color:<?php echo (!empty($customisation_colors["dd_ink"]) ? $customisation_colors["dd_ink"] : ''); ?>
    }
    .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu div.top_block>a:focus, .dropdown-menu div.top_block>a:hover{
        background-color:<?php echo (!empty($customisation_colors["dd_linkhover"]) ? $customisation_colors["dd_linkhover"] : ''); ?>
    }

        /*colors: header-top navigation*/
    header .navbar-main-menu .item .btn-main,header .navbar-main-menu-outer .sf-menu>li>a.sf-with-ul{
        color:<?php echo (!empty($customisation_colors["headernav_text"]) ? $customisation_colors["headernav_text"] : ''); ?>
    }
    header .navbar-main-menu .item .btn-main:hover,header .navbar-main-menu-outer .sf-menu>li>a.sf-with-ul:hover{
        color:<?php echo (!empty($customisation_colors["headernav_linkhover"]) ? $customisation_colors["headernav_linkhover"] : ''); ?>
    }

    .submenu-block .name,.submenu-block ul li:hover>a,.submenu-block ul li a,.submenu-block ul li a:hover,.submenu-block,
    .sf-menu ul li a,.sf-menu ul li a:hover{
        color:<?php echo (!empty($customisation_colors["headernav_link"]) ? $customisation_colors["headernav_link"] : ''); ?>;
        background:none
    }
    .sf-menu ul li a{
        border-bottom-color:<?php echo (!empty($customisation_colors["headernav_bgcolor"]) ? $customisation_colors["headernav_bgcolor"] : ''); ?>
    }

    header .navbar-main-menu-outer, .navbar .background{
        background-color:<?php echo (!empty($customisation_colors["top_menu_bgcolor"]) ? $customisation_colors["top_menu_bgcolor"] : ''); ?>
    }
    .sf-menu ul,.navbar-main-submenu{
        background-color:<?php echo (!empty($customisation_colors["headernav_bgcolor"]) ? $customisation_colors["headernav_bgcolor"] : ''); ?>
    }
        /*colors: content*/
    <?php if (!empty($customisation_colors["product_shadow"]) && $customisation_colors["product_shadow"] != 0) : ?>
    .product-preview .preview a.preview-image{
        border:<?php echo (!empty($customisation_colors["product_shadow"]) && $customisation_colors["product_shadow"] != 1 ? 'none' : $customisation_colors["product_border"].(!empty($customisation_colors["product_shadow"]) && $customisation_colors["product_shadow"] != 1 ? '' : ' '.$customisation_colors["content_border_color"])); ?>;
        display:block;
        overflow:hidden;
    }
    <?php endif; ?>
        /*colors: footer-top*/

    .section_footer_socials{
        color:<?php echo (!empty($customisation_colors["footerinfo_text"]) ? $customisation_colors["footerinfo_text"] : ''); ?>
    }
    .section_footer_socials a,.section_footer_socials a:hover{
        color:<?php echo (!empty($customisation_colors["footerinfo_link"]) ? $customisation_colors["footerinfo_link"] : ''); ?>
    }
    .section_footer_socials h3,.section_footer_socials h1,.section_footer_socials h2{
        color:<?php echo (!empty($customisation_colors["footerinfo_captions"]) ? $customisation_colors["footerinfo_captions"] : ''); ?>
    }
    .section_footer_socials{
        background-color:<?php echo (!empty($customisation_colors["footerinfo_bgcolor"]) ? $customisation_colors["footerinfo_bgcolor"] : ''); ?>
    }
    <?php if (!empty($customisation_colors["footerinfo_bgcolor"])): ?>
    .section_footer_socials .boxed_home,.footer-bottom-block .boxed_home{padding-left:15px;padding-right:15px}
    <?php endif; ?>

        /*colors: footer-information block*/
    .footer-navbar h3,.footer-navbar h1,.footer-navbar h2,.footer-navbar h4,.footer-navbar h5{
        color:<?php echo (!empty($customisation_colors["footerpopup_captions"]) ? $customisation_colors["footerpopup_captions"] : ''); ?>
    }
    .footer-navbar a,.footer-navbar a:hover,.footer-navbar .menu li{
        color:<?php echo (!empty($customisation_colors["footerpopup_link"]) ? $customisation_colors["footerpopup_link"] : ''); ?>
    }
    .footer-navbar .icon{
        color:<?php echo (!empty($customisation_colors["footerpopup_linkhover"]) ? $customisation_colors["footerpopup_linkhover"] : ''); ?>
    }
    .footer-navbar{
        background-color:<?php echo (!empty($customisation_colors["footerpopup_bgcolor"]) ? $customisation_colors["footerpopup_bgcolor"] : ''); ?>;
    }

    <?php
    $customisation_delimeter = $config->get('customisation_delimeter');
    if (isset($customisation_delimeter) && $customisation_delimeter != '' || (isset($customisation_general["delimeter"]) && $customisation_general["delimeter"] != '')):
    ?>
        .footer-navbar{
            background-image:url("image/<?php echo ($store_id != 0 && isset($customisation_general["delimeter"]) && $customisation_general["delimeter"] != '' ? 'catalog/'.$customisation_general["delimeter"] : $customisation_delimeter); ?>");
            background-repeat:no-repeat;
            background-position:center 0
        }
    <?php endif; ?>



        /*colors: footer-bottom */
    .footer-bottom-block{
        color:<?php echo (!empty($customisation_colors["footer_text"]) ? $customisation_colors["footer_text"] : ''); ?>
    }
    .footer-bottom-block a{
        color:<?php echo (!empty($customisation_colors["footer_link"]) ? $customisation_colors["footer_link"] : ''); ?>
    }
    .footer-bottom-block a:hover{
        color:<?php echo (!empty($customisation_colors["footer_link_hover"]) ? $customisation_colors["footer_link_hover"] : ''); ?>
    }
    .footer-bottom-block{
        background-color:<?php echo (!empty($customisation_colors["footer_bgcolor"]) ? $customisation_colors["footer_bgcolor"] : ''); ?>;
    }

        /*colors: prices */
    .product-preview .price,.price{
        color:<?php echo (!empty($customisation_colors["price_regular"]) ? $customisation_colors["price_regular"] : ''); ?>
    }
    .product-preview .price.new,.products-widget .price.new,.price.new{
        color:<?php echo (!empty($customisation_colors["price_new"]) ? $customisation_colors["price_new"] : ''); ?> !important;
    }
    .product-preview .price.old,.products-widget .price.old{
        color:<?php echo (!empty($customisation_colors["price_old"]) ? $customisation_colors["price_old"] : ''); ?>
    }




    .product-controls-list .label{
        background:<?php echo (!empty($customisation_products["discount_label_bg"]) ? $customisation_products["discount_label_bg"] : ''); ?>;
    }

    .product-controls-list .label-sale{
        background:<?php echo (!empty($customisation_products["sale_label_bg"]) ? $customisation_products["sale_label_bg"] : ''); ?>;
    }
    .product-controls-list .label-new{
        background:<?php echo (!empty($customisation_products["new_label_bg"]) ? $customisation_products["new_label_bg"] : ''); ?>;
    }



</style>




<!--mobile detect-->
<?php
include_once 'catalog/view/theme/Mobile_Detect.php';
$detect = new Mobile_Detect;

$deviceType = ($detect->isMobile() ? ($detect->isTablet() ? 'tablet' : 'phone') : 'computer');

?>

<!--end mobile detect-->


<!--custom css changes-->
    <?php if (isset($customisation_general["css_file"]) && $customisation_general["css_file"] == 1 ) : ?>
    <link type="text/css" href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/stylesheet/custom.css" rel="stylesheet" />
    <?php endif; ?>
    <!--end custom css changes-->

</head>

<body class="<?php echo $class; ?> <?php echo ($direction == 'rtl' ? 'rtl' : 'ltr'); ?> <?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'boxed_page' : 'full_width'); ?> <?php echo (isset($customisation_general['bg_image_status']) && $customisation_general['bg_image_status'] == 1 && !empty($customisation_bgall) ? 'back-bg ' : ''); ?>responsive <?php echo(isset($layout_id) && $layout_id == 1 ? 'index_page' : 'none_index_page'); ?> layout_<?php echo (isset($layout_id) ? ($layout_id == '' ? 'maintenance' : $layout_id) : 'maintenance'); ?> device_<?php echo $deviceType; ?> system_<?php echo ($detect->isAndroidOS() ? 'android' : 'other'); ?> store_id<?php echo $store_id; ?>">


<!--theme scripts-->



<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/prototype.js"></script>
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery-1.10.2.min.js"></script>

<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/modernizr-2.6.2.min.js"></script>

<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/common_scripts.js"></script>
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.fancybox.js?v=2.1.5"></script>

<?php if (isset($customisation_general["spy_type"]) && $customisation_general["spy_type"] == 2 ) { ?>
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/optimus_spy.js"></script>
<?php } else { ?>
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/optimus.js"></script>
<?php } ?>

<!--end theme scripts-->

<script type="text/javascript" src="catalog/view/javascript/common.js"></script>


<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--end theme scripts-->


    <div class="loader">
        <div class="bubblingG"><span id="bubblingG_1"> </span> <span id="bubblingG_2"> </span> <span id="bubblingG_3"> </span> </div>
    </div>


<!-- Off Canvas Menu -->
<nav id="off-canvas-menu" >
    <div id="off-canvas-menu-title"><?php echo (isset($customisation_general[$lang]["mobile_menu_title"]) ? $customisation_general[$lang]["mobile_menu_title"] : 'MENU'); ?><span class="icon icon-cancel-3" id="off-canvas-menu-close"></span></div>
    <ul class="expander-list">
        <?php if (!isset($customisation_general["homebutton"]) || $customisation_general["homebutton"] != 0 ) : ?>
        <li><span class="name"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></span></li>
        <?php endif; ?>

        <!--listing-->
        <?php if ($categories) : ?>
        <?php foreach ($categories as $category) : ?>

        <li>
                <span class="name">
                    <?php if ($category['children']): ?><span class="expander">-</span><?php endif; ?>
                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                </span>

            <?php if ($category['children']): ?>
            <ul>
                <?php for ($i = 0; $i < count($category['children']);) : ?>

                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                <?php for (; $i < $j; $i++) : ?>
                <?php if (isset($category['children'][$i])) : ?>

                <?php
                    if (isset($category['children'][$i]['href'])) {
                        $parts0 = explode('_', (string)$category['children'][$i]['href']);
                    } else {
                       $parts0 = array();
                    }
                    $subcategory_id_first = end($parts0);

                    if (is_numeric($subcategory_id_first)) {
                        $subcategory_id = $subcategory_id_first;
                    } else {
                        $parts1 = explode('/', (string)$subcategory_id_first);
                        $query = $db->query("SELECT query as query FROM ".DB_PREFIX."url_alias WHERE keyword='".end($parts1)."'");
                $parts = explode('=', (string)$query->row['query']);
                $subcategory_id = end($parts);
                }

                $loader->model('catalog/category');
                $model = $registry->get('model_catalog_category');
                $category_sub_level = $model->getCategory($subcategory_id);

                //$category_sub_level = $this->model_catalog_category->getCategory($subcategory_id);
                ?>

                <li>
                        <span class="name">
                            <?php
                            $loader->model('catalog/category');
                            $model = $registry->get('model_catalog_category');
                            $categories_sublevel2 = $model->getCategories($subcategory_id);

                                //$categories_sublevel2 = $this->model_catalog_category->getCategories($subcategory_id);
                                if ($categories_sublevel2) :
                            ?>
                            <span class="expander">-</span>
                            <?php endif; ?>
                            <a href="<?php echo $category['children'][$i]['href']; ?>">
                                <?php echo (isset($category_sub_level['icon']) && $category_sub_level['icon'] != '' ? html_entity_decode($category_sub_level['icon'], ENT_QUOTES, 'UTF-8') : '<span style="visibility:hidden" class="icon m-icon-shirts"></span>'); ?>
                    <?php echo $category['children'][$i]['name']; ?>
                    </a>
                    </span>
                    <!--second sublevel-->
                    <?php if ($categories_sublevel2) :  ?>
                    <ul>
                        <?php
                               foreach ($categories_sublevel2 as $category_sublevel2) :
                                  if (is_numeric($subcategory_id_first)) {
                                     $category_sublevel2_link = $category['children'][$i]['href']. '_' . $category_sublevel2['category_id'];
                                  } else {
                                     $query0 = 'category_id='.$category_sublevel2['category_id'];
                                     $query = $db->query("SELECT keyword as keyword FROM ".DB_PREFIX."url_alias WHERE query='".$query0."'");
                        if ($query->num_rows) {
                        $parts = (string)$query->row['keyword'];
                        $category_sublevel2_link = $category['children'][$i]['href']. '/' . $parts;
                        } else {$category_sublevel2_link = '';}
                        }
                        ?>

                        <li><span class="name"><a href="<?php echo $category_sublevel2_link; ?>"><?php echo $category_sublevel2['name']; ?></a></span></li>
                        <?php endforeach; ?>

                    </ul>
                    <?php endif; ?>
                    <!--second sublevel-->

                </li>
                <?php endif; ?>
                <?php endfor; ?>
                <?php endfor; ?>
            </ul>
            <?php endif; ?>
        </li>
        <?php endforeach; ?>
        <?php endif; ?>
        <!--end listing-->

        <!-- custom item -->
        <?php if (isset($customisation_general[$lang]["customitem_item_title1"]) && $customisation_general[$lang]["customitem_item_title1"] !== '' ): ?>
        <li class="item">
                    <span class="name">
                        <a target="_blank" href="<?php if ($customisation_general["customitem_item_url1"] !== '' ) {echo $customisation_general["customitem_item_url1"];} else {echo 'index.php';} ?>">
                        <?php echo $customisation_general[$lang]["customitem_item_title1"]; ?>
                        </a>
                    </span>
        </li>
        <?php endif; ?>
        <!-- end custom item -->

        <!-- BLOG LINK -->
        <?php if (isset($customisation_general["blog_link_status"]) && $customisation_general["blog_link_status"] == 1) :  ?>
        <li>
                <span class="name">
                    <a target="_blank" href="<?php if ($customisation_general["blog_link_url"] !== '' ) {echo $customisation_general["blog_link_url"];} else {echo 'index.php?route=blog/post';} ?>">
                    <?php if (isset($customisation_general[$lang]["blog_link_title"]) && $customisation_general[$lang]["blog_link_title"] !== '' ):  echo $customisation_general[$lang]["blog_link_title"]; endif; ?>
                    </a>

                </span>
        </li>
        <?php endif; ?>
        <!-- //BLOG LINK -->

        <!--pages-->
        <?php if (!isset($customisation_general["pages_status"]) || $customisation_general["pages_status"] != 0 ) :  ?>
        <li>
                <span class="name">
                    <span class="expander">-</span>
                    <a href="<?php if ($customisation_general["pages_link_url"] !== '' ) {echo $customisation_general["pages_link_url"];} else {echo '#';} ?>">
                    <?php
                         if (isset($customisation_general[$lang]["pages_link_title"]) && $customisation_general[$lang]["pages_link_title"] !== '' ) {
                             echo $customisation_general[$lang]["pages_link_title"];
                         } else {echo 'pages';}
                    ?>
                    </a>
                </span>
            <ul>

                <?php
                $loader->model('catalog/information');
                $model = $registry->get('model_catalog_information');
                $informations = $model->getInformations();

                if (isset($informations)) :
                    foreach ($informations as $information) :
                        global $url;
                        $information_href = $url->link('information/information', 'information_id=' . $information['information_id']);

                        if (isset($customisation_general["additional_page_status"])):

                            if ($store_id == 0) {
                                foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                    if ($information_id == $information['information_id'] && $information_status != 0) :
                ?>
                                        <li><span class="name"><a href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></span></li>
                <?php
                                    endif;
                                endforeach;
                            } else {
                                foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                    if ($information_id == $information['information_id'] && $information_status[$store_id] != 0) :
                ?>
                                        <li><span class="name"><a href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></span></li>
                <?php
                                    endif;
                                 endforeach;
                            }
                ?>
                <?php
                         endif;
                     endforeach;
                endif;
                ?>


                <?php if (!isset($customisation_general["additional_page_checkout_status"]) || $customisation_general["additional_page_checkout_status"] != 0 ) :  ?>
                <li><span class="name"><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></span></li>
                <?php endif; ?>
                <?php if (!isset($customisation_general["additional_page_account_status"]) || $customisation_general["additional_page_account_status"] != 0 ) :  ?>
                <li><span class="name"><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></span></li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <!--//pages-->


        <!--contact link in top menu-->
        <?php if (!isset($customisation_general["contact_map_status"]) || $customisation_general["contact_map_status"] != 0 ) :  ?>
        <li>
                <span class="name">
                    <a target="_blank" href="index.php?route=information/contact">
                    <?php
                        if (isset($customisation_general[$lang]["contact_map_title"]) && $customisation_general[$lang]["contact_map_title"] !== '' ) {
                           echo $customisation_general[$lang]["contact_map_title"];
                        } else {echo 'contact';}
                    ?>

                    </a>
                </span>
        </li>
        <?php endif; ?>
        <!--end contact link in top menu-->

    </ul>
</nav>
<!-- //end Off Canvas Menu -->



    <div id="outer">
        <div id="outer-canvas">
            <!-- Navbar -->
            <header id="header" class="<?php echo ((!empty($customisation_bgall) || !empty($customisation_general["bgall"])) && isset($customisation_general['bg_image_status']) && $customisation_general['bg_image_status'] == 1 ? 'boxed_bg' : ''); ?> variant<?php echo $header_type; ?>">
                <!-- Back to top -->
                <div class="back-to-top"><span class="icon-arrow-up-4"></span></div>
                <!-- //end Back to top -->

                <section class="navbar">
                    <h2 style="display:none">Home page</h2>
                    <div class="background">

                        <!-- container for top line of header -->
                        <div class="container">
                            <div class="wrappertop">
                                <?php if ($header_type == 3) { ?>
                                <!--header variant 3-->
                                <div class="navbar-welcome pull-left compact-hidden hidden-xs">
                                    <?php
                                        if (isset($customisation_general[$lang]["welcome_message"]) && is_string($customisation_general[$lang]["welcome_message"])) {
                                        echo html_entity_decode($customisation_general[$lang]["welcome_message"], ENT_QUOTES, 'UTF-8');
                                        } else {echo 'Default welcome msg!';}
                                    ?>
                                </div>
                                <div class="navbar-logo pull-left">
                                    <?php if ($logo) { ?>
                                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
                                    <?php } else { ?>
                                    <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                                    <?php } ?>
                                </div>

                                <!--end header variant 3-->

                                <?php } else { ?>
                                <!-- Logo -->
                                <div class="navbar-logo pull-left">
                                    <?php if ($logo) { ?>
                                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
                                    <?php } else { ?>
                                    <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                                    <?php } ?>
                                </div>

                                <div class="navbar-welcome pull-left compact-hidden hidden-xs">
                                    <?php
                                        if (isset($customisation_general[$lang]["welcome_message"]) && is_string($customisation_general[$lang]["welcome_message"])) {
                                        echo html_entity_decode($customisation_general[$lang]["welcome_message"], ENT_QUOTES, 'UTF-8');
                                        } else {echo 'Default welcome msg!';}
                                    ?>
                                </div>

                                <div class="clearfix visible-sm"></div>
                                <!-- //end Logo -->

                                <?php }  ?>



                                <!-- Secondary menu -->
                                <div class="navbar-secondary-menu pull-right hidden-xs">
                                    <?php if (!isset($customisation_general["header_account"]) || $customisation_general["header_account"] != 0) : ?>
                                    <div class="btn-group compact-hidden btn-hidden account-box">
                                        <a class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
                                            <span class="icon icon-vcard"></span>
                                            <?php echo ($header_type != 2 && $header_type != 3 ? $text_account : ''); ?>
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                            <li class="divider"></li>
                                            <?php if ($logged) { ?>
                                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                            <?php } else { ?>
                                            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                    <?php endif; ?>
                                    <?php echo $language; ?>
                                    <?php echo $currency; ?>
                                    <!--cart desktop-->
                                    <?php
                                        if (!isset($customisation_products['product_catalog_mode']) || $customisation_products['product_catalog_mode'] != 1) :
                                            echo $cart;
                                        endif;
                                    ?>
                                    <!--//cart-->
                                </div>

                                <!-- Secondary menu mobile -->
                                <div class="navbar-secondary-menu pull-right compact-hidden visible-xs language_wrapper">
                                    <?php echo $language; ?>
                                    <?php echo $currency; ?>
                                </div>
                                <!-- //end Secondary menu -->

                                <!-- Search -->
                                <?php
                                if (!isset($customisation_general["headertopline"]) || $customisation_general["headertopline"] != 0) :
                                    echo $search;
                                endif;
                                ?>
                                <!-- //end Search -->
                            </div>
                        </div>
                        <!-- end container for top line of header -->



                        <?php if (!isset($menu_type) || $menu_type != 2) { ?>
                        <div class="navbar-main-menu-outer hidden-xs">
                            <div class="container">
                            <!-- container for main menu of header -->

                            <!-- Main menu -->
                            <dl class="navbar-main-menu">
                                <?php if (!isset($customisation_general["homebutton"]) || $customisation_general["homebutton"] != 0 ) : ?>
                                <dt class="item">
                                <ul class="sf-menu">
                                    <li><a href="<?php echo $home; ?>" class="btn-main"><span class="icon icon-home"></span></a></li>
                                </ul>
                                </dt>
                                <dd></dd>
                                <?php endif; ?>

                            <!--categories-->
                            <?php if ($categories) : ?>
                            <?php foreach ($categories as $category) : ?>

                            <?php
                                if (isset($category["href"])) {
                                    $parts = explode('=', (string)$category["href"]);
                                    } else {
                                    $parts = array();
                                    }

                                    $category_id = end($parts);
                                    if (is_numeric($category_id)) {
                                    $category_id = $category_id;
                                    } else {
                                    $parts = explode('/', (string)$category_id);
                                    $query = $db->query("SELECT query as query FROM ".DB_PREFIX."url_alias WHERE keyword='".end($parts)."'");
                            $parts = explode('=', (string)$query->row['query']);
                            $category_id = end($parts);
                            }

                            $loader->model('catalog/category');
                            $model = $registry->get('model_catalog_category');
                            $category_top_level = $model->getCategory($category_id);

                            //$category_top_level = $this->model_catalog_category->getCategory($category_id);
                            ?>

                            <dt class="item">
                                <a class="btn-main line" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </dt>
                            <?php if ($category['children']) { ?>
                            <dd class="item-content">
                                <div class="navbar-main-submenu">
                                    <!--<a href="#" class="button-up"><span class="icon-arrow-up-3"></span></a>-->
                                    <!--
                                    <ul class="exclusive toplevelcategory">
                                        <li>
                                            <span class="icon icon-coins"></span>
                                            <a href="<?php echo $category['href']; ?>">View All <?php echo $category['name']; ?></a>
                                        </li>
                                    </ul>
                                    -->

                                    <!--custom blocks in dropdown for main category: top-->
                                    <?php echo ((isset($category_top_level['html_top']) && $category_top_level['html_top'] != '') ? html_entity_decode($category_top_level['html_top'], ENT_QUOTES, 'UTF-8') : ''); ?>
                                    <!--custom blocks in dropdown for main category: top-->

                                    <?php if ($category['children'] || (isset($category_top_level['html_right']) && $category_top_level['html_right'] != '')) : ?>
                                    <div class="wrapper-border <?php if (isset($category_top_level['html_bottom']) && $category_top_level['html_bottom'] == '') {echo 'border-none';} ?>">
                                        <div class="row">
                                            <!--listing of categories-->
                                            <div class="<?php echo ((isset($category_top_level['html_right']) && $category_top_level['html_right'] != '')  ? 'col-xs-9' : 'col_no_right_html'); ?>">
                                                <div class="<?php echo ((isset($category_top_level['html_right']) && $category_top_level['html_right'] != '')  ? 'row' : 'row_no_right_html'); ?>">

                                                    <?php for ($i = 0; $i < count($category['children']);) : ?>

                                                    <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                                    <?php for (; $i < $j; $i++) { ?>
                                                    <?php if (isset($category['children'][$i])) { ?>

                                                    <?php
                                                                             if (isset($category['children'][$i]['href'])) {
                                                                                $parts0 = explode('_', (string)$category['children'][$i]['href']);
                                                                                } else {
                                                                                $parts0 = array();
                                                                             }
                                                                             $subcategory_id_first = end($parts0);

                                                                             if (is_numeric($subcategory_id_first)) {
                                                                                $subcategory_id = $subcategory_id_first;
                                                                             } else {
                                                                             $parts1 = explode('/', (string)$subcategory_id_first);
                                                                             $query = $db->query("SELECT query as query FROM ".DB_PREFIX."url_alias WHERE keyword='".end($parts1)."'");
                                                    $parts = explode('=', (string)$query->row['query']);
                                                    $subcategory_id = end($parts);
                                                    }


                                                    $loader->model('catalog/category');
                                                    $model = $registry->get('model_catalog_category');
                                                    $category_sub_level = $model->getCategory($subcategory_id);

                                                    //$category_sub_level = $this->model_catalog_category->getCategory($subcategory_id);



                                                    $column = $category["column"];
                                                    $cols = floor(12/$column);
                                                    $cols_1 = $cols + 1;
                                                    $cols_2 = $cols + 2;


                                                    ?>


                                                    <div class="<?php echo ((isset($category_top_level['html_right']) && $category_top_level['html_right'] != '')  ? 'col-xs-'.$cols_2.' col-md-'.$cols_1.' col-lg-'.$cols : 'col-xs-'.$cols_2.' col-md-'.$cols_1.' col-lg-'.$cols); ?>">

                                                        <div class="submenu-block <?php echo ((isset($category_sub_level['icon']) && $category_sub_level['icon'] != '')  ? '' : 'submenu-block-other'); ?>">
                                                            <?php echo (isset($category_sub_level['html_top']) && $category_sub_level['html_top'] != '' ? html_entity_decode($category_sub_level['html_top'], ENT_QUOTES, 'UTF-8') : ''); ?>

                                                            <?php echo (isset($category_sub_level['icon']) ? html_entity_decode($category_sub_level['icon'], ENT_QUOTES, 'UTF-8') : ''); ?>

                                                            <div class="<?php echo (isset($category_sub_level['html_top']) && $category_sub_level['html_top'] != '' ? 'title' : 'no_subcategory_img'); ?>">
                                                                <a class="name" href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                                                                <?php echo (isset($category_sub_level['promo']) ? html_entity_decode($category_sub_level['promo'], ENT_QUOTES, 'UTF-8') : ''); ?>
                                                            </div>


                                                            <!--sublevel 2-->
                                                            <?php
                                                            $loader->model('catalog/category');
                                                            $model = $registry->get('model_catalog_category');
                                                            $categories_sublevel2 = $model->getCategories($subcategory_id);



                                                            //$categories_sublevel2 = $this->model_catalog_category->getCategories($subcategory_id);
                                                            if ($categories_sublevel2) :
                                                            ?>
                                                            <ul>
                                                                <?php foreach ($categories_sublevel2 as $category_sublevel2) : ?>
                                                                <?php
                                                                                    if (is_numeric($subcategory_id_first)) {
                                                                                        $category_sublevel2_link = $category['children'][$i]['href']. '_' . $category_sublevel2['category_id'];
                                                                                     } else {
                                                                                        $query0 = 'category_id='.$category_sublevel2['category_id'];
                                                                                        $query = $db->query("SELECT keyword as keyword FROM ".DB_PREFIX."url_alias WHERE query='".$query0."'");
                                                                if ($query->num_rows) {
                                                                $parts = (string)$query->row['keyword'];
                                                                $category_sublevel2_link = $category['children'][$i]['href']. '/' . $parts;
                                                                } else {$category_sublevel2_link = '';}
                                                                }
                                                                ?>

                                                                <li><a href="<?php echo $category_sublevel2_link; ?>"><?php echo $category_sublevel2['name']; ?></a></li>
                                                                <?php endforeach; ?>
                                                            </ul>
                                                            <?php endif; ?>
                                                            <!--sublevel 2-->

                                                            <!--custom blocks in dropdown for main category: bottom-->
                                                            <?php echo (isset($category_sub_level['html_bottom']) && $category_sub_level['html_bottom'] != '' ? html_entity_decode($category_sub_level['html_bottom'], ENT_QUOTES, 'UTF-8') : ''); ?>
                                                            <!--custom blocks in dropdown for main category: bottom-->


                                                        </div>
                                                    </div>

                                                    <?php } ?>
                                                    <?php } ?>


                                                    <?php endfor; ?>

                                                </div>
                                            </div>
                                            <!--end listing of subcategories-->

                                            <!-- html block rigth -->
                                            <?php if (isset($category_top_level['html_right']) && $category_top_level['html_right'] != '') : ?>
                                            <div class="col-xs-3 html_block_category_right">
                                                <?php echo html_entity_decode($category_top_level['html_right'], ENT_QUOTES, 'UTF-8'); ?>
                                            </div>
                                            <?php endif; ?>
                                            <!-- //end html block -->

                                        </div>
                                    </div>
                                    <?php endif; ?>

                                    <!--custom blocks in dropdown for main category: bottom-->
                                    <?php echo (isset($category_top_level['html_bottom']) && $category_top_level['html_bottom'] != '' ? html_entity_decode($category_top_level['html_bottom'], ENT_QUOTES, 'UTF-8') : ''); ?>
                                    <!--custom blocks in dropdown for main category: bottom-->

                                </div>
                            </dd>
                            <?php } else {echo '<dd></dd>';} ?>
                            <?php endforeach; ?>

                            <?php endif; ?>
                            <!--//categories-->


                            <!-- custom item -->
                            <?php if (isset($customisation_general[$lang]["customitem_item_title1"]) && $customisation_general[$lang]["customitem_item_title1"] !== '' ): ?>
                            <dt class="item">
                                <a class="btn-main line" target="_blank" href="<?php if ($customisation_general["customitem_item_url1"] !== '' ) {echo $customisation_general["customitem_item_url1"];} else {echo 'index.php';} ?>">
                                <?php echo $customisation_general[$lang]["customitem_item_title1"]; ?>
                                </a>
                            </dt>
                            <dd></dd>
                            <?php endif; ?>
                            <!-- end custom item -->

                            <!--pages-->
                            <?php if (!isset($customisation_general["pages_status"]) || $customisation_general["pages_status"] != 0 ) :  ?>
                            <dt class="item">
                            <ul class="sf-menu">
                                <li>
                                    <a href="<?php if ($customisation_general["pages_link_url"] !== '' ) {echo $customisation_general["pages_link_url"];} else {echo '#';} ?>">
                                    <?php
                         if (isset($customisation_general[$lang]["pages_link_title"]) && $customisation_general[$lang]["pages_link_title"] !== '' ) {
                             echo $customisation_general[$lang]["pages_link_title"];
                         } else {echo 'pages';}
                                    ?>
                                    </a>
                                    <ul>
                                    <?php
                                        $loader->model('catalog/information');
                                        $model = $registry->get('model_catalog_information');
                                        $informations = $model->getInformations();

                                        if (isset($informations)) :
                                            foreach ($informations as $information) :
                                                global $url;
                                                $information_href = $url->link('information/information', 'information_id=' . $information['information_id']);

                                                if (isset($customisation_general["additional_page_status"])):
                                                    if ($store_id == 0) {
                                                        foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                                            if ($information_id == $information['information_id'] && $information_status != 0) :
                                        ?>
                                                                <li><a class="subcategory_item" href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></li>
                                        <?php
                                                            endif;
                                                        endforeach;
                                                    } else {
                                                        foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                                            if ($information_id == $information['information_id'] && $information_status[$store_id] != 0) :
                                        ?>
                                                                 <li><a class="subcategory_item" href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></li>
                                        <?php
                                                             endif;
                                                        endforeach;
                                                    }
                                        ?>
                                        <?php
                                                endif;
                                            endforeach;
                                        endif;
                                    ?>

                                        <?php if (!isset($customisation_general["additional_page_checkout_status"]) || $customisation_general["additional_page_checkout_status"] != 0 ) :  ?>
                                        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                        <?php endif; ?>
                                        <?php if (!isset($customisation_general["additional_page_account_status"]) || $customisation_general["additional_page_account_status"] != 0 ) :  ?>
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <?php endif; ?>


                                    </ul>
                                </li>
                            </ul>
                            </dt>
                            <dd></dd>
                            <?php endif; ?>
                            <!--//pages-->

                            <!-- BLOG LINK -->
                            <?php if (isset($customisation_general["blog_link_status"]) && $customisation_general["blog_link_status"] == 1) :  ?>
                            <dt class="item">
                                <a class="btn-main line" href="<?php if ($customisation_general["blog_link_url"] !== '' ) {echo $customisation_general["blog_link_url"];} else {echo 'index.php?route=blog/post';} ?>">
                                <?php
                                        if (isset($customisation_general[$lang]["blog_link_title"]) && $customisation_general[$lang]["blog_link_title"] != '' ) {
                                            echo $customisation_general[$lang]["blog_link_title"];
                                        }
                                    ?>
                                </a>
                            </dt>
                            <dd></dd>

                            <?php endif; ?>
                            <!-- //BLOG LINK -->

                            <!--contact link in top menu-->
                            <?php if (!isset($customisation_general["contact_map_status"]) || $customisation_general["contact_map_status"] != 0 ) :  ?>
                            <dt class="item item-contact-desktop">
                                <?php $contact_link = 'index.php?route=information/contact'; ?>
                                <a class="btn-main line" target="_blank" href="<?php echo $contact_link; ?>">
                                    <?php
                                        if (isset($customisation_general[$lang]["contact_map_title"]) && $customisation_general[$lang]["contact_map_title"] !== '' ) {
                                           echo $customisation_general[$lang]["contact_map_title"];
                                        } else {echo 'contact';}
                                    ?>
                                </a>
                            </dt>
                            <dd></dd>
                            <?php endif; ?>
                            <!--end contact link in top menu-->


                            </dl>
                            <!-- //end Main menu -->

                            <!-- end container for main menu of header -->

                            </div>
                        </div>

                        <?php } else { ?>
                        <div class="navbar-main-menu-outer hidden-xs">
                        <div class="container">
                            <ul class="navbar-usual-menu sf-menu hidden-xs">
                                <?php if (!isset($customisation_general["homebutton"]) || $customisation_general["homebutton"] != 0 ) : ?>
                                <li>
                                    <a href="<?php echo $home; ?>" class="btn-main"><span class="icon icon-home"></span></a>
                                </li>
                                <?php endif; ?>


                                <?php if ($categories) : ?>
                                    <?php foreach ($categories as $category) : ?>
                                        <li>
                                            <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                            <?php if ($category['children']) : ?>
                                                <ul>
                                                    <?php foreach ($category['children'] as $child) : ?>
                                                        <li>
                                                            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>

                                                            <!--
                                                            <ul>
                                                                <li><a href="listing.html">Club Dresses</a></li>
                                                                <li><a href="listing.html">Evening Dresses</a></li>
                                                                <li><a href="listing.html">Prom Dresses</a></li>
                                                            </ul>
                                                            -->
                                                        </li>
                                                    <?php endforeach; ?>




                                                </ul>
                                            <?php endif; ?>
                                        <li>
                                    <?php endforeach; ?>
                                <?php endif; ?>

                                <!--pages-->
                                <?php if (!isset($customisation_general["pages_status"]) || $customisation_general["pages_status"] != 0 ) :  ?>
                                <li>
                                    <a href="<?php if ($customisation_general["pages_link_url"] !== '' ) {echo $customisation_general["pages_link_url"];} else {echo '#';} ?>">
                                    <?php
                                         if (isset($customisation_general[$lang]["pages_link_title"]) && $customisation_general[$lang]["pages_link_title"] !== '' ) {
                                             echo $customisation_general[$lang]["pages_link_title"];
                                         } else {echo 'pages';}
                                    ?>

                                    <ul>
                                        <?php
                                        $loader->model('catalog/information');
                                        $model = $registry->get('model_catalog_information');
                                        $informations = $model->getInformations();

                                        if (isset($informations)) :
                                        foreach ($informations as $information) :
                                        global $url;
                                        $information_href = $url->link('information/information', 'information_id=' . $information['information_id']);

                                        if (isset($customisation_general["additional_page_status"])):

                                        if ($store_id == 0) {
                                        foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                        if ($information_id == $information['information_id'] && $information_status != 0) :
                                        ?>
                                        <li><a href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></li>
                                        <?php
                                                            endif;
                                                        endforeach;
                                                    } else {
                                                        foreach ($customisation_general["additional_page_status"] as $information_id => $information_status) :
                                                            if ($information_id == $information['information_id'] && $information_status[$store_id] != 0) :
                                        ?>
                                                                <li><a href="<?php echo $information_href; ?>"><?php echo $information['title']; ?></a></li>
                                        <?php
                                                            endif;
                                                        endforeach;
                                                    }
                                        ?>
                                        <?php
                                                endif;
                                            endforeach;
                                        endif;
                                    ?>


                                        <?php if (!isset($customisation_general["additional_page_checkout_status"]) || $customisation_general["additional_page_checkout_status"] != 0 ) :  ?>
                                        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                        <?php endif; ?>
                                        <?php if (!isset($customisation_general["additional_page_account_status"]) || $customisation_general["additional_page_account_status"] != 0 ) :  ?>
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <?php endif; ?>


                                    </ul>

                                    </a>
                                </li>
                                <?php endif; ?>
                                <!--//pages-->

                                <!-- custom item -->
                                <?php if (isset($customisation_general[$lang]["customitem_item_title1"]) && $customisation_general[$lang]["customitem_item_title1"] !== '' ): ?>
                                <li>
                                    <a target="_blank" href="<?php if ($customisation_general["customitem_item_url1"] !== '' ) {echo $customisation_general["customitem_item_url1"];} else {echo 'index.php';} ?>">
                                        <?php echo $customisation_general[$lang]["customitem_item_title1"]; ?>
                                    </a>
                                </li>
                                <?php endif; ?>
                                <!-- end custom item -->

                                <!-- BLOG LINK -->
                                <?php if (isset($customisation_general["blog_link_status"]) && $customisation_general["blog_link_status"] == 1) :  ?>
                                <li">
                                    <a href="<?php if ($customisation_general["blog_link_url"] !== '' ) {echo $customisation_general["blog_link_url"];} else {echo 'index.php?route=blog/post';} ?>">
                                    <?php
                                        if (isset($customisation_general[$lang]["blog_link_title"]) && $customisation_general[$lang]["blog_link_title"] !== '' ) {
                                            echo $customisation_general[$lang]["blog_link_title"];
                                        }
                                    ?>
                                    </a>
                                </li>


                                <?php endif; ?>
                                <!-- //BLOG LINK -->

                                <!--contact link in top menu-->
                                <?php if (!isset($customisation_general["contact_map_status"]) || $customisation_general["contact_map_status"] != 0 ) :  ?>
                                <li class="last">
                                    <a target="_blank" href="index.php?route=information/contact">
                                        <?php
                                        if (isset($customisation_general[$lang]["contact_map_title"]) && $customisation_general[$lang]["contact_map_title"] !== '' ) {
                                           echo $customisation_general[$lang]["contact_map_title"];
                                        } else {echo 'contact';}
                                        ?>

                                    </a>
                                </li>
                                <?php endif; ?>
                                <!--end contact link in top menu-->

                            </ul>
                        </div>
                        </div>
                        <?php } ?>

                    </div>


                    <!-- Mobile menu -->
                    <div class="container visible-xs">
                        <div class="mobile-nav row">
                            <div class="nav-item item-01">
                                <a id="off-canvas-menu-toggle"><span class="icon icon-list-4"></span></a>
                            </div>
                            <div class="nav-item item-02"><a href="#"><span class="icon icon-vcard"></span></a>
                                <div class="tab-content">
                                    <ul class="menu-list">
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total-2"><?php echo $text_wishlist; ?></a></li>
                                        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                        <?php if ($logged) { ?>
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                        <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                        <?php } else { ?>
                                        <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                        <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                        <?php } ?>

                                    </ul>
                                </div>
                            </div>
                            <div class="nav-item item-03">
                                <a href="#"><span class="icon icon-search-2"></span></a>
                                <div class="tab-content">
                                    <!-- Search responsive -->
                                    <div class="navbar-search form-inline">
                                        <div id="search1" class="form-group">
                                            <button type="submit" class="button-search-responsive button"><span class="icon-search-2"></span></button>
                                            <input onclick="this.value = '';" name="search1" type="text" class="form-control" value="search" />
                                        </div>
                                    </div>
                                    <!-- //end Search -->
                                </div>
                            </div>
                            <!-- cart mobile -->

                                <?php
                               if (!isset($customisation_products['product_catalog_mode']) || $customisation_products['product_catalog_mode'] != 1) :
                                  echo $cart;
                               endif;
                             ?>



                            <!-- //end cart mobile -->
                        </div>
                    </div>
                    <!-- //end Mobile menu -->

                    <!-- Navbar switcher -->
                    <?php if (!isset($customisation_general["headerspy"]) || $customisation_general["headerspy"] != 0) : ?>
                    <?php if (!isset($customisation_general["spy_type"]) || $customisation_general["spy_type"] != 2 ) : ?>
                    <div class="navbar-switcher-container">
                        <div class="navbar-switcher">
                            <span class="i-inactive">
                                <?php
                                    $customisation_rightimg = $config->get('customisation_rightimg');
                                    if ((isset($customisation_rightimg) && $customisation_rightimg !== '') || (isset($customisation_general["rightimg"]) && $customisation_general["rightimg"] != '') ) {
                                ?>
                                    <img src="image/<?php echo ($store_id != 0 && (isset($customisation_general["rightimg"]) && $customisation_general["rightimg"] != '') ? 'catalog/'.$customisation_general["rightimg"] : $customisation_rightimg); ?>" width="35" height="35" alt="">
                                <?php } else { ?>
                                    <img src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/icon-optimus.png" width="35" height="35" alt="">
                                <?php } ?>
                            </span>
                            <span class="i-active icon-cancel-3"></span>
                        </div>
                    </div>
                    <?php endif; ?>
                    <?php endif; ?>
                    <!-- //end Navbar switcher -->

                </section>

                <?php  if (isset($layout_id) && $layout_id != 1 || isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'kids' || (isset($customisation_topslider["rev_full_status"]) && $customisation_topslider["rev_full_status"] == 0 || isset($customisation_topslider[$lang]["rev_full_html"]) && $customisation_topslider[$lang]["rev_full_html"] == '')) : ?>
                <!-- Navbar height -->
                <div class="navbar-height-inner"></div>
                <!-- Navbar height -->
                <?php endif; ?>


                <!-- Navbar height -->
                <div class="navbar-height"></div>
                <!-- Navbar height -->


            </header>
            <!-- //end Navbar -->


            <!-- Social widgets -->
            <?php if (!isset($customisation_general["quickpanel"]) || $customisation_general["quickpanel"] != 0) : ?>
            <section class="social-widgets hidden-xs">
                <ul class="items">
                    <?php if (isset($customisation_general["facebook"]) && $customisation_general["facebook"] != '') : ?>
                    <li class="item item-01 facebook">
                        <a href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/template/social/facebook.php?account=<?php echo $customisation_general['facebook']; ?>" class="tab-icon"><span class="icon-facebook-3"></span></a>
                        <div class="tab-content">
                            <div class="title"><h6>FACEBOOK</h6></div>
                            <div class="loading">
                                <img src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/ajax-loader.gif" class="ajaxloader" alt="loader">
                            </div>
                        </div>
                    </li>
                    <?php endif; ?>

                    <?php if (isset($customisation_general["twitter"]) && $customisation_general["twitter"] != '') : ?>
                    <li class="item item-02 twitter">
                        <a href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/template/social/twitter.php?account_twitter=<?php echo $customisation_general['twitter']; ?>" class="tab-icon"><span class="icon-twitter-3"></span></a>
                        <div class="tab-content">
                            <div class="title"><h6>TWITTER FEEDS</h6></div>
                            <div class="loading">
                                <img src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/ajax-loader.gif" class="ajaxloader" alt="loader">
                            </div>
                        </div>
                    </li>
                    <?php endif; ?>

                    <?php if (isset($customisation_general["video_code"]) && $customisation_general["video_code"] != '') : ?>
                    <li class="item item-03 youtube">
                        <a href="catalog/view/theme/<?php echo $config->get('config_template'); ?>/template/social/youtubevideo.php?account_video=<?php echo $customisation_general['video_code']; ?>" class="tab-icon"><span class="icon icon-youtube-3"></span></a>
                        <div class="tab-content">
                            <div class="title"><h6>YouTube</h6></div>
                            <div class="loading">
                                <img src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/ajax-loader.gif" class="ajaxloader" alt="loader">
                            </div>
                        </div>
                    </li>
                    <?php endif; ?>
                </ul>
            </section>
            <?php endif; ?>
            <!-- //end Social widgets -->

            <!-- boxed home -->
            <?php if (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed'): ?>
            <div class="container <?php echo ((!empty($customisation_bgall) || !empty($customisation_general["bgall"])) ? 'page-content' : 'boxed_no_bg'); ?>">
            <?php endif; ?>
            <!-- end boxed home -->

                <div id="notification"></div>

                <!-- container section -->
<?php if (isset($layout_id) && $layout_id != 1) : ?>
        <section class="<?php echo ($layout_id == 11 ? '' : 'container'); ?>">
            <div class="<?php echo ($layout_id == 11 ? '' : 'row'); ?>">
                <h2 style="display:none">pages</h2>




<?php endif; ?>




