<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <a onclick="buttonApply();" data-toggle="tooltip" title="Apply Changes" class="btn btn-default"><i class="fa fa-plus-circle"></i></a>
                <button type="submit" form="form-optimus" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
                <h1>Optimus theme configuration options</h1>
                <ul class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ul>
        </div>
    </div>

    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
                <a class="products_button" href="<?php echo $mproduct; ?>">Optimus Additional Products Options</a>
                <a class="products_button" href="<?php echo $mcategory; ?>">Optimus Additional Categories Options</a>
            </div>
            <div class="panel-body">
                <form name="settingsform" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-optimus" class="form-horizontal">

                <div class="form-horizontal row">
                    <ul class="nav nav-tabs main_tabs_vertical store_tabs col-sm-2">
                        <li class="active"><a href="#tab-store0" data-toggle="tab">Default Store</a></li>
                        <?php if (sizeof($stores) != 0) : ?>
                            <?php foreach ($stores as $store) : ?>
                                <li><a href="#tab-store<?php echo $store['store_id']; ?>" data-toggle="tab"><?php echo $store["name"]; ?></a></li>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </ul>
                    <div class="tab-content col-sm-10">
                        <div class="tab-pane active" id="tab-store0">
                            <?php $store["store_id"] = 0; ?>
                            <?php include('options_stores_default.php'); ?>
                        </div>
                        <?php if (sizeof($stores) != 0) : ?>
                            <?php foreach ($stores as $store) : ?>
                                <div class="tab-pane" id="tab-store<?php echo $store['store_id']; ?>">
                                    <?php include('options_stores.php'); ?>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>

                </div>


                <input type="hidden" name="buttonForm" value="" />
                </form>


            </div>
        </div>

    </div>

</div>


<script type="text/javascript"><!--
jQuery(document).ready(function(){


    /* initialisation of store 0 default */
    <?php foreach ($languages as $language) : ?>
    $('#input-description-contactpopup<?php echo $language['language_id']; ?>-0').summernote({height: 300});
    $('#input-description-customblock<?php echo $language['language_id']; ?>-0').summernote({height: 300});

    $('#input-rev_full_html<?php echo $language['language_id']; ?>-0').summernote({height: 300});
    $('#input-rev_boxed_html<?php echo $language['language_id']; ?>-0').summernote({height: 300});
    $('#input-simple_html<?php echo $language['language_id']; ?>-0').summernote({height: 300});
    $('#input-simple_banners_html<?php echo $language['language_id']; ?>-0').summernote({height: 300});
    <?php endforeach; ?>





    jQuery("#customisation_products_sale_label_bg0").ColorPicker({
        color: jQuery("#customisation_products_sale_label_bg0").val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery("#customisation_products_sale_label_bg0").css('backgroundColor', '#' + hex);
            jQuery("#customisation_products_sale_label_bg0").val('#' + hex);
        }
    });
    jQuery("#customisation_products_new_label_bg0").ColorPicker({
        color: jQuery('#customisation_products_new_label_bg0').val(),
            onShow: function (colpkr) {
        jQuery(colpkr).fadeIn(500);
        return false;
    },
    onHide: function (colpkr) {
        jQuery(colpkr).fadeOut(500);
        return false;
    },
    onChange: function (hsb, hex, rgb) {
        jQuery('#customisation_products_new_label_bg0').css('backgroundColor', '#' + hex);
        jQuery('#customisation_products_new_label_bg0').val('#' + hex);
    }
});
jQuery("#customisation_products_discount_label_bg0").ColorPicker({
    color: jQuery('#customisation_products_discount_label_bg0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_products_discount_label_bg0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_products_discount_label_bg0').val('#' + hex);
}
});

jQuery("#customisation_colors_general_themecolor0").ColorPicker({
    color: jQuery('#customisation_colors_general_themecolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_themecolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_themecolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_general_input0").ColorPicker({
    color: jQuery('#customisation_colors_general_input0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_input0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_input0').val('#' + hex);
}
});
jQuery("#customisation_colors_general_text0").ColorPicker({
    color: jQuery('#customisation_colors_general_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_text0').val('#' + hex);
}
});
jQuery("#customisation_colors_general_link0").ColorPicker({
    color: jQuery('#customisation_colors_general_link0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_link0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_link0').val('#' + hex);
}
});
jQuery("#customisation_colors_general_linkhover0").ColorPicker({
    color: jQuery('#customisation_colors_general_linkhover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_linkhover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_linkhover0').val('#' + hex);
}
});
jQuery("#customisation_colors_general_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_general_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_general_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_general_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_captions_text0").ColorPicker({
    color: jQuery('#customisation_colors_captions_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_captions_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_captions_text0').val('#' + hex);
}
});



