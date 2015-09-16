<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row">
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    	<div class="panel panel-primary">
		  <div class="panel-body">
		  	<div class="media">
			  <div class="media-left">
			    <a href="#">
			      <img class="media-object" src="image/catalog/icon-optimus.png" alt="快递">
			    </a>
			  </div>
			  <div class="media-body">
			    快递公司：<?php echo $shipping_order_company; ?><br>
			    物流状态：<?php echo $shipping_order_status; ?><br>
		   		运单编号：<?php echo $shipping_order_code; ?>
			  </div>
			</div>
		  	<p>
		   
		  </div>
		</div>

     	<div class="panel panel-primary">
		  <!-- Default panel contents -->
		  <div class="panel-heading">物流信息</div>
		  

		  <!-- List group -->
		  <?php if($shipping_array_data != null || isset($shipping_array_data)){?>
		  <ul class="list-group">
		  	<?php  foreach ($shipping_array_data as $v) { ?>
		    <li class="list-group-item">
		    	<i class="fa fa-shipping"></i>
		    	<p><?php echo $v->context?></p>
		    	<p><?php echo $v->ftime?></p>
		    </li>
		    
		    <?php }?>
		  </ul>
		  	<?php }else{?>
		  		<div class="panel-body">
			    	暂无相关物流信息
			  	</div>
		  	<?php }?>
		</div>
     </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>