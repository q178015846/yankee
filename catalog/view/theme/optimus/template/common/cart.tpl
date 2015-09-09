<?php
    global $config;
    $text_items_full = explode(" ", $text_items);
    $text_items_number = $text_items_full[0];


    $store_id = $config->get('config_store_id');

    if ($store_id == 0) {
        $customisation_general = $config->get('customisation_general');
        $header_type = (isset($customisation_general['header_type']) ? $customisation_general['header_type'] : 4);
    } else {
        $customisation_general = $config->get('customisation_general_store');
        if (isset($customisation_general["header_type"][$store_id])) {$customisation_general["header_type"] = $customisation_general["header_type"][$store_id];}
        $header_type = (isset($customisation_general['header_type']) ? $customisation_general['header_type'] : 4);
    }

?>

<div class="cart_module cart_desktop nav-item item-04 cart btn-group btn-shopping-cart">
  <a data-loading-text="<?php echo $text_loading; ?>" class="top_cart btn btn-xs btn-default77 dropdown-toggle77" data-toggle="dropdown">
      <?php if ($header_type != 2 && $header_type != 3): ?>
      <span class="compact-hidden text-shopping-cart cart-total-full">
          <?php echo $text_items; ?>
      </span>
      <?php endif; ?>
      <span class="icon-xcart-animate icon-xcart-white">
          <span class="box cart-counter cart-total-number"><?php echo $text_items_number; ?></span>
          <span class="handle"></span>
      </span>
  </a>

  <ul class="tab-content content dropdown-menu pull-right shoppingcart-box" role="menu">
      <?php if ($products || $vouchers) { ?>
      <li>
          <div class="added_items"><?php echo (count($products) <= 3 ? '' : 'Last 3 added item(s) from '.count($products)) ; ?></div>
      </li>
      <li>
          <table class="table table-striped">

              <?php
         $i = 0;
         $products1 = array_reverse($products);
         ?>
              <?php foreach ($products1 as $product) : ?>
              <?php $i ++; ?>
                  <?php if ($i < 4): ?>
                  <tr>
                      <td class="text-center">
                          <?php if ($product['thumb']) { ?>
                            <a href="<?php echo $product['href']; ?>">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="preview" />
                            </a>
                          <?php } ?>
                      </td>
                      <td class="text-left">
                          <a class="cart_product_name" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                          <?php if ($product['option']) { ?>
                          <?php foreach ($product['option'] as $option) { ?>
                          <br />
                          - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                          <?php } ?>
                          <?php } ?>
                          <?php if ($product['recurring']) { ?>
                          <br />
                          - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                          <?php } ?>
                          <br />
                          <?php echo $product['quantity']; ?> x <?php echo $product['total']; ?>
                      </td>
                      <td class="text-right">
                          <a href="<?php echo $product['href']; ?>" class="icon icon-edit"></a>
                      </td>
                      <td class="text-right">
                          <a onclick="cart_theme.remove('<?php echo $product['key']; ?>');" class="icon icon-trash-2"></a>
                      </td>
                  </tr>
                  <?php endif; ?>
              <?php endforeach; ?>
              <?php foreach ($vouchers as $voucher) { ?>
              <tr>
                  <td class="text-center"></td>
                  <td class="text-left"><?php echo $voucher['description']; ?></td>
                  <td class="text-right">x&nbsp;1</td>
                  <td class="text-right"><?php echo $voucher['amount']; ?></td>
                  <td class="text-center text-danger">
                      <button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs">
                          <i class="fa fa-times"></i>
                      </button>
                  </td>
              </tr>
              <?php } ?>
          </table>
      </li>
      <li>
          <div>
              <table class="table table-bordered">
                  <?php foreach ($totals as $total) { ?>
                  <tr>
                      <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                      <td class="text-right"><?php echo $total['text']; ?></td>
                  </tr>
                  <?php } ?>
              </table>
              <p class="text-right">
                  <a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>&nbsp;&nbsp;&nbsp;
                  <a class="btn btn-mega" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
              </p>
          </div>
      </li>
      <?php } else { ?>
      <li>
          <p class="text-center"><?php echo $text_empty; ?></p>
      </li>
      <?php } ?>
  </ul>
</div>
