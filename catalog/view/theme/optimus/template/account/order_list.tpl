<?php echo $header; ?>
<body>
<nav class="navbar navbar-default navbar-static-top">
  <div class="container">

  </div>
</nav>
 <ul class="nav nav-tabs">
  
  <li>
    <a href="#all" data-toggle="tab">全部</a>
  </li>
  <li>
    <a href="#wait_pay" data-toggle="tab">待付款</a>
  </li>
  <li>
    <a href="#wait_express" data-toggle="tab">待发货</a>
  </li>
  <li class="active">
   <a href="#check" data-toggle="tab">待收货</a>
  </li>
  <li>
   <a href="#comment" data-toggle="tab">待评价</a>
  </li>
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="all">
    <div class="container">
      <div class="row">
        <div id="content" class="col-sm-12"><?php echo $content_top; ?>

      <?php if ($orders) { ?>
     <!--  <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right"><?php echo $column_order_id; ?></td>
              <td class="text-left"><?php echo $column_status; ?></td>
              <td class="text-left"><?php echo $column_date_added; ?></td>
              <td class="text-right"><?php echo $column_product; ?></td>
             
              <td class="text-right"><?php echo $column_total; ?></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($orders as $order) { ?>
            <tr>
              <td class="text-right">#<?php echo $order['order_id']; ?></td>
              <td class="text-left"><?php echo $order['status']; ?></td>
              <td class="text-left"><?php echo $order['date_added']; ?></td>
              <td class="text-right"><?php echo $order['products']; ?></td>
             
              <td class="text-right"><?php echo $order['total']; ?></td>
              <td class="text-right"><?php if($order['status_id'] == 3){?><a href="<?php echo $order['express']; ?>" class="btn btn-info"><i class="fa fa-truck"></i></a ><?php }?>  <a href="<?php echo $order['href']; ?>" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div> -->
       <?php foreach ($orders as $order) { ?>
        <div class="panel panel-default">
            <div class="panel-heading">订单编号：<?php echo $order['order_id']; ?><span style="margin-right:-5px;"><?php echo $order['status']; ?></span></div>
             <ul class="list-group">
                 <?php foreach ($order['products'] as $product_info) { ?>
                  <li class="list-group-item">
                    <a href="#" style="border:none;padding:0px;">
                    <div class="row">
                      <div class="col-xs-3">
                        
                          <img alt="64x64" data-src="holder.js/64x64" src="image/<?php echo $product_info['image']?>" style="width:64px;height:64px;margin:5px;">
                       
                      </div>
                      <div class="col-xs-5"><?php echo $product_info['name']; ?></div>
                      <div class="col-xs-4">
                        <ul style="margin-right:5px;" class="text-left">
                          <li><?php echo $product_info['price']; ?></li>
                          <li>×2</li>
                        </ul>
                      </div>
                    </div>
                     </a>
                </li>
                <?php } ?>
              </ul>
            <div class="panel-footer text-right">
              <?php if($order['status_id'] == 3){?><a href="<?php echo $order['express']; ?>" class="btn btn-info">查看物流</a ><?php }?>  <a href="<?php echo $order['href']; ?>" title="<?php echo $button_view; ?>" class="btn btn-info">确认收货</i></a>
            </div>
          </div>
           <?php } ?>
      <div class="text-right"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      </div>
      </div>
    </div>
   </div>
   <div class="tab-pane fade" id="wait_pay">
      <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
      TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
   </div>
   <div class="tab-pane fade" id="wait_express">
      <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
   </div>
   <div class="tab-pane fade" id="check">
      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
      </p>
   </div>
   <div class="tab-pane fade" id="comment">
      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
      </p>
   </div>
</div>

<?php echo $footer; ?>