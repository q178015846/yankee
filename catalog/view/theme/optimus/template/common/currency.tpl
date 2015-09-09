<?php
if (count($currencies) > 1) :
global $config;

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
<!--main currency-->
<div class="btn-group compact-hidden btn-hidden currency-box currency-desktop">
    <a class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
        <span class="icon icon-credit "></span>
        <?php
        if ($header_type != 2 && $header_type != 3) :
        foreach ($currencies as $currency) : if ($currency['code'] == $code) :  echo $currency['title']; endif;  endforeach;
        endif;
        ?>
        <span class="caret"></span>
    </a>
            <div class="dropdown-menu currency_dropdown" role="menu">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <?php foreach ($currencies as $currency) : ?>
                    <?php
                     if ($currency['symbol_left']) {
                     $currency_symbol = $currency['symbol_left'];
                     } else {
                     $currency_symbol = $currency['symbol_right'];
                     }
                     ?>
                            <div class="top_block">
                                <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();">(<?php echo $currency_symbol; ?>)
                                    &nbsp;<?php echo $currency['title']; ?>
                                </a>
                            </div>
                    <?php endforeach; ?>
                    <input type="hidden" name="code" value="" />
                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                </form>


            </div>
</div>
<!--//main currency-->


<!-- mobile currency-->
<div class="btn-group visible-xs currency-box currency-mobile currency_wrapper">
    <button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
        <?php foreach ($currencies as $currency) { ?>
        <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
        <strong><?php echo $currency['symbol_left']; ?></strong>
        <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
        <strong><?php echo $currency['symbol_right']; ?></strong>
        <?php } ?>
        <?php } ?>
        <span class="caret"></span>
    </button>


    <div class="dropdown-menu currency_dropdown" role="menu">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <?php foreach ($currencies as $currency) : ?>
            <?php
                     if ($currency['symbol_left']) {
                     $currency_symbol = $currency['symbol_left'];
                     } else {
                     $currency_symbol = $currency['symbol_right'];
                     }
                     ?>
            <div class="top_block">
                <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();">(<?php echo $currency_symbol; ?>)
                    &nbsp;<?php echo $currency['title']; ?>
                </a>
            </div>
            <?php endforeach; ?>
            <input type="hidden" name="code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>


    </div>

</div>
<!-- mobile currency-->
<?php endif; ?>









