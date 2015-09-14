<?php
    global $config, $loader, $registry;

$loader->model('custom/general');
$model = $registry->get('model_custom_general');
$layout_id = $model->getCurrentLayout();

$lang = $config->get('config_language_id');

$store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
} else {
    $customisation_general = $config->get('customisation_general_store');

    if (isset($customisation_general["footerpopup"][$store_id])) {$customisation_general["footerpopup"] = $customisation_general["footerpopup"][$store_id];}
    if (isset($customisation_general["bg_image_status"][$store_id])) {$customisation_general["bg_image_status"] = $customisation_general["bg_image_status"][$store_id];}
    if (isset($customisation_general[$lang]["custom_html_title"][$store_id])) {$customisation_general[$lang]["custom_html_title"] = $customisation_general[$lang]["custom_html_title"][$store_id];}
    if (isset($customisation_general[$lang]["customblock_html"][$store_id])) {$customisation_general[$lang]["customblock_html"] = $customisation_general[$lang]["customblock_html"][$store_id];}
    if (isset($customisation_general["homepage_mode"][$store_id])) {$customisation_general["homepage_mode"] = $customisation_general["homepage_mode"][$store_id];}
    if (isset($customisation_general["footercopyright"][$store_id])) {$customisation_general["footercopyright"] = $customisation_general["footercopyright"][$store_id];}
    if (isset($customisation_general["chat_code"][$store_id])) {$customisation_general["chat_code"] = $customisation_general["chat_code"][$store_id];}
    if (isset($customisation_general["chat_code_status"][$store_id])) {$customisation_general["chat_code_status"] = $customisation_general["chat_code_status"][$store_id];}
    if (isset($customisation_general["footerpayment"][$store_id])) {$customisation_general["footerpayment"] = $customisation_general["footerpayment"][$store_id];}
    if (isset($customisation_general["footerpayment_status"][$store_id])) {$customisation_general["footerpayment_status"] = $customisation_general["footerpayment_status"][$store_id];}
    if (isset($customisation_general["customblock_status"][$store_id])) {$customisation_general["customblock_status"] = $customisation_general["customblock_status"][$store_id];}
}

?>


<?php if (isset($layout_id) && $layout_id != 1) : ?>
</div>
</section>
    <?php endif; ?>
<!-- end container section -->


            <footer>
                <?php if (isset($layout_id) && $layout_id == 1) : ?>
                <div style="display:none;">
                    Developed by TonyTemplates - eCommerce theme provider. Check our <a href="http://www.tonytemplates.com/">store</a> for more OpenCart themes.
                </div>
                <?php endif;  ?>

                <?php if (!isset($customisation_general["footerpopup"]) || $customisation_general["footerpopup"] !== 'disable') : ?>
                <section class="footer-navbar <?php echo (isset($customisation_general['bg_image_status']) && $customisation_general['bg_image_status'] == 1 && (!empty($customisation_bgall) || !empty($customisation_general["bgall"])) ? 'light_footer_navbar' : 'dark'); ?>">
                    <div class="container content nopad-xs">
                        <div class="row">
                            <?php if ($informations) : ?>
                                <div class="col-sm-6 col-md-3 col-lg-3 collapsed-block">
                                    <h3><?php echo $text_information; ?><a class="expander visible-xs" href="#TabBlock-3">+</a></h3>
                                    <div  class="tabBlock" id="TabBlock-3">
                                        <ul class="menu">
                                            <?php foreach ($informations as $information) { ?>
                                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                </div>
                            <?php endif; ?>

                            <div class="col-sm-6 col-md-3 col-lg-3 collapsed-block">
                                <h3><span class="pulse"><span class="pulse_icon"></span></span><?php echo $text_service; ?><a class="expander visible-xs" href="#TabBlock-4">+</a></h3>
                                <div  class="tabBlock" id="TabBlock-4">
                                    <ul class="menu">
                                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="clearfix visible-sm"></div>
                            <div class="col-sm-6 col-md-3 col-lg-3 collapsed-block">
                                <h3><?php echo $text_account; ?><a class="expander visible-xs" href="#TabBlock-5">+</a></h3>
                                <div  class="tabBlock" id="TabBlock-5">
                                    <ul class="menu">
                                        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                                        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                                        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                                        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                                    </ul>
                                </div>
                            </div>
                            <?php if (isset($customisation_general["customblock_status"]) && $customisation_general["customblock_status"] != 0) : ?>
                            <div class="col-sm-6 col-md-3 col-lg-3 collapsed-block">
                                <h3>
                                    <?php
                                    if (isset($customisation_general[$lang]["custom_html_title"]) && $customisation_general[$lang]["custom_html_title"] != '' ) :
                                        echo $customisation_general[$lang]["custom_html_title"];
                                    endif;
                                    ?>
                                    <a class="expander visible-xs" href="#TabBlock-6">+</a></h3>
                                    <div class="tabBlock" id="TabBlock-6">
                                        <?php
                                        if (isset($customisation_general[$lang]["customblock_html"]) && $customisation_general[$lang]["customblock_html"] != '' && is_string($customisation_general[$lang]["customblock_html"])) :
                                        echo html_entity_decode($customisation_general[$lang]["customblock_html"], ENT_QUOTES, 'UTF-8');
                                        endif;
                                        ?>
                                    </div>
                            </div>
                            <?php endif; ?>

                        </div>
                    </div>
                </section>
                <?php endif; ?>

                <div class="footer-bottom-block <?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'boxed_home' : ''); ?>">
                    <div class=" <?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'boxed_home' : 'container'); ?>">
                        <div class="row">
                            <div class="col-sm-5 col-md-4 copyright-text">
                                <?php  echo (!isset($customisation_general["footercopyright"]) || !is_string($customisation_general["footercopyright"]) ? $powered : html_entity_decode($customisation_general["footercopyright"], ENT_QUOTES, 'UTF-8'));?>
                            </div>

                          

                        </div>

                    </div>
                </div>
            </footer>



<!-- boxed home -->
<?php if (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed'): ?>
</div>
<?php endif; ?>
<!-- end boxed home -->

<!-- begin olark code -->



<!-- end olark code -->
<div id="outer-overlay"></div>
            <!-- //end Footer -->

            </div>

        </div>
    </body>
</html>