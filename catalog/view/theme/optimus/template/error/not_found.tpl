<?php echo $header; ?>
<?php global $config; ?>

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
      <?php //echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'container'; ?>
      <?php } ?>
      <div id="content" class="container error-page">
          <?php echo $content_top; ?>
          <div class="error-number">
             404
              <div class="icon"><img src="catalog/view/theme/<?php echo $config->get('config_template'); ?>/images/large-icon-tea.png" alt=""></div>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <p><?php echo $text_error; ?></p>

          <div class="buttons">
              <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div>
          <?php echo $content_bottom; ?>
      </div>

    </div>


</div>
<?php echo $footer; ?>