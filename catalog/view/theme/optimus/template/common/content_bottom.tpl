<?php
global $config, $loader, $registry;
$lang = $config->get('config_language_id');

$store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
} else {
    $customisation_general = $config->get('customisation_general_store');

    if (isset($customisation_general["socials"][$store_id])) {$customisation_general["socials"] = $customisation_general["socials"][$store_id];}
    if (isset($customisation_general["socials_status"][$store_id])) {$customisation_general["socials_status"] = $customisation_general["socials_status"][$store_id];}
    if (isset($customisation_general["homepage_mode"][$store_id])) {$customisation_general["homepage_mode"] = $customisation_general["homepage_mode"][$store_id];}
    if (isset($customisation_general[$lang]["newsletter_title"][$store_id])) {$customisation_general[$lang]["newsletter_title"] = $customisation_general[$lang]["newsletter_title"][$store_id];}
    if (isset($customisation_general[$lang]["newsletter_promo"][$store_id])) {$customisation_general[$lang]["newsletter_promo"] = $customisation_general[$lang]["newsletter_promo"][$store_id];}
    if (isset($customisation_general[$lang]["newsletter_placeholder"][$store_id])) {$customisation_general[$lang]["newsletter_placeholder"] = $customisation_general[$lang]["newsletter_placeholder"][$store_id];}
    if (isset($customisation_general["apikey"][$store_id])) {$customisation_general["apikey"] = $customisation_general["apikey"][$store_id];}
    if (isset($customisation_general["list_unique_id"][$store_id])) {$customisation_general["list_unique_id"] = $customisation_general["list_unique_id"][$store_id];}
    if (isset($customisation_general["newsletter_status"][$store_id])) {$customisation_general["newsletter_status"] = $customisation_general["newsletter_status"][$store_id];}
    if (isset($customisation_general[$lang]["footer_socials_title"][$store_id])) {$customisation_general[$lang]["footer_socials_title"] = $customisation_general[$lang]["footer_socials_title"][$store_id];}

}


$loader->model('custom/general');
$model = $registry->get('model_custom_general');
$layout_id = $model->getCurrentLayout();



foreach ($modules as $module) {echo $module;}
?>

<!-- Social navbar -->
<?php if (isset($layout_id) && $layout_id == 1 && (isset($customisation_general["socials_status"]) && $customisation_general["socials_status"] != 0)) : ?>
<section class="content content-border nopad-xs social-widget section_footer_socials">
    <div class="<?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? 'boxed_home' : 'container'); ?>">
        <div class="row">
<?php endif; ?>


<?php if (isset($layout_id) && $layout_id == 1) : ?>

            <?php if (isset($customisation_general["newsletter_status"]) && $customisation_general["newsletter_status"] != 0) : ?>
            <div class="col-sm-6 col-md-6  col-lg-6 newsletter collapsed-block">
                <div class="row">
                    <?php if (!isset($customisation_general[$lang]["newsletter_title"])) { ?>
                        <div class="col-lg-5 col-md-12 col-sm-12">
                            <h3>Newsletter signup<a class="expander visible-xs" href="#TabBlock-1">+</a></h3>
                        </div>
                    <?php } else { ?>
                        <?php if ($customisation_general[$lang]["newsletter_title"] != ''): ?>
                            <div class="col-lg-5 col-md-12 col-sm-12">
                                <h3><?php echo $customisation_general[$lang]["newsletter_title"]; ?><a class="expander visible-xs" href="#TabBlock-1">+</a></h3>
                            </div>
                        <?php endif; ?>
                    <?php } ?>

                    <div class="col-sm-12 col-md-12 col-lg-6 tabBlock" id="TabBlock-1">

                        <!-- Begin MailChimp Signup Form -->
                        <?php
                            $your_apikey = $customisation_general["apikey"];
                            $my_list_unique_id = $customisation_general["list_unique_id"];

                            if (isset($customisation_general["apikey"]) && isset($customisation_general["list_unique_id"]) && $customisation_general["apikey"] != '' && $customisation_general["list_unique_id"] != '') {
                        ?>

                        <?php if (!isset($customisation_general[$lang]["newsletter_promo"])) { ?>
                            <p>Enter your email and we'll send you a coupon with 10% off your next order.</p>
                        <?php } else { ?>
                            <?php if ($customisation_general[$lang]["newsletter_promo"] != ''): ?>
                                <p><?php echo $customisation_general[$lang]["newsletter_promo"]; ?></p>
                            <?php endif; ?>
                        <?php } ?>

                        <?php
                            if (!isset($customisation_general[$lang]["newsletter_placeholder"])) {
                                $newsletter_placeholder = 'Your E-mail...';
                            } else {
                                if ($customisation_general[$lang]["newsletter_placeholder"] != '') {
                                    $newsletter_placeholder = $customisation_general[$lang]["newsletter_placeholder"];
                                } else {$newsletter_placeholder = '';}
                            }
                         ?>



                        <form class="form-inline" id="signup" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
                            <div class="form-group input-control">
                                <button name="submit" type="submit" class="button"><span class="icon-envelop"></span></button>
                                <input name="email" id="email" type="text" class="form-control" value="<?php echo $newsletter_placeholder; ?>" onblur="if (this.value == '') {this.value = '<?php echo $newsletter_placeholder; ?>';}" onfocus="if(this.value == '<?php echo $newsletter_placeholder; ?>') {this.value = '';}" >
                                <input name="apikey" id="apikey" type="hidden" class="form-control" value="<?php echo $your_apikey; ?>" >
                                <input name="listid" id="listid" type="hidden" class="form-control" value="<?php echo $my_list_unique_id; ?>" >
                                <span id="response">
                                </span>
                            </div>
                        </form>
                        <?php } else { ?>
                        <h3 class="mailchimp_error">Enter API key and List ID for your Mailchimp account!</h3>
                        <?php } ?>
                        <!--End mc_embed_signup-->
                    </div>
                </div>
            </div>
            <?php endif; ?>

            <?php  if (!isset($customisation_general["socials_status"]) || $customisation_general["socials_status"] != 0 ) :  ?>
                <div class="col-sm-6 col-md-6 col-lg-6 collapsed-block footer_socials">
                    <?php if (isset($customisation_general[$lang]["footer_socials_title"]) && $customisation_general[$lang]["footer_socials_title"] !== '' ) : ?>
                    <h3><?php echo $customisation_general[$lang]["footer_socials_title"]; ?><a class="expander visible-xs" href="#TabBlock-2">+</a></h3>
                    <?php endif; ?>

                    <div class="tabBlock" id="TabBlock-2">
                        <?php if (isset($customisation_general["socials"]) && $customisation_general["socials"] !== ''  && is_string($customisation_general["socials"])) :
                        echo html_entity_decode($customisation_general["socials"], ENT_QUOTES, 'UTF-8');
                         endif; ?>
                    </div>
                </div>
            <?php endif; ?>


    </div>
</section>
<?php endif; ?>
<!-- //end Social navbar -->


