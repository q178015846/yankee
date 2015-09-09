<?php echo $header; ?>
<?php global $config; ?>

<div class="container page-cart">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-8 col-lg-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <div class="content-box">
            <div class="shopping-cart">
                <img class="back img-responsive" src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/shopping-cart-back.png" alt="">
                <div class="box">
                    <h1><?php echo $heading_title; ?>
                        <?php if ($weight) { ?>
                        &nbsp;(<?php echo $weight; ?>)
                        <?php } ?>
                    </h1>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <table>
                                <thead>
                                <tr class="hidden-xs">
                                    <th></th>
                                    <th></th>
                                    <th><?php echo $column_name; ?></th>
                                    <th><?php echo $column_model; ?></th>
                                    <th><?php echo $column_quantity; ?></th>
                                    <th><?php echo $column_price; ?></th>
                                    <th><?php echo $column_total; ?></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td>
                                        <a onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" class="remove-button hidden-xs">
                                            <span class="icon-cancel-2"></span>
                                        </a>
                                    </td>
                                    <td>
                                        <a onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" class="remove-button visible-xs"><span class="icon-cancel-2 "></span></a>
                                        <?php if ($product['thumb']) { ?>
                                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <span class="td-name visible-xs"><?php echo $column_name; ?></span>
                                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php if (!$product['stock']) { ?>
                                        <span class="text-danger">***</span>
                                        <?php } ?>
                                        <?php if ($product['option']) { ?>
                                        <?php foreach ($product['option'] as $option) { ?>
                                        <br />
                                        <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                        <?php } ?>
                                        <?php } ?>
                                        <?php if ($product['reward']) { ?>
                                        <br />
                                        <small><?php echo $product['reward']; ?></small>
                                        <?php } ?>
                                        <?php if ($product['recurring']) { ?>
                                        <br />
                                        <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <span class="td-name visible-xs"><?php echo $column_model; ?></span>
                                        <?php echo $product['model']; ?>
                                    </td>
                                    <td>
                                        <span class="td-name td-name-qty visible-xs"><?php echo $column_quantity; ?></span>
                                        <div class="input-group btn-block" style="max-width: 200px">
                                            <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control qty_field" />
                                            <span class="input-group-btn btn_refresh">
                                            <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                                            </span>
                                        </div>
                                    </td>
                                    <td><span class="td-name visible-xs"><?php echo $column_price; ?></span><?php echo $product['price']; ?></td>
                                    <td><span class="td-name visible-xs"><?php echo $column_total; ?></span><?php echo $product['total']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php foreach ($vouchers as $vouchers) { ?>
                                <tr>
                                    <td></td>
                                    <td class="text-left"><?php echo $vouchers['description']; ?></td>
                                    <td class="text-left"></td>
                                    <td class="text-left">
                                        <div class="input-group btn-block" style="max-width: 200px;">
                                            <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control qty_field" />
                                            <span class="input-group-btn btn_refresh">
                                                <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');">
                                                    <i class="fa fa-times-circle"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </td>
                                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                    </form>

                </div>
            </div>
        </div>



      <?php if ($coupon || $voucher || $reward || $shipping) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <div class="buttons">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-mega"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-mega"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>

</div>
<?php echo $footer; ?> 