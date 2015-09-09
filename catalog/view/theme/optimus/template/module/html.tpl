<?php
global $config, $loader, $registry;

    $loader->model('custom/general');
    $model = $registry->get('model_custom_general');
    $layout_id = $model->getCurrentLayout();

?>

<div class="<?php echo (isset($layout_id) && $layout_id == 14 ? 'container-widget' : '' ); ?>">
  <h3 class="promo_main"><?php echo $heading_title; ?>&nbsp;</h3>
  <?php echo $html; ?></div>