jQuery("#customisation_colors_topline_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_topline_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_topline_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_topline_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_topline_phonecolor0").ColorPicker({
    color: jQuery('#customisation_colors_topline_phonecolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_topline_phonecolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_topline_phonecolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_dd_ink0").ColorPicker({
    color: jQuery('#customisation_colors_dd_ink0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_dd_ink0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_dd_ink0').val('#' + hex);
}
});
jQuery("#customisation_colors_dd_linkhover0").ColorPicker({
    color: jQuery('#customisation_colors_dd_linkhover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_dd_linkhover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_dd_linkhover0').val('#' + hex);
}
});
jQuery("#customisation_colors_dd_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_dd_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_dd_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_dd_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_dd_border0").ColorPicker({
    color: jQuery('#customisation_colors_dd_border0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_dd_border0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_dd_border0').val('#' + hex);
}
});
jQuery("#customisation_colors_headernav_text0").ColorPicker({
    color: jQuery('#customisation_colors_headernav_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_headernav_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_headernav_text0').val('#' + hex);
}
});
jQuery("#customisation_colors_headernav_link0").ColorPicker({
    color: jQuery('#customisation_colors_headernav_link0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_headernav_link0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_headernav_link0').val('#' + hex);
}
});
jQuery("#customisation_colors_headernav_linkhover0").ColorPicker({
    color: jQuery('#customisation_colors_headernav_linkhover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_headernav_linkhover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_headernav_linkhover0').val('#' + hex);
}
});
jQuery("#customisation_colors_top_menu_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_top_menu_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_top_menu_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_top_menu_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_headernav_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_headernav_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_headernav_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_headernav_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_content_border_color0").ColorPicker({
    color: jQuery('#customisation_colors_content_border_color0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_content_border_color0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_content_border_color0').val('#' + hex);
}
});
jQuery("#customisation_colors_content_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_content_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_content_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_content_bgcolor0').val('#' + hex);
}
});


jQuery("#customisation_colors_footerinfo_text0").ColorPicker({
    color: jQuery('#customisation_colors_footerinfo_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_text0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerinfo_link0").ColorPicker({
    color: jQuery('#customisation_colors_footerinfo_link0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_link0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_link0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerinfo_linkhover0").ColorPicker({
    color: jQuery('#customisation_colors_footerinfo_linkhover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_linkhover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_linkhover0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerinfo_captions0").ColorPicker({
    color: jQuery('#customisation_colors_footerinfo_captions0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_captions0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_captions0').val('#' + hex);
}
});

jQuery("#customisation_colors_footerinfo_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_footerinfo_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerinfo_linecolor0").ColorPicker({
    color: jQuery('#customisation_colors_content_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerinfo_linecolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerinfo_linecolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_footer_text0").ColorPicker({
    color: jQuery('#customisation_colors_footer_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footer_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footer_text0').val('#' + hex);
}
});
jQuery("#customisation_colors_footer_link0").ColorPicker({
    color: jQuery('#customisation_colors_footer_link0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footer_link0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footer_link0').val('#' + hex);
}
});
jQuery("#customisation_colors_footer_link_hover0").ColorPicker({
    color: jQuery('#customisation_colors_footer_link_hover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footer_link_hover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footer_link_hover0').val('#' + hex);
}
});
jQuery("#customisation_colors_footer_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_footer_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footer_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footer_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerpopup_text0").ColorPicker({
    color: jQuery('#customisation_colors_footerpopup_text0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerpopup_text0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerpopup_text0').val('#' + hex);
}
});


jQuery("#customisation_colors_footerpopup_captions0").ColorPicker({
    color: jQuery('#customisation_colors_footerpopup_captions0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerpopup_captions0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerpopup_captions0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerpopup_link0").ColorPicker({
    color: jQuery('#customisation_colors_footerpopup_link0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerpopup_link0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerpopup_link0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerpopup_linkhover0").ColorPicker({
    color: jQuery('#customisation_colors_footerpopup_linkhover0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerpopup_linkhover0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerpopup_linkhover0').val('#' + hex);
}
});
jQuery("#customisation_colors_footerpopup_bgcolor0").ColorPicker({
    color: jQuery('#customisation_colors_footerpopup_bgcolor0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_footerpopup_bgcolor0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_footerpopup_bgcolor0').val('#' + hex);
}
});
jQuery("#customisation_colors_price_regular0").ColorPicker({
    color: jQuery('#customisation_colors_price_regular0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_price_regular0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_price_regular0').val('#' + hex);
}
});
jQuery("#customisation_colors_price_new0").ColorPicker({
    color: jQuery('#customisation_colors_price_new0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_price_new0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_price_new0').val('#' + hex);
}
});
jQuery("#customisation_colors_price_old0").ColorPicker({
    color: jQuery('#customisation_colors_price_old0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_price_old0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_price_old0').val('#' + hex);
}
});

