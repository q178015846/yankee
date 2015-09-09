<?php
    echo $header;
    global $config;

    $lang = $config->get('config_language_id');
    $store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
    $customisation_colors = $config->get('customisation_colors');
    $customisation_topslider = $config->get('customisation_topslider');
} else {
    $customisation_general = $config->get('customisation_general_store');
    $customisation_colors = $config->get('customisation_colors_store');
    $customisation_topslider = $config->get('customisation_topslider_store');


    if (isset($customisation_general["homepage_mode"][$store_id])) {$customisation_general["homepage_mode"] = $customisation_general["homepage_mode"][$store_id];}
    if (isset($customisation_colors["layout_skin"][$store_id])) {$customisation_colors["layout_skin"] = $customisation_colors["layout_skin"][$store_id];}
    if (isset($customisation_topslider["rev_full_status"][$store_id])) {$customisation_topslider["rev_full_status"] = $customisation_topslider["rev_full_status"][$store_id];}
    if (isset($customisation_topslider["rev_boxed_status"][$store_id])) {$customisation_topslider["rev_boxed_status"] = $customisation_topslider["rev_boxed_status"][$store_id];}
    if (isset($customisation_topslider["simple_status"][$store_id])) {$customisation_topslider["simple_status"] = $customisation_topslider["simple_status"][$store_id];}
    if (isset($customisation_topslider["simple_banner_status"][$store_id])) {$customisation_topslider["simple_banner_status"] = $customisation_topslider["simple_banner_status"][$store_id];}

    if (isset($customisation_topslider[$lang]["rev_full_html"][$store_id])) {$customisation_topslider[$lang]["rev_full_html"] = $customisation_topslider[$lang]["rev_full_html"][$store_id];}
    if (isset($customisation_topslider[$lang]["rev_boxed_html"][$store_id])) {$customisation_topslider[$lang]["rev_boxed_html"] = $customisation_topslider[$lang]["rev_boxed_html"][$store_id];}
    if (isset($customisation_topslider[$lang]["simple_html"][$store_id])) {$customisation_topslider[$lang]["simple_html"] = $customisation_topslider[$lang]["simple_html"][$store_id];}
    if (isset($customisation_topslider[$lang]["simple_banners_html"][$store_id])) {$customisation_topslider[$lang]["simple_banners_html"] = $customisation_topslider[$lang]["simple_banners_html"][$store_id];}


}

?>

