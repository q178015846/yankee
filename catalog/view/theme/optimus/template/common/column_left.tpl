<?php
if ($modules) :
    global $config, $loader, $registry;

    $loader->model('custom/general');
    $model = $registry->get('model_custom_general');
    $layout_id = $model->getCurrentLayout();

?>
<section class="<?php echo($layout_id == 9 ? 'col-xs-12 col-sm-4 col-md-4 col-lg-4' : ($layout_id == 8 ? 'col-md-4 col-lg-4' : 'col-sm-4 col-md-3 col-lg-3')); ?> content-aside left_column">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</section>
<?php endif; ?>
