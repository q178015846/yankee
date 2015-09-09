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
    <?php echo $content_top; ?>

    <h1 class="search_title"><?php echo $heading_title; ?></h1>
    <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
    <div class="row">
        <div class="col-sm-4">
            <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-3">
            <select name="category_id" class="form-control">
                <option value="0"><?php echo $text_category; ?></option>
                <?php foreach ($categories as $category_1) { ?>
                <?php if ($category_1['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                <?php } ?>
                <?php foreach ($category_1['children'] as $category_2) { ?>
                <?php if ($category_2['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                <?php } ?>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <?php if ($category_3['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                <?php } ?>
                <?php } ?>
                <?php } ?>
                <?php } ?>
            </select>
        </div>
        <div class="col-sm-3">
            <label class="checkbox-inline">
                <?php if ($sub_category) { ?>
                <input type="checkbox" name="sub_category" value="1" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="sub_category" value="1" />
                <?php } ?>
                <?php echo $text_sub_category; ?></label>
        </div>
    </div>
    <p class="search_in_descr">
        <label class="checkbox-inline">
            <?php if ($description) { ?>
            <input type="checkbox" name="description" value="1" id="description" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="description" value="1" id="description" />
            <?php } ?>
            <?php echo $entry_description; ?></label>
    </p>
    <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-mega" />
    <h2 class="text_search"><?php echo $text_search; ?></h2>

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
  <?php }?>
</div>
<!--end content-->
</section>
<?php echo $content_bottom; ?>

<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').prop('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').prop('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>