jQuery(function(){
    fontSelect=jQuery("#customisation_colors_price_font0");
    fontUpdate=function(){
        curFont=jQuery("#customisation_colors_price_font0").val();
        jQuery("#customisation_colors_price_font_preview0").css({ fontFamily: curFont });
        if (curFont != '-') {
            jQuery("<link />",{href:"//fonts.googleapis.com/css?family="+curFont,rel:"stylesheet",type:"text/css"}).appendTo("head");
        }
    }
    fontSelect.change(function(){
        fontUpdate();
    }).keyup(function(){
                fontUpdate();
            }).keydown(function(){
                fontUpdate();
            });
    jQuery("#customisation_colors_price_font0").trigger("change");
    fontUpdate();
});

jQuery("#customisation_colors_captions_font0").val(jQuery("#customisation_colors_captions_font0").data("active")).attr('selected', true);
jQuery("#customisation_colors_price_font0").val(jQuery("#customisation_colors_price_font0").data("active")).attr('selected', true);

jQuery(function(){
    fontSelect=jQuery("#customisation_colors_captions_font0");
    fontUpdate_captions=function(){
        curFont=jQuery("#customisation_colors_captions_font0").val();
        jQuery("#customisation_colors_captions_font_preview0").css({ fontFamily: curFont });
        if (curFont != '-') {
            jQuery("<link />",{href:"//fonts.googleapis.com/css?family="+curFont,rel:"stylesheet",type:"text/css"}).appendTo("head");
        }

    }
    fontSelect.change(function(){
        fontUpdate_captions();
    }).keyup(function(){
                fontUpdate_captions();
            }).keydown(function(){
                fontUpdate_captions();
            });
    jQuery("#customisation_colors_captions_font0").trigger("change");
    fontUpdate_captions();
});

jQuery("#customisation_colors_product_border0").ColorPicker({
    color: jQuery('#customisation_colors_product_border0').val(),
        onShow: function (colpkr) {
    jQuery(colpkr).fadeIn(500);
    return false;
},
onHide: function (colpkr) {
    jQuery(colpkr).fadeOut(500);
    return false;
},
onChange: function (hsb, hex, rgb) {
    jQuery('#customisation_colors_product_border0').css('backgroundColor', '#' + hex);
    jQuery('#customisation_colors_product_border0').val('#' + hex);
}
});


