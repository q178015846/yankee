<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
          <button type="submit" form="form-isotope" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
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

    <div class="panel panel-default">
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-isotope" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>

            <div class="form-group panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="fa fa-pencil"></i>
                        "Isotope" or "Sliders in row" module (products from Latest, Bestsellers, Popular, Specials)
                    </h3>
                </div>
                </div>
                <div class="form-group">

                <!--latest-->
                <div class="col-xs-6 col-sm-6 col-lg-3">
                    <div class="form-group"><h2 style="text-align:center">Latest Slider</h2></div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-status_latest">Enable/Disable slider</label>
                        <div class="col-sm-6">
                            <select name="status_latest" id="input-status_latest" class="form-control">
                                <?php if ($status_latest) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_latest"><?php echo $entry_limit; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="limit_latest" value="<?php echo $limit_latest; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_latest" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-order_latest">Sort order in row</label>
                        <div class="col-sm-6">
                            <input type="text" name="order_latest" value="<?php echo $order_latest; ?>" placeholder="Sort order in row" id="input-order_latest" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-width_latest"><?php echo $entry_width; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="width_latest" value="<?php echo $width_latest; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_latest" class="form-control" />
                            <?php if ($error_width_latest) { ?>
                            <div class="text-danger"><?php echo $error_width_latest; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-height_latest"><?php echo $entry_height; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="height_latest" value="<?php echo $height_latest; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_latest" class="form-control" />
                            <?php if ($error_height_latest) { ?>
                            <div class="text-danger"><?php echo $error_height_latest; ?></div>
                            <?php } ?>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="columns_latest">Slider columns</label>
                        <div class="col-sm-6">
                            <select name="columns_latest" id="columns_latest" class="form-control">
                                <option <?php if ($columns_latest == 1) : ?> selected="selected" <?php endif; ?> value="1">1 column</option>
                                <option <?php if ($columns_latest == 2) : ?> selected="selected" <?php endif; ?> value="2">2 column</option>
                                <option <?php if ($columns_latest == 3) : ?> selected="selected" <?php endif; ?> value="3">3 column</option>
                                <option <?php if ($columns_latest == 4) : ?> selected="selected" <?php endif; ?> value="4">4 column</option>
                            </select>
                        </div>
                    </div>

                </div>
                <!--//latest-->

                <!--bestseller-->
                <div class="col-xs-6 col-sm-6 col-lg-3">
                    <div class="form-group"><h2 style="text-align:center">Bestseller Slider</h2></div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-status_latest">Enable/Disable slider</label>
                        <div class="col-sm-6">
                            <select name="status_bestseller" id="input-status_bestseller" class="form-control">
                                <?php if ($status_bestseller) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_bestseller"><?php echo $entry_limit; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="limit_bestseller" value="<?php echo $limit_bestseller; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_bestseller" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-order_bestseller">Sort order in row</label>
                        <div class="col-sm-6">
                            <input type="text" name="order_bestseller" value="<?php echo $order_bestseller; ?>" placeholder="Sort order in row" id="input-order_bestseller" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-width_bestseller"><?php echo $entry_width; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="width_bestseller" value="<?php echo $width_bestseller; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_bestseller" class="form-control" />
                            <?php if ($error_width_bestseller) { ?>
                            <div class="text-danger"><?php echo $error_width_bestseller; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-height_bestseller"><?php echo $entry_height; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="height_bestseller" value="<?php echo $height_bestseller; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_bestseller" class="form-control" />
                            <?php if ($error_height_bestseller) { ?>
                            <div class="text-danger"><?php echo $error_height_bestseller; ?></div>
                            <?php } ?>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="columns_bestseller">Slider columns</label>
                        <div class="col-sm-6">
                            <select name="columns_bestseller" id="columns_bestseller" class="form-control">
                                <option <?php if ($columns_bestseller == 1) : ?> selected="selected" <?php endif; ?> value="1">1 column</option>
                                <option <?php if ($columns_bestseller == 2) : ?> selected="selected" <?php endif; ?> value="2">2 column</option>
                                <option <?php if ($columns_bestseller == 3) : ?> selected="selected" <?php endif; ?> value="3">3 column</option>
                                <option <?php if ($columns_bestseller == 4) : ?> selected="selected" <?php endif; ?> value="4">4 column</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!--//bestseller-->

                <!--popular-->
                <div class="col-xs-6 col-sm-6 col-lg-3">
                    <div class="form-group"><h2 style="text-align:center">Popular Slider</h2></div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-status_popular">Enable/Disable slider</label>
                        <div class="col-sm-6">
                            <select name="status_popular" id="input-status_popular" class="form-control">
                                <?php if ($status_popular) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_popular"><?php echo $entry_limit; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="limit_popular" value="<?php echo $limit_popular; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_popular" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-order_popular">Sort order in row</label>
                        <div class="col-sm-6">
                            <input type="text" name="order_popular" value="<?php echo $order_popular; ?>" placeholder="Sort order in row" id="input-order_popular" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-width_popular"><?php echo $entry_width; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="width_popular" value="<?php echo $width_popular; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_popular" class="form-control" />
                            <?php if ($error_width_popular) { ?>
                            <div class="text-danger"><?php echo $error_width_popular; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-height_popular"><?php echo $entry_height; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="height_popular" value="<?php echo $height_popular; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_popular" class="form-control" />
                            <?php if ($error_height_popular) { ?>
                            <div class="text-danger"><?php echo $error_height_popular; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="columns_popular">Slider columns</label>
                        <div class="col-sm-6">
                            <select name="columns_popular" id="columns_popular" class="form-control">
                                <option <?php if ($columns_popular == 1) : ?> selected="selected" <?php endif; ?> value="1">1 column</option>
                                <option <?php if ($columns_popular == 2) : ?> selected="selected" <?php endif; ?> value="2">2 column</option>
                                <option <?php if ($columns_popular == 3) : ?> selected="selected" <?php endif; ?> value="3">3 column</option>
                                <option <?php if ($columns_popular == 4) : ?> selected="selected" <?php endif; ?> value="4">4 column</option>
                            </select>
                        </div>
                    </div>

                </div>
                <!--//popular-->

                <!--special-->
                <div class="col-xs-6 col-sm-6 col-lg-3">
                    <div class="form-group"><h2 style="text-align:center">Special Slider</h2></div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-status_special">Enable/Disable slider</label>
                        <div class="col-sm-6">
                            <select name="status_special" id="input-status_special" class="form-control">
                                <?php if ($status_special) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_special"><?php echo $entry_limit; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="limit_special" value="<?php echo $limit_special; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_special" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-order_special">Sort order in row</label>
                        <div class="col-sm-6">
                            <input type="text" name="order_special" value="<?php echo $order_special; ?>" placeholder="Sort order in row" id="input-order_special" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-width_special"><?php echo $entry_width; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="width_special" value="<?php echo $width_special; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_special" class="form-control" />
                            <?php if ($error_width_special) { ?>
                            <div class="text-danger"><?php echo $error_width_special; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-height_special"><?php echo $entry_height; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="height_special" value="<?php echo $height_special; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_special" class="form-control" />
                            <?php if ($error_height_special) { ?>
                            <div class="text-danger"><?php echo $error_height_special; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="columns_special">Slider columns</label>
                        <div class="col-sm-6">
                            <select name="columns_special" id="columns_special" class="form-control">
                                <option <?php if ($columns_special == 1) : ?> selected="selected" <?php endif; ?> value="1">1 column</option>
                                <option <?php if ($columns_special == 2) : ?> selected="selected" <?php endif; ?> value="2">2 column</option>
                                <option <?php if ($columns_special == 3) : ?> selected="selected" <?php endif; ?> value="3">3 column</option>
                                <option <?php if ($columns_special == 4) : ?> selected="selected" <?php endif; ?> value="4">4 column</option>
                            </select>
                        </div>
                    </div>

                </div>
                <!--//special-->


                <!--featured-->
                <div class="form-group"><h2 style="text-align:center">Featured Slider</h2></div>


                <div class="col-xs-6 col-sm-6 col-lg-3">

                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-status_featured">Enable/Disable slider</label>
                        <div class="col-sm-6">
                            <select name="status_featured" id="input-status_featured" class="form-control">
                                <?php if ($status_featured) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_featured"><?php echo $entry_limit; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="limit_featured" value="<?php echo $limit_featured; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_featured" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-order_featured">Sort order in row</label>
                        <div class="col-sm-6">
                            <input type="text" name="order_featured" value="<?php echo $order_featured; ?>" placeholder="Sort order in row" id="input-order_featured" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-width_featured"><?php echo $entry_width; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="width_featured" value="<?php echo $width_featured; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_featured" class="form-control" />
                            <?php if ($error_width_featured) { ?>
                            <div class="text-danger"><?php echo $error_width_featured; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-height_featured"><?php echo $entry_height; ?></label>
                        <div class="col-sm-6">
                            <input type="text" name="height_featured" value="<?php echo $height_featured; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_featured" class="form-control" />
                            <?php if ($error_height_featured) { ?>
                            <div class="text-danger"><?php echo $error_height_featured; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="columns_featured">Slider columns</label>
                        <div class="col-sm-6">
                            <select name="columns_featured" id="columns_featured" class="form-control">
                                <option <?php if ($columns_featured == 1) : ?> selected="selected" <?php endif; ?> value="1">1 column</option>
                                <option <?php if ($columns_featured == 2) : ?> selected="selected" <?php endif; ?> value="2">2 column</option>
                                <option <?php if ($columns_featured == 3) : ?> selected="selected" <?php endif; ?> value="3">3 column</option>
                                <option <?php if ($columns_featured == 4) : ?> selected="selected" <?php endif; ?> value="4">4 column</option>
                            </select>
                        </div>
                    </div>

                </div>

                <div class="col-xs-6 col-sm-6 col-lg-5">
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-product">Enter product</label>
                        <div class="col-sm-6">
                            <input type="text" name="product" value="" placeholder="Enter product" id="input-product" class="form-control" />
                            <div id="featured-product" class="well well-sm" style="height: 150px; overflow: auto;">
                                <?php foreach ($products as $product) { ?>
                                <div id="featured-product<?php echo $product['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product['name']; ?>
                                    <input type="hidden" name="product[]" value="<?php echo $product['product_id']; ?>" />
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//featured-->



                </div>

          <!--category-->
          <div class="form-group panel panel-default">
              <div class="panel-heading">
                  <h3 class="panel-title">
                      <i class="fa fa-pencil"></i>
                      "Isotope Categories" (products from categories)
                  </h3>
              </div>
          </div>

          <div class="form-group">
              <div class="col-xs-6 col-sm-6 col-lg-4">
                  <label class="col-sm-6 control-label" for="input-status_category">Enable/Disable slider</label>
                  <div class="col-sm-6">
                      <select name="status_category" id="input-status_category" class="form-control">
                          <?php if ($status_category) { ?>
                          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                          <option value="0"><?php echo $text_disabled; ?></option>
                          <?php } else { ?>
                          <option value="1"><?php echo $text_enabled; ?></option>
                          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                          <?php } ?>
                      </select>
                  </div>
              </div>
              <div class="col-xs-6 col-sm-6 col-lg-2">
                  <label class="col-sm-5 control-label" for="input-limit_category"><?php echo $entry_limit; ?></label>
                  <div class="col-sm-7">
                      <input type="text" name="limit_category" value="<?php echo $limit_category; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit_category" class="form-control" />
                  </div>
              </div>
              <div class="col-xs-6 col-sm-6 col-lg-3">
                  <label class="col-sm-3 control-label" for="input-width_category"><?php echo $entry_width; ?></label>
                  <div class="col-sm-9">
                      <input type="text" name="width_category" value="<?php echo $width_category; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width_category" class="form-control" />
                      <?php if ($error_width_category) { ?>
                      <div class="text-danger"><?php echo $error_width_category; ?></div>
                      <?php } ?>
                  </div>
                  <label class="col-sm-3 control-label" for="input-height_category"><?php echo $entry_height; ?></label>
                  <div class="col-sm-9">
                      <input type="text" name="height_category" value="<?php echo $height_category; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height_category" class="form-control" />
                      <?php if ($error_height_category) { ?>
                      <div class="text-danger"><?php echo $error_height_category; ?></div>
                      <?php } ?>
                  </div>

              </div>
              <div class="col-xs-6 col-sm-6 col-lg-3">
                  <label class="col-sm-6 control-label" for="input-id_category1">1 Category id</label>
                  <div class="col-sm-6">
                      <input type="text" name="id_category1" value="<?php echo $id_category1; ?>" placeholder="1 Category id" id="input-id_category1" class="form-control" />
                  </div>
                  <label class="col-sm-6 control-label" for="input-id_category2">1 Category id</label>
                  <div class="col-sm-6">
                      <input type="text" name="id_category2" value="<?php echo $id_category2; ?>" placeholder="2 Category id" id="input-id_category2" class="form-control" />
                  </div>
                  <label class="col-sm-6 control-label" for="input-id_category3">3 Category id</label>
                  <div class="col-sm-6">
                      <input type="text" name="id_category3" value="<?php echo $id_category3; ?>" placeholder="3 Category id" id="input-id_category3" class="form-control" />
                  </div>
                  <label class="col-sm-6 control-label" for="input-id_category4">4 Category id</label>
                  <div class="col-sm-6">
                      <input type="text" name="id_category4" value="<?php echo $id_category4; ?>" placeholder="4 Category id" id="input-id_category4" class="form-control" />
                  </div>
              </div>
              </div>
          <!--//category-->

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
    source: function(request, response) {
        $.ajax({
            url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
            dataType: 'json',
            success: function(json) {
                response($.map(json, function(item) {
                    return {
                        label: item['name'],
                        value: item['product_id']
                    }
                }));
            }
        });
    },
    select: function(item) {
        $('input[name=\'product\']').val('');

        $('#featured-product' + item['value']).remove();

        $('#featured-product').append('<div id="featured-product' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product[]" value="' + item['value'] + '" /></div>');
    }
});

$('#featured-product').delegate('.fa-minus-circle', 'click', function() {
    $(this).parent().remove();
});
//--></script></div>

<?php echo $footer; ?>