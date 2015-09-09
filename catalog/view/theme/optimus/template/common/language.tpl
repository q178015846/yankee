<?php
if (count($languages) > 1) :
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
<!-- desktop language-->
<div class="btn-group compact-hidden btn-hidden language-box language-desktop">
    <a class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
        <span class="icon icon-bubbles"></span>
        <?php
        if ($header_type != 2 && $header_type != 3) :
        foreach ($languages as $language) : if ($language['code'] == $code) : echo $language['name'];  endif; endforeach;
        endif;
        ?>
        <span class="caret"></span>
    </a>

    <div class="dropdown-menu language language_dropdown" role="menu">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <?php foreach ($languages as $language) { ?>
            <div class="top_block">
                <a onclick="$('input[name=\'code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
                    <img class="image_flag" src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
                    <?php echo $language['name']; ?>
                </a>
            </div>
            <?php } ?>
            <input type="hidden" name="code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
    </div>
</div>
<!-- desktop language-->
<!-- mobile language-->
    <div class="btn-group visible-xs language-box language-mobile">
        <button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
            <?php foreach ($languages as $language) : if ($language['code'] == $code) : echo $language['code'];  endif; endforeach; ?>
            <span class="caret"></span>
        </button>
        <div class="dropdown-menu language language_dropdown" role="menu">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <?php foreach ($languages as $language) { ?>
                <div class="top_block">
                    <a onclick="$('input[name=\'code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
                        <img class="image_flag" src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
                        <?php echo $language['name']; ?>
                    </a>
                </div>
                <?php } ?>
                <input type="hidden" name="code" value="" />
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            </form>
        </div>
    </div>
<!-- mobile language-->
<?php endif; ?>