/* end initialisation of store 0 default */

    /* stores */
    <?php if (sizeof($stores) != 0) : ?>
    <?php foreach ($stores as $store) : ?>


    /**************************************************** initialisation for multstore options begin */
    jQuery("#customisation_products_sale_label_bg<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery("#customisation_products_sale_label_bg<?php echo $store['store_id']; ?>").val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery("#customisation_products_sale_label_bg<?php echo $store['store_id']; ?>").css('backgroundColor', '#' + hex);
            jQuery("#customisation_products_sale_label_bg<?php echo $store['store_id']; ?>").val('#' + hex);
        }
    });
    jQuery("#customisation_products_new_label_bg<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_products_new_label_bg<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_products_new_label_bg<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_products_new_label_bg<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_products_discount_label_bg<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_products_discount_label_bg<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_products_discount_label_bg<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_products_discount_label_bg<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });

    jQuery("#customisation_colors_general_themecolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_themecolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_themecolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_themecolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_general_input<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_input<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_input<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_input<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_general_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_general_link<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_link<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_link<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_link<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_general_linkhover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_linkhover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_linkhover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_linkhover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_general_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_general_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_general_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_general_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_captions_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_captions_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_captions_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_captions_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });



    jQuery("#customisation_colors_topline_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_topline_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_topline_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_topline_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_topline_phonecolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_topline_phonecolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_topline_phonecolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_topline_phonecolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_dd_ink<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_dd_ink<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_dd_ink<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_dd_ink<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_dd_linkhover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_dd_linkhover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_dd_linkhover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_dd_linkhover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_dd_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_dd_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_dd_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_dd_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_dd_border<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_dd_border<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_dd_border<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_dd_border<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_headernav_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_headernav_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_headernav_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_headernav_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_headernav_link<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_headernav_link<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_headernav_link<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_headernav_link<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_headernav_linkhover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_headernav_linkhover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_headernav_linkhover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_headernav_linkhover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_top_menu_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_top_menu_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_top_menu_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_top_menu_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_headernav_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_headernav_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_headernav_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_headernav_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_content_border_color<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_content_border_color<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_content_border_color<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_content_border_color<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_content_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_content_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_content_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_content_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });


    jQuery("#customisation_colors_footerinfo_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerinfo_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerinfo_link<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerinfo_link<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_link<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_link<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerinfo_linkhover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerinfo_linkhover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_linkhover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_linkhover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerinfo_captions<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerinfo_captions<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_captions<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_captions<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });

    jQuery("#customisation_colors_footerinfo_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerinfo_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerinfo_linecolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_content_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerinfo_linecolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerinfo_linecolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footer_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footer_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footer_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footer_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footer_link<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footer_link<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footer_link<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footer_link<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footer_link_hover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footer_link_hover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footer_link_hover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footer_link_hover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footer_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footer_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footer_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footer_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerpopup_text<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerpopup_text<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerpopup_text<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerpopup_text<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });


    jQuery("#customisation_colors_footerpopup_captions<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerpopup_captions<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerpopup_captions<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerpopup_captions<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerpopup_link<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerpopup_link<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerpopup_link<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerpopup_link<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerpopup_linkhover<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerpopup_linkhover<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerpopup_linkhover<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerpopup_linkhover<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_footerpopup_bgcolor<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_footerpopup_bgcolor<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_footerpopup_bgcolor<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_footerpopup_bgcolor<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_price_regular<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_price_regular<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_price_regular<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_price_regular<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_price_new<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_price_new<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_price_new<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_price_new<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });
    jQuery("#customisation_colors_price_old<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_price_old<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_price_old<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_price_old<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });

    jQuery(function(){
        fontSelect=jQuery("#customisation_colors_price_font<?php echo $store['store_id']; ?>");
        fontUpdate=function(){
            curFont=jQuery("#customisation_colors_price_font<?php echo $store['store_id']; ?>").val();
            jQuery("#customisation_colors_price_font_preview<?php echo $store['store_id']; ?>").css({ fontFamily: curFont });
            if (curFont != '-') {
                jQuery("<link />",{href:"//fonts.googleapis.com/css?family="+curFont,rel:"stylesheet",type:"text/css"}).appendTo("head");
            }
        }
        fontSelect.change(function(){
            fontUpdate();
        }).keyup(function(){
                    fontUpdate();
                }).keydown(function(){
                    fontUpdate();
                });
        jQuery("#customisation_colors_price_font<?php echo $store['store_id']; ?>").trigger("change");
        fontUpdate();
    });

    jQuery("#customisation_colors_captions_font<?php echo $store['store_id']; ?>").val(jQuery("#customisation_colors_captions_font<?php echo $store['store_id']; ?>").data("active")).attr('selected', true);
    jQuery("#customisation_colors_price_font<?php echo $store['store_id']; ?>").val(jQuery("#customisation_colors_price_font<?php echo $store['store_id']; ?>").data("active")).attr('selected', true);

    jQuery(function(){
        fontSelect=jQuery("#customisation_colors_captions_font<?php echo $store['store_id']; ?>");
        fontUpdate_captions=function(){
            curFont=jQuery("#customisation_colors_captions_font<?php echo $store['store_id']; ?>").val();
            jQuery("#customisation_colors_captions_font_preview<?php echo $store['store_id']; ?>").css({ fontFamily: curFont });
            if (curFont != '-') {
                jQuery("<link />",{href:"//fonts.googleapis.com/css?family="+curFont,rel:"stylesheet",type:"text/css"}).appendTo("head");
            }

        }
        fontSelect.change(function(){
            fontUpdate_captions();
        }).keyup(function(){
                    fontUpdate_captions();
                }).keydown(function(){
                    fontUpdate_captions();
                });
        jQuery("#customisation_colors_captions_font<?php echo $store['store_id']; ?>").trigger("change");
        fontUpdate_captions();
    });

    jQuery("#customisation_colors_product_border<?php echo $store['store_id']; ?>").ColorPicker({
        color: jQuery('#customisation_colors_product_border<?php echo $store['store_id']; ?>').val(),
        onShow: function (colpkr) {
            jQuery(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            jQuery(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            jQuery('#customisation_colors_product_border<?php echo $store['store_id']; ?>').css('backgroundColor', '#' + hex);
            jQuery('#customisation_colors_product_border<?php echo $store['store_id']; ?>').val('#' + hex);
        }
    });




    /* end initialisation for multstore options begin */

    <?php foreach ($languages as $language) : ?>
    $('#input-description-contactpopup<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});
    $('#input-description-customblock<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});

    $('#input-rev_full_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});
    $('#input-rev_boxed_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});
    $('#input-simple_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});
    $('#input-simple_banners_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>').summernote({height: 300});
    <?php endforeach; ?>


    <?php endforeach; ?>
    <?php endif; ?>

    /* end stores */





});






function buttonApply() {document.settingsform.buttonForm.value='apply';$('#form-optimus').submit();}

//--></script>


<?php echo $footer; ?>