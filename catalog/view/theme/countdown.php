<?php
global $config;
$lang = $config->get('config_language_id');
$store_id = $config->get('config_store_id');

if ($store_id == 0) {
    $customisation_products = $config->get('customisation_products');
    $customisation_translation = $config->get('customisation_translation');

    if (isset($customisation_products["countdown_status"])) {$countdown_status = $customisation_products["countdown_status"];}
    if (isset($customisation_translation[$lang]["countdown_title"])) {$countdown_title = $customisation_translation[$lang]["countdown_title"];}
    if (isset($customisation_translation[$lang]["countdown_title_day"])) {$countdown_title_day = $customisation_translation[$lang]["countdown_title_day"];}
    if (isset($customisation_translation[$lang]["countdown_title_hour"])) {$countdown_title_hour = $customisation_translation[$lang]["countdown_title_hour"];}
    if (isset($customisation_translation[$lang]["countdown_title_minute"])) {$countdown_title_minute = $customisation_translation[$lang]["countdown_title_minute"];}
    if (isset($customisation_translation[$lang]["countdown_title_second"])) {$countdown_title_second = $customisation_translation[$lang]["countdown_title_second"];}
} else {
    $customisation_products = $config->get('customisation_products_store');
    $customisation_translation = $config->get('customisation_translation_store');

    if (isset($customisation_products["countdown_status"][$store_id])) {$countdown_status = $customisation_products["countdown_status"][$store_id];}
    if (isset($customisation_translation[$lang]["countdown_title"][$store_id])) {$countdown_title = $customisation_translation[$lang]["countdown_title"][$store_id];}
    if (isset($customisation_translation[$lang]["countdown_title_day"][$store_id])) {$countdown_title_day = $customisation_translation[$lang]["countdown_title_day"][$store_id];}
    if (isset($customisation_translation[$lang]["countdown_title_hour"][$store_id])) {$countdown_title_hour = $customisation_translation[$lang]["countdown_title_hour"][$store_id];}
    if (isset($customisation_translation[$lang]["countdown_title_minute"][$store_id])) {$countdown_title_minute = $customisation_translation[$lang]["countdown_title_minute"][$store_id];}
    if (isset($customisation_translation[$lang]["countdown_title_second"][$store_id])) {$countdown_title_second = $customisation_translation[$lang]["countdown_title_second"][$store_id];}
}

if (!isset($countdown_status) || ($countdown_status != 0)) :
    if ($product['special']) :
        if ($special_end_date) :
            $full_date = explode("-", $special_end_date);
            $year_end = $full_date[0];
            if($full_date[1] < 10) {
                $month_end = (int)$full_date[1];
            } else {
                $month_end = $full_date[1];
            }
            $day_end = $full_date[2];
            if ($day_end !== 0 && $year_end !==0 && $month_end !== 0) :


                if (isset($countdown_title_day) && $countdown_title_day != ''){
                    $label_day = $countdown_title_day;
                } else {
                    $label_day = 'Day';
                }

                if (isset($countdown_title_hour) && $countdown_title_hour != ''){
                    $label_hour = $countdown_title_hour;
                } else {
                    $label_hour = 'Hour';
                }
                if (isset($countdown_title_minute) && $countdown_title_minute != ''){
                    $label_minute = $countdown_title_minute;
                } else {
                    $label_minute = 'Min';
                }
                if (isset($countdown_title_second) && $countdown_title_second != ''){
                    $label_second = $countdown_title_second;
                } else {
                    $label_second = 'Sec';
                }
                ?>

                <div class="countdown_box">
                    <div class="countdown_inner">
                        <div class="title"><?php echo (isset($countdown_title) && $countdown_title != '' ? $countdown_title : 'This limited  offer ends in:'); ?></div>
                        <script type="text/javascript"><!--
                            jQuery(function () {
                                var austDay = new Date(<?php echo $year_end; ?>, <?php echo $month_end; ?> - 1, <?php echo $day_end; ?>);
                                jQuery('.defaultCountdown-<?php echo $product['product_id']; ?>').countdown({
                                    description: '',
                                    until: austDay,
                                    labels: ['Year', 'Month', 'Week', '<?php echo $label_day; ?>', '<?php echo $label_hour; ?>', '<?php echo $label_minute; ?>', '<?php echo $label_second; ?>']
                                });
                            });
                            //--></script>
                        <div class="defaultCountdown-<?php echo $product['product_id']; ?>"></div>
                    </div>
                </div>
            <?php
            endif;
        endif;
    endif;
endif;
?>


