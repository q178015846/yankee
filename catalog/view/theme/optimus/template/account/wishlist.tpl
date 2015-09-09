<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row">
      <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($products) { ?>
        <div class="shopping-cart wishlist-page">
            <table>
                <thead>
                <tr class="hidden-xs">
                    <th></th>
                    <td class="text-center"><?php echo $column_image; ?></td>
                    <td class="text-left"><?php echo $column_name; ?></td>
                    <td class="text-left"><?php echo $column_model; ?></td>
                    <td class="text-right"><?php echo $column_stock; ?></td>
                    <td class="text-right"><?php echo $column_price; ?></td>
                    <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($products as $product) { ?>
                <tr>
                    <td>
                        <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="remove-button hidden-xs">
                            <span class="icon-cancel-2"></span>
                        </a>

                    </td>
                    <td class="text-center">
                        <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="remove-button visible-xs"><span class="icon-cancel-2 "></span></a>
                        <?php if ($product['thumb']) { ?>
                        <a href="<?php echo $product['href']; ?>"><img class="img-thumbnail" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?>

                        <button type="button" onclick="cart_theme.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary visible-xs cart_add_wishlist">
                            <i class="fa fa-shopping-cart"></i>
                        </button>

                    </td>
                    <td class="text-left">
                        <span class="td-name visible-xs"><?php echo $column_name; ?></span>
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </td>
                    <td class="text-left"><span class="td-name visible-xs"><?php echo $column_model; ?></span><?php echo $product['model']; ?></td>
                    <td class="text-right"><span class="td-name visible-xs"><?php echo $column_stock; ?></span><?php echo $product['stock']; ?></td>
                    <td class="text-right">
                        <?php if ($product['price']) { ?>
                            <span class="td-name visible-xs"><?php echo $column_price; ?></span>
                            <?php if (!$product['special']) { ?>
                                <span class="price"><?php echo $product['price']; ?></span>
                            <?php } else { ?>
                                <span class="price old price-old"><?php echo $product['price']; ?></span>
                                <span class="price new price-new"><?php echo $product['special']; ?></span>
                            <?php } ?>
                        <?php } ?>
                    </td>
                    <td class="text-right">
                        <button type="button" onclick="cart_theme.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary hidden-xs">
                            <i class="fa fa-shopping-cart"></i>
                        </button>

                    </td>
                </tr>
                <?php } ?>
                </tbody>
            </table>

        </div>

      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 