<?php if (!isset($customisation_topslider["rev_full_status"]) && !isset($customisation_topslider["rev_boxed_status"]) && !isset($customisation_topslider["simple_status"]) && !isset($customisation_topslider["simple_banners_status"])) { ?>

<!--default Top Slider full width-->
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.rw-preloader.js"></script>
<script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.rw-slider.js"></script>

<section class="main-slider rw-slider">
    <ul>
        <li>
            <a href="index.html"><img src="image/catalog/TopSlider/slider-main-back-01.jpg" data-rw-slider="main: true; move: true;" alt="" /></a>
            <a href="index.html" class="title-slide-01">
                <span class="big">Sale</span>
                <span class="middle">up to 40% OFF</span>
            </a>
        </li>
        <li>
            <a href="index.html"><img src="image/catalog/TopSlider/slider-main-back-02s.jpg" data-rw-slider="main: true; move: true;" alt="" /></a>
            <a href="index.html" class="title-slide-02">
                <span class="big">New</span>
                <span class="small">collection</span>
                <span class="middle">AUTUMN 2014</span>
            </a>
        </li>
        <li>
            <a href="index.html"><img src="image/catalog/TopSlider/slider-main-back-03.jpg" data-rw-slider="main: true; move: true;" alt="" /></a>
            <a href="index.html" class="title-slide-03">
                <span class="big">Special offer</span>
                <span class="middle">Save money with Lingerie SALE</span>
                <span class="small">Up to 50% OFF</span>
            </a>
        </li>
    </ul>
    <h3 style="display:none">revolution full-width slider</h3>
    <a class="control prev animate-scale"><span class="icon-arrow-left-5">&nbsp;</span></a>
    <a class="control next animate-scale"><span class="icon-untitled">&nbsp;</span></a>
    <a class="scroll-down animate-move-down"><span class="icon icon-arrow-down">&nbsp;</span> scroll to view content </a>
</section>
<!--end default Top Slider full width-->

<?php } else { ?>

    <?php  if ($customisation_topslider["rev_full_status"] != 0 && isset($customisation_topslider[$lang]["rev_full_html"]) && $customisation_topslider[$lang]["rev_full_html"] != '') : ?>
    <!--Top Slider full width-->
    <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.rw-preloader.js"></script>
        <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.rw-slider.js"></script>

        <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'kids') : ?>
            <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.themepunch.plugins.min.js"></script>
            <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.themepunch.revolution.js"></script>
            <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/revolution-slider-options-kids.js"></script>
        <?php endif; ?>


        <section class="main-slider <?php echo ((isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'kids') ? '' : 'rw-slider'); ?>">
            <?php echo (is_string($customisation_topslider[$lang]["rev_full_html"]) ? html_entity_decode($customisation_topslider[$lang]["rev_full_html"], ENT_QUOTES, 'UTF-8') : ''); ?>
            <h3 style="display:none">revolution full-width slider</h3>
        </section>
    <!--Top Slider full width-->
    <?php endif; ?>


    <?php  if ($customisation_topslider["rev_boxed_status"] != 0 && isset($customisation_topslider[$lang]["rev_boxed_html"]) && $customisation_topslider[$lang]["rev_boxed_html"] != '') : ?>
        <!--Top Revolution Slider boxed width-->
        <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.themepunch.plugins.min.js"></script>
        <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/jquery.themepunch.revolution.js"></script>
        <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'food') { ?>
            <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/revolution-slider-options-food.js"></script>
        <?php } else { ?>
            <script src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/js/revolution-slider-options.js"></script>
        <?php } ?>

        <div class="<?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? '' : 'container'); ?>">
            <div class="fullwidthbanner-container">
                <div class="fullwidthbanner">
                   <?php echo (is_string($customisation_topslider[$lang]["rev_boxed_html"]) ? html_entity_decode($customisation_topslider[$lang]["rev_boxed_html"], ENT_QUOTES, 'UTF-8') : ''); ?>
                </div>
            </div>
        </div>
        <!--end Top Revolution Slider boxed width-->
    <?php endif; ?>

    <?php  if ($customisation_topslider["simple_status"] != 0 && isset($customisation_topslider[$lang]["simple_html"]) && $customisation_topslider[$lang]["simple_html"] != '') : ?>
        <!--Top Simple Slider boxed width-->
        <section class="main-slider <?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? '' : 'container'); ?>">
            <div class="owl-slider-outer">
                <div class="owl-slider">
                    <?php echo (is_string($customisation_topslider[$lang]["simple_html"]) ? html_entity_decode($customisation_topslider[$lang]["simple_html"], ENT_QUOTES, 'UTF-8') : ''); ?>
                </div>
            </div>
            <h3 style="display:none">simple Flex slider</h3>
        </section>
        <!--end Top Simple Slider boxed width-->
    <?php endif; ?>

    <?php if ($customisation_topslider["simple_banner_status"] != 0 && isset($customisation_topslider[$lang]["simple_banners_html"]) && $customisation_topslider[$lang]["simple_banners_html"] != '') : ?>
    <!--Top Simple Slider with banners boxed width-->
         <section class="main-slider <?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'overflow_hidden' : 'container'); ?> hidden-xs">
             <?php echo (is_string($customisation_topslider[$lang]["simple_banners_html"]) ? html_entity_decode($customisation_topslider[$lang]["simple_banners_html"], ENT_QUOTES, 'UTF-8') : ''); ?>
             <h3 style="display:none">simple Flex slider with banners</h3>

         </section>
    <!--end Top Simple Slider with banners boxed width-->
    <?php endif; ?>


<?php } ?>

<div class="<?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'boxed_content_top' : 'container'); ?>">
    <?php echo $content_top; ?>
</div>

<!-- Two columns content -->
<div class="<?php echo ($column_left ? (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? '' : 'container').' content' : ''); ?>">
    <div class="<?php echo ($column_left ? 'row' : ''); ?>">
    <?php echo $column_left; ?>

<?php if ($column_right) : ?>
    <section class="<?php echo ($column_left ? 'col-sm-8 col-md-9 col-lg-9 content-center' : ''); ?> content right_column">
        <?php echo $column_right; ?>
    </section>
<?php endif; ?>

    </div>
</div>



<?php echo $content_bottom; ?>

<?php echo $footer; ?>