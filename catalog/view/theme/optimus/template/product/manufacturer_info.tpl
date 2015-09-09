<?php echo $header; ?>
<?php
    global $config, $loader, $registry, $db, $session;

    $store_id = $config->get('config_store_id');

    if ($store_id == 0) {
        $customisation_products = $config->get('customisation_products');
    } else {
        $customisation_products = $config->get('customisation_products_store');

        if (isset($customisation_products["product_listing_type"][$store_id])) {$customisation_products["product_listing_type"] = $customisation_products["product_listing_type"][$store_id];}
        if (isset($customisation_products["izotope_number"][$store_id])) {$customisation_products["izotope_number"] = $customisation_products["izotope_number"][$store_id];}
    }

?>

<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
</div>

<?php if (!isset($customisation_products["product_listing_type"]) || ($customisation_products["product_listing_type"] !== 'big_without_column' && $customisation_products["product_listing_type"] !== 'small_without_column' && $customisation_products["product_listing_type"] !== 'isotope_without_column')) : ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<?php endif; ?>

<section class="<?php echo (!isset($customisation_products["product_listing_type"]) || ($customisation_products["product_listing_type"] !== 'big_without_column' && $customisation_products["product_listing_type"] !== 'small_without_column' && $customisation_products["product_listing_type"] !== 'isotope_without_column' && ($column_left || $column_right)) ? 'col-sm-8 col-md-9 col-lg-9 content-center product-listing' : 'container'); ?>">

<!--content-->
<div id="content">
  <h1><?php echo $heading_title; ?></h1>
    <?php echo $content_top; ?>
    <?php if ($products) { ?>

    <!-- Filters -->
    <div class="product-filter filters-panel">
        <div class="row">
            <div class="sort col-sm-6 col-md-4 col-lg-4"><?php echo $text_sort; ?>
                <div class="btn-group btn-select sort-select sort-isotope">
                    <select class="btn btn-default btn-xs dropdown-toggle" onchange="location = this.value;">
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <div class="col-md-4 col-lg-4 hidden-sm hidden-xs">
                <div class="view-mode">
                    <a class="view-grid active"><span class="icon-th"></span></a>
                    <a class="view-list"><span class="icon-th-list"></span></a>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 hidden-xs">
                <div class="limit pull-right"><?php echo $text_limit; ?>
                    <div class="btn-group btn-select perpage-select">
                        <select class="btn btn-default btn-xs dropdown-toggle" onchange="location = this.value;">
                            <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="divider"></div>
        <div class="pagination"><?php echo $pagination; ?></div>
        <div class="clearfix"></div>


    </div>
    <!-- //end Filters -->

    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>

    <!--changed listings-->
    <div class="<?php echo (isset($customisation_products["product_listing_type"]) ? 'listing_variable_'.$customisation_products["product_listing_type"] : 'no_listing_variable'); ?>">
    <?php if (!isset($customisation_products["product_listing_type"])
    || $customisation_products["product_listing_type"] == 'big_with_column'
    || $customisation_products["product_listing_type"] == 'big_without_column'
    || $customisation_products["product_listing_type"] == 'isotope_with_column'
    || $customisation_products["product_listing_type"] == 'isotope_without_column') {

    if (isset($customisation_products["izotope_number"]) && $customisation_products["izotope_number"] !== '' && ($customisation_products["product_listing_type"] == 'isotope_with_column' || $customisation_products["product_listing_type"] == 'isotope_without_column')) {
        $izotope_numbers = $customisation_products["izotope_number"];
    } else {
       $izotope_numbers = false;
    }
    ?>
    <div class="<?php echo (($customisation_products["product_listing_type"] == 'isotope_with_column' || $customisation_products["product_listing_type"] == 'isotope_without_column') ? 'products-list-isotope' : 'products-list row'); ?>">
    <?php } else { ?>
    <div class="products-list products-list-in-column products-list-small row">
        <?php } ?>
        <?php $m = 0; ?>
        <?php include('catalog/view/theme/listing.php'); ?>
    </div>

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

<!--changed listings-->

<?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php }?>

</div>
<!--end content-->
</section>
<?php echo $content_bottom; ?>

<?php echo $footer; ?>