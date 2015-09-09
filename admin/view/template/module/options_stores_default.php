<ul class="nav nav-tabs main_tabs">
    <li class="<?php echo ($store['store_id'] == 0 ? 'active' : ''); ?>"><a href="#tab-general<?php echo $store['store_id']; ?>" data-toggle="tab">Layout</a></li>
    <li><a href="#tab-colors<?php echo $store['store_id']; ?>" data-toggle="tab">Colors,backgrounds,fonts</a></li>
    <li><a href="#tab-products<?php echo $store['store_id']; ?>" data-toggle="tab">Products, Listings</a></li>
    <li><a href="#tab-topslider<?php echo $store['store_id']; ?>" data-toggle="tab">Top Slider</a></li>
</ul>
<div class="tab-content">
    <!-------------------------------------tab General---------------------------------->
    <div class="tab-pane active" id="tab-general<?php echo $store['store_id']; ?>">
        <ul class="nav nav-tabs col-sm-3 main_tabs_vertical">
            <li class="<?php echo ($store['store_id'] == 0 ? 'active' : ''); ?>"><a href="#tab-general-layout1-<?php echo $store['store_id']; ?>" class="selected" data-toggle="tab">General</a></li>
            <li><a href="#tab-general-layout2-<?php echo $store['store_id']; ?>" data-toggle="tab">Header/Footer Blocks</a></li>
            <li><a href="#tab-general-layout3-<?php echo $store['store_id']; ?>" data-toggle="tab">Social Widgets Accounts</a></li>
            <li><a href="#tab-general-layout4-<?php echo $store['store_id']; ?>" data-toggle="tab">Product Modules on Main Page</a></li>
            <li><a href="#tab-general-layout5-<?php echo $store['store_id']; ?>" data-toggle="tab">Some language variables</a></li>
        </ul>

        <div class="tab-content col-sm-8">
            <!--general-->
            <div class="tab-pane active" id="tab-general-layout1-<?php echo $store['store_id']; ?>">
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-homepage_mode<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="If you choose 'Boxed Home page'
                        <br>Enable second block (boxed slider) in Top Slider module!">Home page width</span>
                    </label>
                    <div class="col-sm-7">
                        <select name="customisation_general[homepage_mode]" id="input-homepage_mode<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_general["homepage_mode"]) && $customisation_general['homepage_mode'] == 'full') : ?> selected="selected" <?php endif; ?> value="full">Full-width Home page</option>
                            <option <?php if (isset($customisation_general["homepage_mode"]) && $customisation_general['homepage_mode'] == 'boxed') : ?> selected="selected" <?php endif; ?> value="boxed">Boxed Home page</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Firstly, set 'Boxed Home Page'">Background image for boxed Home Page</span>
                    </label>
                    <div class="col-sm-7">
                        <a href="" id="thumb-bgall" data-toggle="image" class="img-thumbnail">
                            <img src="<?php echo $bgall; ?>" alt="" title="" data-placeholder="Background image for boxed Home Page" />
                        </a>
                        <input type="hidden" name="customisation_bgall" value="<?php echo $customisation_bgall; ?>" id="input-bgall" />
                        <div>
                            <label class="radio-inline">
                                <?php if (isset($customisation_general["bg_image_status"]) && $customisation_general["bg_image_status"]) { ?>
                                <input type="radio" name="customisation_general[bg_image_status]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_general[bg_image_status]" value="1" />
                                <?php echo $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (isset($customisation_general["bg_image_status"]) && !$customisation_general["bg_image_status"]) { ?>
                                <input type="radio" name="customisation_general[bg_image_status]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_general[bg_image_status]" value="0" />
                                <?php echo $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable Search Block">Search Block</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["headertopline"]) && $customisation_general["headertopline"]) { ?>
                            <input type="radio" name="customisation_general[headertopline]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[headertopline]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["headertopline"]) && !$customisation_general["headertopline"]) { ?>
                            <input type="radio" name="customisation_general[headertopline]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[headertopline]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable Right fixed panel">Right fixed panel with social widgets</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["quickpanel"]) && $customisation_general["quickpanel"]) { ?>
                            <input type="radio" name="customisation_general[quickpanel]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[quickpanel]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["quickpanel"]) && !$customisation_general["quickpanel"]) { ?>
                            <input type="radio" name="customisation_general[quickpanel]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[quickpanel]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable Header Account right button">Header Account right button</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["header_account"]) && $customisation_general["header_account"]) { ?>
                            <input type="radio" name="customisation_general[header_account]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[header_account]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["header_account"]) && !$customisation_general["header_account"]) { ?>
                            <input type="radio" name="customisation_general[header_account]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[header_account]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable Footer Navbar info block">Footer Navbar info block</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["footerpopup"]) && $customisation_general["footerpopup"]) { ?>
                            <input type="radio" name="customisation_general[footerpopup]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[footerpopup]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["footerpopup"]) && !$customisation_general["footerpopup"]) { ?>
                            <input type="radio" name="customisation_general[footerpopup]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[footerpopup]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable custom.css file. <br>(Originally it is named 'custom_example.css' and located in catalog/view/theme/optimus/stylesheet/custom_example.css)">Using custom.css file</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["css_file"]) && $customisation_general["css_file"]) { ?>
                                <input type="radio" name="customisation_general[css_file]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                            <?php } else { ?>
                                <input type="radio" name="customisation_general[css_file]" value="1" />
                                <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["css_file"]) && !$customisation_general["css_file"]) { ?>
                                <input type="radio" name="customisation_general[css_file]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                            <?php } else { ?>
                                <input type="radio" name="customisation_general[css_file]" value="0" />
                                <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
            </div>
            <!--general-->

            <!--Header/Footer Blocks-->
            <div id="tab-general-layout2-<?php echo $store['store_id']; ?>" class="tab-pane">
            <fieldset>
                <legend>Header (Top Spy Panel/blocks)</legend>

                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Enable/disable Top Spy Panel">Top Spy Panel</span>
                    </label>
                    <div class="col-sm-8" id="customisation_general_headerspy_container">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["headerspy"]) && $customisation_general["headerspy"]) { ?>
                            <input type="radio" name="customisation_general[headerspy]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[headerspy]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["headerspy"]) && !$customisation_general["headerspy"]) { ?>
                            <input type="radio" name="customisation_general[headerspy]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[headerspy]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="spy_type<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title=" - type 1: open after button click<br>
                                                            - type 2: automatically appearing after site scrolling">
                           Type of Top Spy Panel
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <select name="customisation_general[spy_type]" id="spy_type<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_general['spy_type']) && $customisation_general['spy_type'] == 1) : ?> selected="selected" <?php endif; ?> value="1">Clickable</option>
                            <option <?php if (isset($customisation_general['spy_type']) && $customisation_general['spy_type'] == 2) : ?> selected="selected" <?php endif; ?> value="2">Floating</option>
                        </select>
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-sm-4 control-label" for="rightimg<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Upload image in path: image/catalog/ and write the name here">
                            Image (Top Spy panel)
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <?php if (!isset($store['store_id']) || $store['store_id'] == 0) { ?>
                            <a id="thumb-rightimg" data-toggle="image" class="img-thumbnail">
                                <img src="<?php echo $rightimg; ?>" alt="" title="" data-placeholder="Image (Top Spy panel)" />
                            </a>
                            <input type="hidden" name="customisation_rightimg" value="<?php echo $customisation_rightimg; ?>" id="input-rightimg" />
                        <?php } else { ?>
                        <div>
                            <div>Upload image in path: image/catalog/ and write here only name as "image.png"</div>
                            <input type="text" name="customisation_general[rightimg]" value="<?php echo (isset($customisation_general['rightimg']) ? $customisation_general['rightimg'] : ''); ?>" placeholder="Right image in Top Spy Panel" id="rightimg<?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php } ?>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-4 control-label">
                          <span data-toggle="tooltip" title="Set Default welcome message near Logo in Header.">
                               Default welcome message:
                          </span>
                    </label>
                    <div class="col-sm-8">
                        <ul class="nav nav-tabs" id="language-welcome_message">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-welcome_message<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-welcome_message<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][welcome_message]" value="<?php echo (isset($customisation_general[$language['language_id']]['welcome_message']) ? $customisation_general[$language['language_id']]['welcome_message'] : ''); ?>" placeholder="Default welcome message" id="input-name-welcome_message" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="header_type<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title=" - type 1: visible search field and titles of service links<br>
                                                            - type 2: centered search field<br>
                                                            - type 3: centered logo<br>
                                                            - type 4: hover effect in search field, hidden titles of service links">
                                                                Type of Header
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <select name="customisation_general[header_type]" id="header_type<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_general['header_type']) && $customisation_general['header_type']  == 1) : ?> selected="selected" <?php endif; ?> value="1">Type 1</option>
                            <option <?php if (isset($customisation_general['header_type']) && $customisation_general['header_type']  == 2) : ?> selected="selected" <?php endif; ?> value="2">Type 2</option>
                            <option <?php if (isset($customisation_general['header_type']) && $customisation_general['header_type']  == 3) : ?> selected="selected" <?php endif; ?> value="3">Type 3</option>
                            <option <?php if (isset($customisation_general['header_type']) && $customisation_general['header_type']  == 4) : ?> selected="selected" <?php endif; ?> value="4">Type 4</option>
                        </select>
                    </div>
                </div>
            </fieldset>
            <fieldset>
            <legend>Header (Top Menu)</legend>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="menu_type<?php echo $store["store_id"]; ?>">
                     <span data-toggle="tooltip" title=" - type 1: menu with different options<br>
                                                            - type 2: simple dropdown menu">
                                                                Type of Top Menu
                     </span>
                </label>
                <div class="col-sm-8">
                    <select name="customisation_general[menu_type]" id="menu_type<?php echo $store["store_id"]; ?>" class="form-control">
                        <option <?php if (isset($customisation_general['menu_type']) && $customisation_general['menu_type'] == 1) : ?> selected="selected" <?php endif; ?> value="1">Mega menu</option>
                        <option <?php if (isset($customisation_general['menu_type']) && $customisation_general['menu_type'] == 2) : ?> selected="selected" <?php endif; ?> value="2">Usual menu</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Here you can enable / disable home button in top menu.">Home button</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if (isset($customisation_general['homebutton']) && $customisation_general["homebutton"]) { ?>
                        <input type="radio" name="customisation_general[homebutton]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[homebutton]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_general['homebutton']) && !$customisation_general["homebutton"]) { ?>
                        <input type="radio" name="customisation_general[homebutton]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[homebutton]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            <!--menu title-->
            <div class="form-group">
                <label class="col-sm-4 control-label" for="mobile_menu_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">Mobile menu title</label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="language-mobile_menu_title">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-mobile_menu_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-mobile_menu_title<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][mobile_menu_title]" value="<?php echo isset($customisation_general[$language['language_id']]['mobile_menu_title']) ? $customisation_general[$language['language_id']]['mobile_menu_title'] : ''; ?>" placeholder="Mobile menu title:" id="mobile_menu_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <!--menu title-->

            <div class="form-group">
                <label class="col-sm-4 control-label" for="input-name-customitem_item_title1<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                    <span data-toggle="tooltip" title="Set menu item title.">
                        Custom menu item - title:
                    </span>
                </label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="language-customitem_item_title1">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-customitem_item_title1<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-customitem_item_title1<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][customitem_item_title1]" value="<?php echo isset($customisation_general[$language['language_id']]['customitem_item_title1']) ? $customisation_general[$language['language_id']]['customitem_item_title1'] : ''; ?>" placeholder="Custom menu item - title:" id="input-name-customitem_item_title1<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="customitem_item_url<?php echo $store["store_id"]; ?>">
                     <span data-toggle="tooltip" title="Set url for custom menu item (use full url format starting with http:// for outer links).">
                         Custom menu item - url:
                     </span>
                </label>
                <div class="col-sm-8">
                    <input type="text" name="customisation_general[customitem_item_url1]" value="<?php echo $customisation_general['customitem_item_url1']; ?>" placeholder="Custom menu item - url" id="customitem_item_url<?php echo $store["store_id"]; ?>" class="form-control" />
                </div>
            </div>
            <!--blog-->
            <div class="form-group">
                <label class="col-sm-4 control-label">Link Blog in top menu - status:</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["blog_link_status"]) && $customisation_general["blog_link_status"]) { ?>
                        <input type="radio" name="customisation_general[blog_link_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[blog_link_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["blog_link_status"]) && !$customisation_general["blog_link_status"]) { ?>
                        <input type="radio" name="customisation_general[blog_link_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[blog_link_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="blog_link_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                     <span data-toggle="tooltip" title="Set menu item title.">
                          Set Link Blog title.
                     </span>
                </label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="language-blog_link_title">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-blog_link_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-blog_link_title<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][blog_link_title]" value="<?php echo isset($customisation_general[$language['language_id']]['blog_link_title']) ? $customisation_general[$language['language_id']]['blog_link_title'] : ''; ?>" placeholder="Set Link Blog title" id="blog_link_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="blog_link_url<?php echo $store["store_id"]; ?>">Link Blog in top menu - url:</label>
                <div class="col-sm-8">
                    <input type="text" name="customisation_general[blog_link_url]" value="<?php echo $customisation_general['blog_link_url']; ?>" placeholder="Link Blog in top menu - url" id="blog_link_url<?php echo $store["store_id"]; ?>" class="form-control" />
                </div>
            </div>
            <!--blog-->
            <!--link pages-->
            <div class="form-group">
                <label class="col-sm-4 control-label" for="pages_link_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                    Link Pages in top menu - title:
                </label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="language-pages_link_title">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-pages_link_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-pages_link_title<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][pages_link_title]" value="<?php echo isset($customisation_general[$language['language_id']]['pages_link_title']) ? $customisation_general[$language['language_id']]['pages_link_title'] : ''; ?>" placeholder="Custom menu item - title:" id="pages_link_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="pages_link_url<?php echo $store["store_id"]; ?>">
                     <span data-toggle="tooltip" title="Set url for link pages item, for example, 'index.php?route=information/contact'  (use full url format starting with // for outer links).">
                          Link Pages in top menu - url:
                     </span>
                </label>
                <div class="col-sm-8">
                    <input type="text" name="customisation_general[pages_link_url]" value="<?php echo $customisation_general['pages_link_url']; ?>" placeholder="Link Pages in top menu - url:" id="pages_link_url<?php echo $store["store_id"]; ?>" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Here you can enable / disable this link in top menu.">Link Pages in top menu :</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["pages_status"]) && $customisation_general["pages_status"]) { ?>
                        <input type="radio" name="customisation_general[pages_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[pages_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["pages_status"]) && !$customisation_general["pages_status"]) { ?>
                        <input type="radio" name="customisation_general[pages_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[pages_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Here you can enable / disable this link in top menu.">Link Contact in top menu display:</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["contact_map_status"]) && $customisation_general["contact_map_status"]) { ?>
                        <input type="radio" name="customisation_general[contact_map_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[contact_map_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_general["contact_map_status"]) && !$customisation_general["contact_map_status"]) { ?>
                        <input type="radio" name="customisation_general[contact_map_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_general[contact_map_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="contact_map_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                    Link Contact in top menu - title:
                </label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="language-contact_map_title">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-contact_map_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-contact_map_title<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][contact_map_title]" value="<?php echo isset($customisation_general[$language['language_id']]['contact_map_title']) ? $customisation_general[$language['language_id']]['contact_map_title'] : ''; ?>" placeholder="Custom menu item - title:" id="contact_map_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <!--pages-->
            <div>
                <div class="form-group"><h4>Links in item "PAGES" in Top Menu</h4></div>
                <?php if (isset($information_pages)) : ?>
                <?php foreach ($information_pages as $information_page) : ?>
                    <div class="form-group">
                        <label class="col-sm-4 control-label" for="additional_page_status<?php echo $information_page['information_id']; ?><?php echo $store["store_id"]; ?>">Link: <?php echo $information_page['title']; ?></label>
                        <div class="col-sm-8">
                            <input type="hidden" name="customisation_general[additional_page_id][<?php echo $information_page['information_id']; ?>]" value="<?php echo $information_page['information_id']; ?>">

                            <select name="customisation_general[additional_page_status][<?php echo $information_page['information_id']; ?>]" id="additional_page_status<?php echo $information_page['information_id']; ?><?php echo $store["store_id"]; ?>" class="form-control">
                                <option <?php if ($customisation_general['additional_page_status'][$information_page['information_id']] == '1') : ?> selected="selected" <?php endif; ?> value="1">Enable</option>
                                <option <?php if ($customisation_general['additional_page_status'][$information_page['information_id']] == '0') : ?> selected="selected" <?php endif; ?> value="0">Disable</option>
                            </select>
                        </div>
                    </div>
                    <?php endforeach; ?>
                <?php endif; ?>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="additional_page_checkout_status<?php echo $store["store_id"]; ?>">Link: Checkout</label>
                    <div class="col-sm-8">
                        <select name="customisation_general[additional_page_checkout_status]" id="additional_page_checkout_status<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if ($customisation_general['additional_page_checkout_status'] == '1') : ?> selected="selected" <?php endif; ?> value="1">Enable</option>
                            <option <?php if ($customisation_general['additional_page_checkout_status'] == '0') : ?> selected="selected" <?php endif; ?> value="0">Disable</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="additional_page_account_status<?php echo $store["store_id"]; ?>">Link: Account</label>
                    <div class="col-sm-8">
                        <select name="customisation_general[additional_page_account_status]" id="additional_page_account_status<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if ($customisation_general['additional_page_account_status'] == '1') : ?> selected="selected" <?php endif; ?> value="1">Enable</option>
                            <option <?php if ($customisation_general['additional_page_account_status'] == '0') : ?> selected="selected" <?php endif; ?> value="0">Disable</option>
                        </select>
                    </div>
                </div>

            </div>
            <!--pages-->
            </fieldset>
            <fieldset>
                <legend>Footer</legend>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="meta-title<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Here you can enter simple text or html content for footer copyright.">
                            Footer copyright content:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input type="text" name="customisation_general[footercopyright]" value="<?php echo $customisation_general['footercopyright']; ?>" placeholder="Footer copyright content" id="meta-title<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="name-footer_socials_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set title for Footer Social Block.">
                            Footer Social Block - title:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <ul class="nav nav-tabs" id="language-footer_socials_title">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-footer_socials_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-footer_socials_title<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][footer_socials_title]" value="<?php echo isset($customisation_general[$language['language_id']]['footer_socials_title']) ? $customisation_general[$language['language_id']]['footer_socials_title'] : ''; ?>" placeholder="Footer Social Block - title" id="name-footer_socials_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Edit content here or add your own">
                            Footer Social Block:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <textarea name="customisation_general[socials]" rows="5" placeholder="Footer Social Block" id="input-socials" class="form-control"><?php echo $customisation_general['socials']; ?></textarea>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["socials_status"]) && $customisation_general["socials_status"]) { ?>
                            <input type="radio" name="customisation_general[socials_status]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[socials_status]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["socials_status"]) && !$customisation_general["socials_status"]) { ?>
                            <input type="radio" name="customisation_general[socials_status]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[socials_status]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Edit content here or change / add your own images for payment icons">
                            Footer payment icons images:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <textarea name="customisation_general[footerpayment]" rows="5" placeholder="Footer payment icons images" id="input-footerpayment" class="form-control"><?php echo $customisation_general['footerpayment']; ?></textarea>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["footerpayment_status"]) && $customisation_general["footerpayment_status"]) { ?>
                            <input type="radio" name="customisation_general[footerpayment_status]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[footerpayment_status]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["footerpayment_status"]) && !$customisation_general["footerpayment_status"]) { ?>
                            <input type="radio" name="customisation_general[footerpayment_status]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[footerpayment_status]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="name-custom_html_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set html block title.">
                            Custom footer block title:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <ul class="nav nav-tabs" id="language-custom_html_title">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-custom_html_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-custom_html_title<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][custom_html_title]" value="<?php echo isset($customisation_general[$language['language_id']]['custom_html_title']) ? $customisation_general[$language['language_id']]['custom_html_title'] : ''; ?>" placeholder="Custom footer block title" id="name-custom_html_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="input-description-customblock<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>">
                        Custom footer block content:
                    </label>
                    <div class="col-sm-8">
                        <ul class="nav nav-tabs" id="language-customblock">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-customblock<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-customblock<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>">
                                <textarea name="customisation_general[<?php echo $language['language_id']; ?>][customblock_html]" placeholder="Custom footer block content" id="input-description-customblock<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>"><?php echo isset($customisation_general[$language['language_id']]['customblock_html']) ? $customisation_general[$language['language_id']]['customblock_html'] : ''; ?></textarea>
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Here you can enable / disable custom html block in dark footer">
                             Custom footer block visibility:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["customblock_status"]) && $customisation_general["customblock_status"]) { ?>
                            <input type="radio" name="customisation_general[customblock_status]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[customblock_status]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["customblock_status"]) && !$customisation_general["customblock_status"]) { ?>
                            <input type="radio" name="customisation_general[customblock_status]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[customblock_status]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
            </fieldset>

            </div>
            <!--end Header/Footer Blocks-->

            <!--social widgets accounts-->
            <div id="tab-general-layout3-<?php echo $store['store_id']; ?>" class="tab-pane">
            <fieldset>
                <legend>Social Accounts (right fixed panel)</legend>
                <div class="form-group">
                    <div class="col-sm-12 display_block help">Keep in mind, if you leave some field empty corresponding block will not be displayed.</div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="twitter<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="For example, themeforest.">
                            Twitter account for Social Widget:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input type="text" name="customisation_general[twitter]" value="<?php echo $customisation_general['twitter']; ?>" placeholder="Twitter account for Social Widget" id="twitter<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="facebook<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="For example, themeforest.">
                            Facebook profile name for Social Widget:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input type="text" name="customisation_general[facebook]" value="<?php echo $customisation_general['facebook']; ?>" placeholder="Facebook profile name for Social Widget" id="facebook<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="video_code<?php echo $store["store_id"]; ?>">
                        Youtube code for Social Widget:<br>
                        <span class="help" data-toggle="tooltip" title="Video button in right fixed panel">
                            For example, enter only code: HhEPvNx0OYw<br>
                            <a href="https://support.google.com/youtube/answer/171780" target="_blank">Read here</a>
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input type="text" name="customisation_general[video_code]" value="<?php echo $customisation_general['video_code']; ?>" placeholder="Youtube code for Social Widget:" id="video_code<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>Live Chat (bottom right corner)</legend>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="chat_code<?php echo $store["store_id"]; ?>">
                        Code for Live Chat in bottom:<br>
                        <span class="help" data-toggle="tooltip" title="If you need to change code go to site.">
                             <a href="https://www.olark.com" target="_blank">Read here</a>
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <textarea name="customisation_general[chat_code]" rows="5" placeholder="Code for Live Chat:" id="chat_code<?php echo $store["store_id"]; ?>" class="form-control"><?php echo (isset($customisation_general['chat_code']) ? $customisation_general['chat_code'] : ''); ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Here you can enable / disable Live Chat in bottom">
                             Live Chat visibility:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["chat_code_status"]) && $customisation_general["chat_code_status"]) { ?>
                            <input type="radio" name="customisation_general[chat_code_status]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[chat_code_status]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["chat_code_status"]) && !$customisation_general["chat_code_status"]) { ?>
                            <input type="radio" name="customisation_general[chat_code_status]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[chat_code_status]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>

            </fieldset>

            <fieldset>
                <legend>NEWSLETTER SIGHUP block</legend>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="apikey<?php echo $store["store_id"]; ?>">
                        API keys:<br>
                        <span class="help" data-toggle="tooltip" title="Enter your API keys to your Mailchimp account">
                             <a href="http://kb.mailchimp.com/accounts/management/about-api-keys" target="_blank">Read here</a>
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input type="text" name="customisation_general[apikey]" value="<?php echo (isset($customisation_general['apikey']) ? $customisation_general['apikey'] : ''); ?>" placeholder="API keys:" id="apikey<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="list_unique_id<?php echo $store["store_id"]; ?>">
                        List ID:<br>
                        <span class="help" data-toggle="tooltip" title="Enter your list ID to your Mailchimp account">
                            <a href="http://kb.mailchimp.com/lists/managing-subscribers/find-your-list-id" target="_blank">Read here</a>
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input type="text" name="customisation_general[list_unique_id]" value="<?php echo (isset($customisation_general['list_unique_id']) ? $customisation_general['list_unique_id'] : ''); ?>" placeholder="List ID:" id="list_unique_id<?php echo $store["store_id"]; ?>" class="form-control" />
                    </div>
                </div>

                <!--newsletter texts-->
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="name-newsletter_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">Title for Newsletter block:</label>
                    <div class="col-sm-7">
                        <ul class="nav nav-tabs" id="language-newsletter_title">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-newsletter_title<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-newsletter_title<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][newsletter_title]" value="<?php echo isset($customisation_general[$language['language_id']]['newsletter_title']) ? $customisation_general[$language['language_id']]['newsletter_title'] : ''; ?>" placeholder="Newsletter title:" id="name-newsletter_title<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="name-newsletter_promo<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">Promo text for Newsletter block:</label>
                    <div class="col-sm-7">
                        <ul class="nav nav-tabs" id="language-newsletter_promo">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-newsletter_promo<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-newsletter_promo<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][newsletter_promo]" value="<?php echo isset($customisation_general[$language['language_id']]['newsletter_promo']) ? $customisation_general[$language['language_id']]['newsletter_promo'] : ''; ?>" placeholder="Newsletter promo:" id="name-newsletter_promo<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="name-newsletter_placeholder<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>">Placeholder in text field for Newsletter block:</label>
                    <div class="col-sm-7">
                        <ul class="nav nav-tabs" id="language-newsletter_placeholder">
                            <?php foreach ($languages as $language) : ?>
                            <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-newsletter_placeholder<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                        <div class="tab-content">
                            <?php foreach ($languages as $language) : ?>
                            <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-newsletter_placeholder<?php echo $language['language_id']; ?>">
                                <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][newsletter_placeholder]" value="<?php echo isset($customisation_general[$language['language_id']]['newsletter_placeholder']) ? $customisation_general[$language['language_id']]['newsletter_placeholder'] : ''; ?>" placeholder="Newsletter text field placeholder:" id="name-newsletter_placeholder<?php echo $language['language_id']; ?><?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>

                <!--end newsletter texts-->

                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Here you can enable / disable Newsletter subscribe block in bottom">
                             Newsletter subscribe block visibility:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["newsletter_status"]) && $customisation_general["newsletter_status"]) { ?>
                            <input type="radio" name="customisation_general[newsletter_status]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[newsletter_status]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_general["newsletter_status"]) && !$customisation_general["newsletter_status"]) { ?>
                            <input type="radio" name="customisation_general[newsletter_status]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_general[newsletter_status]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>

            </fieldset>





            </div>
            <!--social widgets accounts-->

            <!--sliders-->
            <div id="tab-general-layout4-<?php echo $store['store_id']; ?>" class="tab-pane">
            <div class="form-group">
                <label class="col-sm-5 control-label" for="input-slider_type">
                    <span data-toggle="tooltip" title="
                                                        - Isotope: products come from Latest,Bestsellers,Popular,Specials<br>
                                                        - Isotope Categories: products come from selected categories
                                                         ">Isotope Products type</span>
                </label>
                <div class="col-sm-7">
                    <select name="customisation_slider[slider_type]" id="input-slider_type" class="form-control">
                        <option <?php if ($customisation_slider['slider_type'] == 'isotope_categories') : ?> selected="selected" <?php endif; ?> value="isotope_categories">Isotope Categories</option>
                        <option <?php if ($customisation_slider['slider_type'] == 'isotope_sliders') : ?> selected="selected" <?php endif; ?> value="isotope_sliders">Isotope</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-5 control-label">"Isotope(sliders,categories)" enable/disable:</label>
                <div class="col-sm-7">
                    <label class="radio-inline">
                        <?php if (isset($customisation_slider["sliders_isotope_status"]) && $customisation_slider["sliders_isotope_status"]) { ?>
                        <input type="radio" name="customisation_slider[sliders_isotope_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_slider[sliders_isotope_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_slider["sliders_isotope_status"]) && !$customisation_slider["sliders_isotope_status"]) { ?>
                        <input type="radio" name="customisation_slider[sliders_isotope_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_slider[sliders_isotope_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-5 control-label">"Sliders in row" enable/disable:</label>
                <div class="col-sm-7">
                    <label class="radio-inline">
                        <?php if (isset($customisation_slider["sliders_row_status"]) && $customisation_slider["sliders_row_status"]) { ?>
                        <input type="radio" name="customisation_slider[sliders_row_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_slider[sliders_row_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (isset($customisation_slider["sliders_row_status"]) && !$customisation_slider["sliders_row_status"]) { ?>
                        <input type="radio" name="customisation_slider[sliders_row_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_slider[sliders_row_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            <fieldset>
                <legend>Settings: product module type, "Quick view" block type</legend>

                <!--sliders-->
                <div class="featured">
                    <div class="form-group">
                        <h2 class="title_h2">Featured Slider</h2>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="col-sm-4 control-label" for="featured_type<?php echo $store["store_id"]; ?>">Slider type:</label>
                            <div class="col-sm-8">
                                <select name="customisation_slider[featured_type]" id="featured_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['featured_type']) && $customisation_slider['featured_type'] == 'horizontal') : ?> selected="selected" <?php endif; ?> value="horizontal">Horizontal slider</option>
                                    <option <?php if (isset($customisation_slider['featured_type']) && $customisation_slider['featured_type'] == 'vertical') : ?> selected="selected" <?php endif; ?> value="vertical">Veritical with small images</option>
                                    <option <?php if (isset($customisation_slider['featured_type']) && $customisation_slider['featured_type'] == 'list') : ?> selected="selected" <?php endif; ?> value="list">Simple list of products</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label class="col-sm-5 control-label" for="featured_quick_type<?php echo $store["store_id"]; ?>">"Quick view" type:</label>
                            <div class="col-sm-7">
                                <select name="customisation_slider[featured_quick_type]" id="featured_quick_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['featured_quick_type']) && $customisation_slider['featured_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                                    <option <?php if (isset($customisation_slider['featured_quick_type']) && $customisation_slider['featured_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="latest">
                    <div class="form-group">
                        <h2 class="title_h2">Latest Slider</h2>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="col-sm-4 control-label" for="latest_type<?php echo $store["store_id"]; ?>">Slider type:</label>
                            <div class="col-sm-8">
                                <select name="customisation_slider[latest_type]" id="latest_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['latest_type']) && $customisation_slider['latest_type'] == 'horizontal') : ?> selected="selected" <?php endif; ?> value="horizontal">Horizontal slider</option>
                                    <option <?php if (isset($customisation_slider['latest_type']) && $customisation_slider['latest_type'] == 'vertical') : ?> selected="selected" <?php endif; ?> value="vertical">Veritical with small images</option>
                                    <option <?php if (isset($customisation_slider['latest_type']) && $customisation_slider['latest_type'] == 'list') : ?> selected="selected" <?php endif; ?> value="list">Simple list of products</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label class="col-sm-5 control-label" for="latest_quick_type<?php echo $store["store_id"]; ?>">"Quick view" type:</label>
                            <div class="col-sm-7">
                                <select name="customisation_slider[latest_quick_type]" id="latest_quick_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['latest_quick_type']) && $customisation_slider['latest_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                                    <option <?php if (isset($customisation_slider['latest_quick_type']) && $customisation_slider['latest_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bestseller">
                    <div class="form-group">
                        <h2 class="title_h2">Bestsellers Slider</h2>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="col-sm-4 control-label" for="bestseller_type<?php echo $store["store_id"]; ?>">Slider type:</label>
                            <div class="col-sm-8">
                                <select name="customisation_slider[bestseller_type]" id="bestseller_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['bestseller_type']) && $customisation_slider['bestseller_type'] == 'horizontal') : ?> selected="selected" <?php endif; ?> value="horizontal">Horizontal slider</option>
                                    <option <?php if (isset($customisation_slider['bestseller_type']) && $customisation_slider['bestseller_type'] == 'vertical') : ?> selected="selected" <?php endif; ?> value="vertical">Veritical with small images</option>
                                    <option <?php if (isset($customisation_slider['bestseller_type']) && $customisation_slider['bestseller_type'] == 'list') : ?> selected="selected" <?php endif; ?> value="list">Simple list of products</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label class="col-sm-5 control-label" for="bestseller_quick_type<?php echo $store["store_id"]; ?>">"Quick view" type:</label>
                            <div class="col-sm-7">
                                <select name="customisation_slider[bestseller_quick_type]" id="bestseller_quick_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['bestseller_quick_type']) && $customisation_slider['bestseller_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                                    <option <?php if (isset($customisation_slider['bestseller_quick_type']) && $customisation_slider['bestseller_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popular">
                    <div class="form-group">
                        <h2 class="title_h2">Popular Products Slider</h2>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="col-sm-4 control-label" for="popular_type<?php echo $store["store_id"]; ?>">Slider type:</label>
                            <div class="col-sm-8">
                                <select name="customisation_slider[popular_type]" id="popular_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['popular_type']) && $customisation_slider['popular_type'] == 'horizontal') : ?> selected="selected" <?php endif; ?> value="horizontal">Horizontal slider</option>
                                    <option <?php if (isset($customisation_slider['popular_type']) && $customisation_slider['popular_type'] == 'vertical') : ?> selected="selected" <?php endif; ?> value="vertical">Veritical with small images</option>
                                    <option <?php if (isset($customisation_slider['popular_type']) && $customisation_slider['popular_type'] == 'list') : ?> selected="selected" <?php endif; ?> value="list">Simple list of products</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label class="col-sm-5 control-label" for="popular_quick_type<?php echo $store["store_id"]; ?>">"Quick view" type:</label>
                            <div class="col-sm-7">
                                <select name="customisation_slider[popular_quick_type]" id="popular_quick_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['popular_quick_type']) && $customisation_slider['popular_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                                    <option <?php if (isset($customisation_slider['popular_quick_type']) && $customisation_slider['popular_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="specials">
                    <div class="form-group">
                        <h2 class="title_h2">Specials Slider</h2>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="col-sm-4 control-label" for="special_type<?php echo $store["store_id"]; ?>">Slider type:</label>
                            <div class="col-sm-8">
                                <select name="customisation_slider[special_type]" id="special_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['special_quick_type']) && $customisation_slider['special_type'] == 'horizontal') : ?> selected="selected" <?php endif; ?> value="horizontal">Horizontal slider</option>
                                    <option <?php if (isset($customisation_slider['special_quick_type']) && $customisation_slider['special_type'] == 'vertical') : ?> selected="selected" <?php endif; ?> value="vertical">Veritical with small images</option>
                                    <option <?php if (isset($customisation_slider['special_quick_type']) && $customisation_slider['special_type'] == 'list') : ?> selected="selected" <?php endif; ?> value="list">Simple list of products</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label class="col-sm-5 control-label" for="special_quick_type<?php echo $store["store_id"]; ?>">"Quick view" type:</label>
                            <div class="col-sm-7">
                                <select name="customisation_slider[special_quick_type]" id="special_quick_type<?php echo $store["store_id"]; ?>" class="form-control">
                                    <option <?php if (isset($customisation_slider['special_quick_type']) && $customisation_slider['special_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                                    <option <?php if (isset($customisation_slider['special_quick_type']) && $customisation_slider['special_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <!--sliders-->
            </fieldset>
            </div>
            <!--sliders-->

            <!--Some language variables-->
            <div id="tab-general-layout5-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <div class="col-sm-12 display_block help">Keep in mind, if you leave some field empty corresponding block will not be displayed.</div>
                </div>
                <ul class="nav nav-tabs" id="translation">
                    <?php foreach ($languages as $language) : ?>
                    <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#translation<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php endforeach; ?>
                </ul>
                <div class="tab-content">
                    <?php foreach ($languages as $language) : ?>
                    <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="translation<?php echo $language['language_id']; ?>">
                        <div class="form-group">
                            <label class="col-sm-5 control-label" for="view_details<?php echo $store["store_id"]; ?>">"view details" button in inline "quick view" block:</label>
                            <div class="col-sm-7">
                                <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][view_details]" value="<?php echo (isset($customisation_translation[$language['language_id']]['view_details']) ? $customisation_translation[$language['language_id']]['view_details'] : ''); ?>" placeholder="'view details' button" id="view_details<?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-5 control-label" for="tags_tab_title<?php echo $store["store_id"]; ?>">"tags" tab title on Product page:</label>
                            <div class="col-sm-7">
                                <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][tags_tab_title]" value="<?php echo (isset($customisation_translation[$language['language_id']]['tags_tab_title']) ? $customisation_translation[$language['language_id']]['tags_tab_title'] : ''); ?>" placeholder="'tags' tab" id="tags_tab_title<?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                        </div>



                        <div class="form-group">
                            <label class="col-sm-5 control-label" for="brands_title<?php echo $store["store_id"]; ?>">"Brands" title in Carousel module:</label>
                            <div class="col-sm-7">
                                <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][brands_title]" value="<?php echo (isset($customisation_translation[$language['language_id']]['brands_title']) ? $customisation_translation[$language['language_id']]['brands_title'] : ''); ?>" placeholder="'Brands' title" id="brands_title<?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                        </div>


                        <fieldset>
                            <legend>Countdown block</legend>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="countdown_title<?php echo $store["store_id"]; ?>">Title:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][countdown_title]" value="<?php echo isset($customisation_translation[$language['language_id']]['countdown_title']) ? $customisation_translation[$language['language_id']]['countdown_title'] : ''; ?>" placeholder="countdown title" id="countdown_title<?php echo $store["store_id"]; ?>" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="countdown_title_day<?php echo $store["store_id"]; ?>">"Day" title:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][countdown_title_day]" value="<?php echo isset($customisation_translation[$language['language_id']]['countdown_title_day']) ? $customisation_translation[$language['language_id']]['countdown_title_day'] : ''; ?>" placeholder="Day" id="countdown_title_day<?php echo $store["store_id"]; ?>" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="countdown_title_hour<?php echo $store["store_id"]; ?>">"Hour" title:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][countdown_title_hour]" value="<?php echo isset($customisation_translation[$language['language_id']]['countdown_title_hour']) ? $customisation_translation[$language['language_id']]['countdown_title_hour'] : ''; ?>" placeholder="Hour" id="countdown_title_hour<?php echo $store["store_id"]; ?>" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="countdown_title_minute<?php echo $store["store_id"]; ?>">"Minute" title:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][countdown_title_minute]" value="<?php echo isset($customisation_translation[$language['language_id']]['countdown_title_minute']) ? $customisation_translation[$language['language_id']]['countdown_title_minute'] : ''; ?>" placeholder="Minute" id="countdown_title_minute<?php echo $store["store_id"]; ?>" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-5 control-label" for="countdown_title_second<?php echo $store["store_id"]; ?>">"Second" title:</label>
                                <div class="col-sm-7">
                                    <input type="text" name="customisation_translation[<?php echo $language['language_id']; ?>][countdown_title_second]" value="<?php echo isset($customisation_translation[$language['language_id']]['countdown_title_second']) ? $customisation_translation[$language['language_id']]['countdown_title_second'] : ''; ?>" placeholder="Second" id="countdown_title_second<?php echo $store["store_id"]; ?>" class="form-control" />
                                </div>
                            </div>
                        </fieldset>


                    </div>
                    <?php endforeach; ?>
                </div>





            </div>
            <!--end Some language variables-->

        </div>
    </div>
    <!-------------------------------------end tab General---------------------------------->

    <!-------------------------------------tab Colors,backgrounds,fonts-->
    <div class="tab-pane" id="tab-colors<?php echo $store['store_id']; ?>">

        <ul class="nav nav-tabs col-sm-3 main_tabs_vertical">
            <li class="active"><a href="#tab-colors-layout1-<?php echo $store['store_id']; ?>" class="selected" data-toggle="tab">General</a></li>
            <li><a href="#tab-colors-layout2-<?php echo $store['store_id']; ?>" data-toggle="tab">Captions</a></li>
            <li><a href="#tab-colors-layout3-<?php echo $store['store_id']; ?>" data-toggle="tab">Header</a></li>
            <li><a href="#tab-colors-layout4-<?php echo $store['store_id']; ?>" data-toggle="tab">Header/Drop down boxes</a></li>
            <li><a href="#tab-colors-layout5-<?php echo $store['store_id']; ?>" data-toggle="tab">Header/Top Navigation</a></li>
            <li><a href="#tab-colors-layout6-<?php echo $store['store_id']; ?>" data-toggle="tab">Content</a></li>
            <li><a href="#tab-colors-layout7-<?php echo $store['store_id']; ?>" data-toggle="tab">Footer/Top</a></li>
            <li><a href="#tab-colors-layout9-<?php echo $store['store_id']; ?>" data-toggle="tab">Footer/Information block</a></li>
            <li><a href="#tab-colors-layout8-<?php echo $store['store_id']; ?>" data-toggle="tab">Footer/Bottom</a></li>
            <li><a href="#tab-colors-layout10-<?php echo $store['store_id']; ?>" data-toggle="tab">Price</a></li>
        </ul>
        <div class="tab-content col-sm-8">
            <!--subtabs: General -->
            <div class="tab-pane active" id="tab-colors-layout1-<?php echo $store['store_id']; ?>">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="layout_skin<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set layout for all site">
                             Layout skin:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <select name="customisation_colors[layout_skin]" id="layout_skin<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'default') : ?> selected="selected" <?php endif; ?> value="default">Default layout</option>
                            <option <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'electronic') : ?> selected="selected" <?php endif; ?> value="electronic">Electronic layout</option>
                            <option <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'food') : ?> selected="selected" <?php endif; ?> value="food">Food layout</option>
                            <option <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'kids') : ?> selected="selected" <?php endif; ?> value="kids">Kids layout</option>
                            <option <?php if (isset($customisation_colors['layout_skin']) && $customisation_colors['layout_skin'] == 'corporative') : ?> selected="selected" <?php endif; ?> value="corporative">Corporative layout</option>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_bgcolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background color for all content.">
                             Background Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_bgcolor']; ?>;color:white" type="text" name="customisation_colors[general_bgcolor]" value="<?php echo $customisation_colors['general_bgcolor']; ?>" placeholder="Background color:" />
                    </div>
                </div>




                <div class="form-group">
                    <label class="col-sm-4 control-label">
                         <span data-toggle="tooltip" title="Set background image for all site.">
                              Background Image:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <?php if (!isset($store['store_id']) || $store['store_id'] == 0) { ?>
                            <a href="" id="thumb-contentbg" data-toggle="image" class="img-thumbnail">
                                <img src="<?php echo $contentbg; ?>" alt="" title="" data-placeholder="Background Image:" />
                            </a>
                            <input type="hidden" name="customisation_contentbg" value="<?php echo $customisation_contentbg; ?>" id="input-contentbg" />
                        <?php } else { ?>
                            <div>
                                <div>Upload image in path: image/catalog/ and write here only name as "image.png"</div>
                                <input type="text" name="customisation_general[contentbg]" value="<?php echo (isset($customisation_general['contentbg']) ? $customisation_general['contentbg'] : ''); ?>" placeholder="Background image" id="contentbg<?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                        <?php } ?>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-4 control-label" for="content_bg_mode<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background image display mode">
                             Background Image display mode:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <select name="customisation_colors[content_bg_mode]" id="content_bg_mode<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_colors['content_bg_mode']) && $customisation_colors['content_bg_mode'] == 'repeat') : ?> selected="selected" <?php endif; ?> value="repeat">Repeat</option>
                            <option <?php if (isset($customisation_colors['content_bg_mode']) && $customisation_colors['content_bg_mode'] == 'no-repeat') : ?> selected="selected" <?php endif; ?> value="no-repeat">no-repeat</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_themecolor<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="This color will be used for buttons and icons.">
                            Theme color:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_themecolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_themecolor']; ?>;color:white" type="text" name="customisation_colors[general_themecolor]" value="<?php echo $customisation_colors['general_themecolor']; ?>" placeholder="Theme color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_input<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set color for border of form elements.">
                             Border of form elements:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_input<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_input']; ?>;color:white" type="text" name="customisation_colors[general_input]" value="<?php echo $customisation_colors['general_input']; ?>" placeholder="Input hover color (focus border):" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_text<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set default text color for all blocks.">
                             Text Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_text<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_text']; ?>;color:white" type="text" name="customisation_colors[general_text]" value="<?php echo $customisation_colors['general_text']; ?>" placeholder="Text Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_link<?php echo $store["store_id"]; ?>">
                          <span data-toggle="tooltip" title="Set default link color for all blocks.">
                              Link Color:
                          </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_link<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_link']; ?>;color:white" type="text" name="customisation_colors[general_link]" value="<?php echo $customisation_colors['general_link']; ?>" placeholder="Link Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_general_linkhover<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set default link hover color for all blocks.">
                             Link Hover Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_general_linkhover<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['general_linkhover']; ?>;color:white" type="text" name="customisation_colors[general_linkhover]" value="<?php echo $customisation_colors['general_linkhover']; ?>" placeholder="Link Hover Color:" />
                    </div>
                </div>

            </div>
            <!--subtabs: General -->

            <!--subtabs: Captions  -->
            <div id="tab-colors-layout2-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-6 control-label">
                        Font:<div class="help">Select font which will be used for headings, buttons, block titles etc. Theme use Google font's library. Find out more here - <a target="_blank" href="//www.google.com/fonts/">Google web fonts free library</a></div>
                    </label>
                    <div class="col-sm-6">
                        <select class="form-control width_auto" id="customisation_colors_captions_font<?php echo $store["store_id"]; ?>" name="customisation_colors[captions_font]" data-active="<?php echo $customisation_colors['captions_font']; ?>">
                            <option value="-">Select</option>
                            <option value="Oswald">Oswald</option>
                            <option value="Aclonica">Aclonica</option>
                            <option value="Allan">Allan</option>
                            <option value="Allerta">Allerta</option>
                            <option value="Amaranth">Amaranth</option>
                            <option value="Anton">Anton</option>
                            <option value="Arimo">Arimo</option>
                            <option value="Artifika">Artifika</option>
                            <option value="Arvo">Arvo</option>
                            <option value="Asset">Asset</option>
                            <option value="Astloch">Astloch</option>
                            <option value="Bangers">Bangers</option>
                            <option value="Bentham">Bentham</option>
                            <option value="Bevan">Bevan</option>
                            <option value="Cabin">Cabin</option>
                            <option value="Calligraffitti">Calligraffitti</option>
                            <option value="Candal">Candal</option>
                            <option value="Cantarell">Cantarell</option>
                            <option value="Cardo">Cardo</option>
                            <option value="Coda">Coda</option>
                            <option value="Crushed">Crushed</option>
                            <option value="Cuprum">Cuprum</option>
                            <option value="Damion">Damion</option>
                            <option value="Forum">Forum</option>
                            <option value="Geo">Geo</option>
                            <option value="Gruppo">Gruppo</option>
                            <option value="Inconsolata">Inconsolata</option>
                            <option value="Judson">Judson</option>
                            <option value="Jura">Jura</option>
                            <option value="Kameron">Kameron</option>
                            <option value="Kenia">Kenia</option>
                            <option value="Kranky">Kranky</option>
                            <option value="Kreon">Kreon</option>
                            <option value="Kristi">Kristi</option>
                            <option value="Lekton">Lekton</option>
                            <option value="Limelight">Limelight</option>
                            <option value="Lobster">Lobster</option>
                            <option value="Lora">Lora</option>
                            <option value="Mako">Mako</option>
                            <option value="MedievalSharp">MedievalSharp</option>
                            <option value="Megrim">Megrim</option>
                            <option value="Merriweather">Merriweather</option>
                            <option value="Metrophobic">Metrophobic</option>
                            <option value="Michroma">Michroma</option>
                            <option value="Monofett">Monofett</option>
                            <option value="Neucha">Neucha</option>
                            <option value="Neuton">Neuton</option>
                            <option value="Orbitron">Orbitron</option>
                            <option value="Pacifico">Pacifico</option>
                            <option value="Philosopher">Philosopher</option>
                            <option value="Play">Play</option>
                            <option value="Puritan">Puritan</option>
                            <option value="Quattrocento">Quattrocento</option>
                            <option value="Radley">Radley</option>
                            <option value="Rokkitt">Rokkitt</option>
                            <option value="Schoolbell">Schoolbell</option>
                            <option value="Slackey">Slackey</option>
                            <option value="Smythe">Smythe</option>
                            <option value="Sunshiney">Sunshiney</option>
                            <option value="Syncopate">Syncopate</option>
                            <option value="Tangerine">Tangerine</option>
                            <option value="Ubuntu">Ubuntu</option>
                            <option value="Ultra">Ultra</option>
                            <option value="Varela">Varela</option>
                            <option value="Vibur">Vibur</option>
                            <option value="Wallpoet">Wallpoet</option>
                            <option value="Zeyada">Zeyada</option>
                        </select>
                        <span id="customisation_colors_captions_font_preview<?php echo $store["store_id"]; ?>" style="font-size:30px;line-height: 30px; display:block;padding:8px 0 0 0">Lorem Ipsum Dolor</span>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="customisation_colors_captions_text<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set text color for all captions.">
                             Text Color:
                        </span>
                    </label>
                    <div class="col-sm-6">
                        <input class="form-control width_auto" id="customisation_colors_captions_text<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['captions_text']; ?>;color:white" type="text" name="customisation_colors[captions_text]" value="<?php echo $customisation_colors['captions_text']; ?>" placeholder="Set text color for all captions." />
                    </div>
                </div>
            </div>
            <!--subtabs: Captions  -->

            <!--subtabs: tool line  -->
            <div id="tab-colors-layout3-<?php echo $store['store_id']; ?>" class="tab-pane">

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_topline_bgcolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background color for header.">
                             Background Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_topline_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['topline_bgcolor']; ?>;color:white" type="text" name="customisation_colors[topline_bgcolor]" value="<?php echo $customisation_colors['topline_bgcolor']; ?>" placeholder="Background Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Set top and bottom shadows near Top menu">Shadows:</span>
                    </label>
                    <div class="col-sm-8">
                        <label class="radio-inline">
                            <?php if (isset($customisation_colors["topline_shadow"]) && $customisation_colors["topline_shadow"]) { ?>
                            <input type="radio" name="customisation_colors[topline_shadow]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_colors[topline_shadow]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_colors["topline_shadow"]) && !$customisation_colors["topline_shadow"]) { ?>
                            <input type="radio" name="customisation_colors[topline_shadow]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_colors[topline_shadow]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_topline_phonecolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set text color for default message in Header.">
                             Color of Default Message:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_topline_phonecolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['topline_phonecolor']; ?>;color:white" type="text" name="customisation_colors[topline_phonecolor]" value="<?php echo $customisation_colors['topline_phonecolor']; ?>" placeholder="Phone number color:" />
                    </div>
                </div>
            </div>
            <!--subtabs: tool line  -->

            <!--subtabs: Drop down boxes (TopLine)   -->
            <div id="tab-colors-layout4-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_dd_ink<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set link color for drop down box in header.">
                             Link Color:
                         </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_dd_ink<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['dd_ink']; ?>;color:white" type="text" name="customisation_colors[dd_ink]" value="<?php echo $customisation_colors['dd_ink']; ?>" placeholder="Link Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_dd_linkhover<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set hover background color for items in drop down box in header.">
                            Hover background:
                        </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_dd_linkhover<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['dd_linkhover']; ?>;color:white" type="text" name="customisation_colors[dd_linkhover]" value="<?php echo $customisation_colors['dd_linkhover']; ?>" placeholder="Link Hover Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_dd_bgcolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background color for drop down box in header.">
                              Background Color:
                         </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_dd_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['dd_bgcolor']; ?>;color:white" type="text" name="customisation_colors[dd_bgcolor]" value="<?php echo $customisation_colors['dd_bgcolor']; ?>" placeholder="Background Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_dd_border<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set border color for drop down box in header.">
                             Border Color:
                         </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_dd_border<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['dd_border']; ?>;color:white" type="text" name="customisation_colors[dd_border]" value="<?php echo $customisation_colors['dd_border']; ?>" placeholder="Border Color:" />
                    </div>
                </div>
            </div>
            <!--subtabs: Drop down boxes (TopLine)   -->

            <!--subtabs: Header Navigation   -->
            <div id="tab-colors-layout5-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_headernav_text<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set color for top level links.">
                              Top level items color:
                         </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_headernav_text<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['headernav_text']; ?>;color:white" type="text" name="customisation_colors[headernav_text]" value="<?php echo $customisation_colors['headernav_text']; ?>" placeholder="Top level items color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_headernav_linkhover<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set link hover color.">
                             Top level items hover color:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_headernav_linkhover<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['headernav_linkhover']; ?>;color:white" type="text" name="customisation_colors[headernav_linkhover]" value="<?php echo $customisation_colors['headernav_linkhover']; ?>" placeholder="Top level items hover color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_headernav_link<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set sub level links and texts color.">
                             Sub level links and texts color:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_headernav_link<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['headernav_link']; ?>;color:white" type="text" name="customisation_colors[headernav_link]" value="<?php echo $customisation_colors['headernav_link']; ?>" placeholder="Sub level links color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_top_menu_bgcolor<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set Top menu background color.">
                             Top menu background color:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_top_menu_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['top_menu_bgcolor']; ?>;color:white" type="text" name="customisation_colors[top_menu_bgcolor]" value="<?php echo $customisation_colors['top_menu_bgcolor']; ?>" placeholder="Top menu background color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_headernav_bgcolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background color for drop down blocks.">
                              Dropdown blocks background color:
                         </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_headernav_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['headernav_bgcolor']; ?>;color:white" type="text" name="customisation_colors[headernav_bgcolor]" value="<?php echo $customisation_colors['headernav_bgcolor']; ?>" placeholder="Dropdown blocks:" />
                    </div>
                </div>
            </div>
            <!--subtabs: Header Navigation   -->

            <!--subtabs: Content -->
            <div id="tab-colors-layout6-<?php echo $store['store_id']; ?>" class="tab-pane">

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="customisation_colors_content_border_color<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set color of border for product images in listings and sliders.">
                            Color of border for product images:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <input class="form-control width_auto" id="customisation_colors_content_border_color<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['content_border_color']; ?>;color:white" type="text" name="customisation_colors[content_border_color]" value="<?php echo $customisation_colors['content_border_color']; ?>" placeholder="Color of border for product images:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="product_border<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set type of border for product images in listings and sliders.">
                            Type of border for product images:
                        </span>
                    </label>
                    <div class="col-sm-7">
                        <select name="customisation_colors[product_border]" id="product_border<?php echo $store["store_id"]; ?>" class="form-control">
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '1px solid') : ?> selected="selected" <?php endif; ?> value="1px solid">Solid, 1px</option>
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '2px solid') : ?> selected="selected" <?php endif; ?> value="2px solid">Solid, 2px</option>
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '1px dashed') : ?> selected="selected" <?php endif; ?> value="1px dashed">Dashed, 1px</option>
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '2px dashed') : ?> selected="selected" <?php endif; ?> value="2px dashed">Dashed, 2px</option>
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '1px dotted') : ?> selected="selected" <?php endif; ?> value="1px dotted">Dotted, 1px</option>
                            <option <?php if (isset($customisation_colors['product_border']) && $customisation_colors['product_border'] == '2px dotted') : ?> selected="selected" <?php endif; ?> value="2px dotted">Dotted, 2px</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label">
                        <span data-toggle="tooltip" title="Enable/disable product border shadow">Product border:</span>
                    </label>
                    <div class="col-sm-7">
                        <label class="radio-inline">
                            <?php if (isset($customisation_colors["product_shadow"]) && $customisation_colors["product_shadow"]) { ?>
                            <input type="radio" name="customisation_colors[product_shadow]" value="1" checked="checked" />
                            <?php echo $text_yes; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_colors[product_shadow]" value="1" />
                            <?php echo $text_yes; ?>
                            <?php } ?>
                        </label>
                        <label class="radio-inline">
                            <?php if (isset($customisation_colors["product_shadow"]) && !$customisation_colors["product_shadow"]) { ?>
                            <input type="radio" name="customisation_colors[product_shadow]" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="customisation_colors[product_shadow]" value="0" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </label>
                    </div>
                </div>
            </div>
            <!--subtabs: Content -->

            <!--subtabs: Footer welcome -->
            <div id="tab-colors-layout7-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_footerinfo_text<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set text color for footer info block.">
                             Text Color:
                        </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_footerinfo_text<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerinfo_text']; ?>;color:white" type="text" name="customisation_colors[footerinfo_text]" value="<?php echo $customisation_colors['footerinfo_text']; ?>" placeholder="Text Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_footerinfo_link<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set link color for footer info block.">
                              Link Color:
                         </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_footerinfo_link<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerinfo_link']; ?>;color:white" type="text" name="customisation_colors[footerinfo_link]" value="<?php echo $customisation_colors['footerinfo_link']; ?>" placeholder="Link Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_footerinfo_captions<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set captions color for footer info block.">
                            Captions  Color:
                        </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_footerinfo_captions<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerinfo_captions']; ?>;color:white" type="text" name="customisation_colors[footerinfo_captions]" value="<?php echo $customisation_colors['footerinfo_captions']; ?>" placeholder="Captions  Color:" />
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-3 control-label" for="customisation_colors_footerinfo_bgcolor<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set background color for footer info block.">
                              Background Color:
                         </span>
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control width_auto" id="customisation_colors_footerinfo_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerinfo_bgcolor']; ?>;color:white" type="text" name="customisation_colors[footerinfo_bgcolor]" value="<?php echo $customisation_colors['footerinfo_bgcolor']; ?>" placeholder="Background Color:" />
                    </div>
                </div>
            </div>
            <!--subtabs: Footer welcome -->

            <!--subtabs: Footer -->
            <div id="tab-colors-layout8-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footer_text<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set text color for footer block.">
                             Text Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footer_text<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footer_text']; ?>;color:white" type="text" name="customisation_colors[footer_text]" value="<?php echo $customisation_colors['footer_text']; ?>" placeholder="Text Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footer_link<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set link color for footer block.">
                            Link Color:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footer_link<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footer_link']; ?>;color:white" type="text" name="customisation_colors[footer_link]" value="<?php echo $customisation_colors['footer_link']; ?>" placeholder="Link Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footer_link_hover<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set link hover color for footer block.">
                              Link Hover Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footer_link_hover<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footer_link_hover']; ?>;color:white" type="text" name="customisation_colors[footer_link_hover]" value="<?php echo $customisation_colors['footer_link_hover']; ?>" placeholder="Link Hover Color:" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footer_bgcolor<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set background color for footer block.">
                             Background Color:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footer_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footer_bgcolor']; ?>;color:white" type="text" name="customisation_colors[footer_bgcolor]" value="<?php echo $customisation_colors['footer_bgcolor']; ?>" placeholder="Background Color:" />
                    </div>
                </div>

            </div>
            <!--subtabs: Footer -->

            <!--subtabs: Footer popup-->
            <div id="tab-colors-layout9-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footerpopup_captions<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set captions text color for footer information block.">
                             Captions text color:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footerpopup_captions<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerpopup_captions']; ?>;color:white" type="text" name="customisation_colors[footerpopup_captions]" value="<?php echo $customisation_colors['footerpopup_captions']; ?>" placeholder="Captions text color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footerpopup_link<?php echo $store["store_id"]; ?>">
                         <span data-toggle="tooltip" title="Set links and texts color for footer information block.">
                             Links and texts Color:
                         </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footerpopup_link<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerpopup_link']; ?>;color:white" type="text" name="customisation_colors[footerpopup_link]" value="<?php echo $customisation_colors['footerpopup_link']; ?>" placeholder="Link Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footerpopup_linkhover<?php echo $store["store_id"]; ?>">
                          <span data-toggle="tooltip" title="Set icons color for footer information block.">
                              Icons Color:
                          </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footerpopup_linkhover<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerpopup_linkhover']; ?>;color:white" type="text" name="customisation_colors[footerpopup_linkhover]" value="<?php echo $customisation_colors['footerpopup_linkhover']; ?>" placeholder="Icons Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label" for="customisation_colors_footerpopup_bgcolor<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set background color for footer information block.">
                            Background Color:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <input class="form-control width_auto" id="customisation_colors_footerpopup_bgcolor<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['footerpopup_bgcolor']; ?>;color:white" type="text" name="customisation_colors[footerpopup_bgcolor]" value="<?php echo $customisation_colors['footerpopup_bgcolor']; ?>" placeholder="Background Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">
                        <span data-toggle="tooltip" title="Upload Footer Info background image.">
                             Footer Info background image:
                        </span>
                    </label>
                    <div class="col-sm-8">
                        <?php if (!isset($store['store_id']) || $store['store_id'] == 0) { ?>
                            <a href="" id="thumb-delimeter" data-toggle="image" class="img-thumbnail">
                                <img src="<?php echo $delimeter; ?>" alt="" title="" data-placeholder="Footer Info background image:" />
                            </a>
                            <input type="hidden" name="customisation_delimeter" value="<?php echo $customisation_delimeter; ?>" id="delimeter" />
                        <?php } else { ?>
                            <div>
                                <div>Upload image in path: image/catalog/ and write here only name as "image.png"</div>
                                <input type="text" name="customisation_general[delimeter]" value="<?php echo (isset($customisation_general['delimeter']) ? $customisation_general['delimeter'] : ''); ?>" placeholder="Background image" id="delimeter<?php echo $store["store_id"]; ?>" class="form-control" />
                            </div>
                        <?php } ?>
                    </div>
                </div>


            </div>
            <!--subtabs: Footer popup-->

            <!--subtabs: price-->
            <div id="tab-colors-layout10-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-6 control-label">
                        Price Font:<div class="help">Select font which will be used for prices. Theme use Google font's library. Find out more here - <a target="_blank" href="//www.google.com/fonts/">Google web fonts free library</a></div>
                    </label>
                    <div class="col-sm-6">
                        <select class="form-control width_auto" id="customisation_colors_price_font<?php echo $store["store_id"]; ?>" name="customisation_colors[price_font]" data-active="<?php echo $customisation_colors['price_font']; ?>">
                            <option value="-">Select</option>
                            <option value="Oswald">Oswald</option>
                            <option value="Aclonica">Aclonica</option>
                            <option value="Allan">Allan</option>
                            <option value="Allerta">Allerta</option>
                            <option value="Amaranth">Amaranth</option>
                            <option value="Anton">Anton</option>
                            <option value="Arimo">Arimo</option>
                            <option value="Artifika">Artifika</option>
                            <option value="Arvo">Arvo</option>
                            <option value="Asset">Asset</option>
                            <option value="Astloch">Astloch</option>
                            <option value="Bangers">Bangers</option>
                            <option value="Bentham">Bentham</option>
                            <option value="Bevan">Bevan</option>
                            <option value="Cabin">Cabin</option>
                            <option value="Calligraffitti">Calligraffitti</option>
                            <option value="Candal">Candal</option>
                            <option value="Cantarell">Cantarell</option>
                            <option value="Cardo">Cardo</option>
                            <option value="Coda">Coda</option>
                            <option value="Crushed">Crushed</option>
                            <option value="Cuprum">Cuprum</option>
                            <option value="Damion">Damion</option>
                            <option value="Forum">Forum</option>
                            <option value="Geo">Geo</option>
                            <option value="Gruppo">Gruppo</option>
                            <option value="Inconsolata">Inconsolata</option>
                            <option value="Judson">Judson</option>
                            <option value="Jura">Jura</option>
                            <option value="Kameron">Kameron</option>
                            <option value="Kenia">Kenia</option>
                            <option value="Kranky">Kranky</option>
                            <option value="Kreon">Kreon</option>
                            <option value="Kristi">Kristi</option>
                            <option value="Lekton">Lekton</option>
                            <option value="Limelight">Limelight</option>
                            <option value="Lobster">Lobster</option>
                            <option value="Lora">Lora</option>
                            <option value="Mako">Mako</option>
                            <option value="MedievalSharp">MedievalSharp</option>
                            <option value="Megrim">Megrim</option>
                            <option value="Merriweather">Merriweather</option>
                            <option value="Metrophobic">Metrophobic</option>
                            <option value="Michroma">Michroma</option>
                            <option value="Monofett">Monofett</option>
                            <option value="Neucha">Neucha</option>
                            <option value="Neuton">Neuton</option>
                            <option value="Orbitron">Orbitron</option>
                            <option value="Pacifico">Pacifico</option>
                            <option value="Philosopher">Philosopher</option>
                            <option value="Play">Play</option>
                            <option value="Puritan">Puritan</option>
                            <option value="Quattrocento">Quattrocento</option>
                            <option value="Radley">Radley</option>
                            <option value="Rokkitt">Rokkitt</option>
                            <option value="Schoolbell">Schoolbell</option>
                            <option value="Slackey">Slackey</option>
                            <option value="Smythe">Smythe</option>
                            <option value="Sunshiney">Sunshiney</option>
                            <option value="Syncopate">Syncopate</option>
                            <option value="Tangerine">Tangerine</option>
                            <option value="Ubuntu">Ubuntu</option>
                            <option value="Ultra">Ultra</option>
                            <option value="Varela">Varela</option>
                            <option value="Vibur">Vibur</option>
                            <option value="Wallpoet">Wallpoet</option>
                            <option value="Zeyada">Zeyada</option>
                        </select>
                        <span id="customisation_colors_price_font_preview<?php echo $store["store_id"]; ?>" style="font-size:30px;line-height: 30px; display:block;padding:8px 0 0 0">Lorem Ipsum Dolor</span>

                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-6 control-label" for="customisation_colors_price_regular<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set color for a regular price display.">
                            Regular price Color:
                        </span>
                    </label>
                    <div class="col-sm-6">
                        <input class="form-control width_auto" id="customisation_colors_price_regular<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['price_regular']; ?>;color:white" type="text" name="customisation_colors[price_regular]" value="<?php echo $customisation_colors['price_regular']; ?>" placeholder="Regular price Color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-6 control-label" for="customisation_colors_price_new<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set color for a new price display.">
                            New special price color:
                        </span>
                    </label>
                    <div class="col-sm-6">
                        <input class="form-control width_auto" id="customisation_colors_price_new<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['price_new']; ?>;color:white" type="text" name="customisation_colors[price_new]" value="<?php echo $customisation_colors['price_new']; ?>" placeholder="New special price color:" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-6 control-label" for="customisation_colors_price_old<?php echo $store["store_id"]; ?>">
                        <span data-toggle="tooltip" title="Set color for an old price display.">
                             Old price color:
                        </span>
                    </label>
                    <div class="col-sm-6">
                        <input class="form-control width_auto" id="customisation_colors_price_old<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_colors['price_old']; ?>;color:white" type="text" name="customisation_colors[price_old]" value="<?php echo $customisation_colors['price_old']; ?>" placeholder="Old price color:" />
                    </div>
                </div>
            </div>
            <!--subtabs: price-->


        </div>


    </div>
    <!-------------------------------------end tab Colors,backgrounds,fonts-->

    <!-------------------------------------tab Products sliders, products listings-->
    <div class="tab-pane" id="tab-products<?php echo $store['store_id']; ?>">

        <ul class="nav nav-tabs col-sm-3 main_tabs_vertical">
            <li class="active"><a href="#tab-products-layout1-<?php echo $store['store_id']; ?>" class="selected" data-toggle="tab">Listings</a></li>
            <li><a href="#tab-products-layout2-<?php echo $store['store_id']; ?>" data-toggle="tab">Product labels</a></li>
            <li><a href="#tab-products-layout3-<?php echo $store['store_id']; ?>" data-toggle="tab">Product Page</a></li>
        </ul>
        <div class="tab-content col-sm-8">
            <!--subtabs: Listings -->
            <div class="tab-pane active" id="tab-products-layout1-<?php echo $store['store_id']; ?>">
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-product_catalog_mode">
                                                        <span data-toggle="tooltip" title="Create your listings into simple catalog.">
                                                             Catalog mode:
                                                        </span>
                    </label>
                    <div class="col-sm-6">
                        <select name="customisation_products[product_catalog_mode]" id="input-product_catalog_mode" class="form-control">
                            <option <?php if (isset($customisation_products['product_catalog_mode']) && $customisation_products['product_catalog_mode'] == 0) : ?> selected="selected" <?php endif; ?> value="0">Disable catalog mode</option>
                            <option <?php if (isset($customisation_products['product_catalog_mode']) && $customisation_products['product_catalog_mode'] == 1) : ?> selected="selected" <?php endif; ?> value="1">Enable catalog mode</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-listing_quick_type">"Quick view" type in listings</label>
                    <div class="col-sm-6">
                        <select name="customisation_products[listing_quick_type]" id="input-listing_quick_type" class="form-control">
                            <option <?php if (isset($customisation_products['listing_quick_type']) && $customisation_products['listing_quick_type'] == 'inline') : ?> selected="selected" <?php endif; ?> value="inline">On the same page</option>
                            <option <?php if (isset($customisation_products['listing_quick_type']) && $customisation_products['listing_quick_type'] == 'popup') : ?> selected="selected" <?php endif; ?> value="popup">In popup window</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-product_listing_type">
                                                        <span data-toggle="tooltip" title="Choose product image preview size in listing.">
                                                             Product listing type:
                                                        </span>
                    </label>
                    <div class="col-sm-6">
                        <select name="customisation_products[product_listing_type]" id="input-product_listing_type" class="form-control">
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'big_with_column') : ?> selected="selected" <?php endif; ?> value="big_with_column">Big previews with left column</option>
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'big_without_column') : ?> selected="selected" <?php endif; ?> value="big_without_column">Big previews without left column</option>
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'small_with_column') : ?> selected="selected" <?php endif; ?> value="small_with_column">Small previews with left column</option>
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'small_without_column') : ?> selected="selected" <?php endif; ?> value="small_without_column">Small previews without left column</option>
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'isotope_with_column') : ?> selected="selected" <?php endif; ?> value="isotope_with_column">Isotope mode with left column</option>
                            <option <?php if (isset($customisation_products['product_listing_type']) && $customisation_products['product_listing_type'] == 'isotope_without_column') : ?> selected="selected" <?php endif; ?> value="isotope_without_column">Isotope mode without left column</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-bs_products_listing_images_sizes">Sizes of images in products blocks<br> (in left column on listing page):</span>
                    </label>
                    <div class="col-sm-6">
                        <select name="customisation_products[bs_products_listing_images_sizes]" id="input-bs_products_listing_images_sizes" class="form-control">
                            <option <?php if (isset($customisation_products['bs_products_listing_images_sizes']) && $customisation_products['bs_products_listing_images_sizes'] == 'small') : ?> selected="selected" <?php endif; ?> value="small">Small images</option>
                            <option <?php if (isset($customisation_products['bs_products_listing_images_sizes']) && $customisation_products['bs_products_listing_images_sizes'] == 'big') : ?> selected="selected" <?php endif; ?> value="big">Big images</option>
                        </select>
                    </div>
                </div>
                <fieldset>
                    <legend>General numerical values for listings</legend>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-izotope_number">
                                                            <span data-toggle="tooltip" title="Only one image can be set as big here.">
                                                                Number of elements with big width for izotope mode:
                                                            </span>
                        </label>
                        <div class="col-sm-6">
                            <input type="text" name="customisation_products[izotope_number]" value="<?php echo (isset($customisation_products['izotope_number']) ? $customisation_products['izotope_number'] : ''); ?>" placeholder="Number of elements" id="input-izotope_number" class="form-control width_auto" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_description_inline">Number of symbols in inline description in "Quick view"<br>(for example,2600):</label>
                        <div class="col-sm-6">
                            <input type="text" name="customisation_products[limit_description_inline]" value="<?php echo (isset($customisation_products['limit_description_inline']) ? $customisation_products['limit_description_inline'] : ''); ?>" placeholder="Number of elements" id="input-limit_description_inline" class="form-control width_auto" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label" for="input-limit_description_popup">Number of symbols in popup description in "Quick view"<br>(for example,1500):</label>
                        <div class="col-sm-6">
                            <input type="text" name="customisation_products[limit_description_popup]" value="<?php echo (isset($customisation_products['limit_description_popup']) ? $customisation_products['limit_description_popup'] : ''); ?>" placeholder="Number of elements" id="input-limit_description_popup" class="form-control width_auto" />
                        </div>
                    </div>
                </fieldset>
            </div>

            <!--subtabs: labels -->
            <div id="tab-products-layout2-<?php echo $store['store_id']; ?>" class="tab-pane">
            <div class="form-group">
                <label class="col-sm-4 control-label">Show "Sale" label:</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["sale_status"]) { ?>
                        <input type="radio" name="customisation_products[sale_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[sale_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["sale_status"]) { ?>
                        <input type="radio" name="customisation_products[sale_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[sale_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="sale_text1">Title for "Sale" label:</label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="sale_text">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#sale_text<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="sale_text<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][sale_text]" value="<?php echo isset($customisation_general[$language['language_id']]['sale_text']) ? $customisation_general[$language['language_id']]['sale_text'] : ''; ?>" placeholder="'Sale' label title:" id="sale_text1" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="customisation_products_sale_label_bg<?php echo $store["store_id"]; ?>">
                                                        <span data-toggle="tooltip" title="Set background color of 'Sale' label.">
                                                            Color of "Sale" label:
                                                        </span>
                </label>
                <div class="col-sm-8">
                    <input class="form-control width_auto" id="customisation_products_sale_label_bg<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_products['sale_label_bg']; ?>;color:white" type="text" name="customisation_products[sale_label_bg]" value="<?php echo (isset($customisation_products['sale_label_bg']) ? $customisation_products['sale_label_bg'] : ''); ?>" placeholder="Color of 'Sale' label:" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Show "New" label:</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["new_status"]) { ?>
                        <input type="radio" name="customisation_products[new_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[new_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["new_status"]) { ?>
                        <input type="radio" name="customisation_products[new_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[new_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="new_text1">Title for "New" label:</label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="new_text">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#new_text<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="new_text<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][new_text]" value="<?php echo isset($customisation_general[$language['language_id']]['new_text']) ? $customisation_general[$language['language_id']]['new_text'] : ''; ?>" placeholder="'new' label title:" id="new_text1" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label" for="input-days">
                    <span data-toggle="tooltip" title="Number of days from the date "Date Available" to today date for a product.">
                    Period of holding "New" label:
                    </span>
                </label>
                <div class="col-sm-8">
                    <input type="text" name="customisation_products[days]" value="<?php echo (isset($customisation_products['days']) ? $customisation_products['days'] : ''); ?>" placeholder="Period of holding 'New' label:" id="input-days" class="form-control width_auto" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label" for="input-new_label_bg">
                                                        <span data-toggle="tooltip" title="Set background color of 'New' label.">
                                                            Color of "New" label:
                                                        </span>
                </label>
                <div class="col-sm-8">
                    <input class="form-control width_auto" id="customisation_products_new_label_bg<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_products['new_label_bg']; ?>;color:white" type="text" name="customisation_products[new_label_bg]" value="<?php echo $customisation_products['new_label_bg']; ?>" placeholder="Color of 'New' label:" id="input-new_label_bg" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label" for="input-discount_label_bg<?php echo $store["store_id"]; ?>">
                                                        <span data-toggle="tooltip" title="Set background color of 'Discount' label.">
                                                            Color of "Discount" label:
                                                        </span>
                </label>
                <div class="col-sm-8">
                    <input class="form-control width_auto" id="customisation_products_discount_label_bg<?php echo $store["store_id"]; ?>" style="background-color:<?php echo $customisation_products['discount_label_bg']; ?>;color:white" type="text" name="customisation_products[discount_label_bg]" value="<?php echo $customisation_products['discount_label_bg']; ?>" placeholder="Color of 'Discount' label:" id="input-discount_label_bg" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Set display or not 'QUICK VIEW' function on products in sliders.">Show "QUICK VIEW" function:</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["quick_status"]) { ?>
                        <input type="radio" name="customisation_products[quick_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[quick_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["quick_status"]) { ?>
                        <input type="radio" name="customisation_products[quick_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[quick_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label" for="quick_view_text1">Title for "Quick view" label:</label>
                <div class="col-sm-8">
                    <ul class="nav nav-tabs" id="quick_view_text">
                        <?php foreach ($languages as $language) : ?>
                        <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#quick_view_text<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                    <div class="tab-content">
                        <?php foreach ($languages as $language) : ?>
                        <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="quick_view_text<?php echo $language['language_id']; ?>">
                            <input type="text" name="customisation_general[<?php echo $language['language_id']; ?>][quick_view_text]" value="<?php echo isset($customisation_general[$language['language_id']]['quick_view_text']) ? $customisation_general[$language['language_id']]['quick_view_text'] : ''; ?>" placeholder="'Quick view' label title:" id="quick_view_text1" class="form-control" />
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>






            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Set display or not 'Discount' label.">Show "Discount" label:</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["discount_status"]) { ?>
                        <input type="radio" name="customisation_products[discount_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[discount_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["discount_status"]) { ?>
                        <input type="radio" name="customisation_products[discount_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[discount_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">
                    <span data-toggle="tooltip" title="Set display or not countdown of Special Offer in product sliders.">Show countdown of Special Offer:</span>
                </label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["countdown_status"]) { ?>
                        <input type="radio" name="customisation_products[countdown_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[countdown_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["countdown_status"]) { ?>
                        <input type="radio" name="customisation_products[countdown_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[countdown_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-4 control-label">Show popup box (rating,quick view)</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <?php if ($customisation_products["popup_small_status"]) { ?>
                        <input type="radio" name="customisation_products[popup_small_status]" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[popup_small_status]" value="1" />
                        <?php echo $text_yes; ?>
                        <?php } ?>
                    </label>
                    <label class="radio-inline">
                        <?php if (!$customisation_products["popup_small_status"]) { ?>
                        <input type="radio" name="customisation_products[popup_small_status]" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="customisation_products[popup_small_status]" value="0" />
                        <?php echo $text_no; ?>
                        <?php } ?>
                    </label>
                </div>
            </div>

            </div>

            <!--subtabs: product page -->
            <div id="tab-products-layout3-<?php echo $store['store_id']; ?>" class="tab-pane">
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-thumbnails_position">Position of block with thumbnails previews:</label>
                    <div class="col-sm-7">
                        <select name="customisation_products[thumbnails_position]" id="input-thumbnails_position" class="form-control">
                            <option <?php if ($customisation_products['thumbnails_position'] == 'bottom') : ?> selected="selected" <?php endif; ?> value="bottom">Bottom</option>
                            <option <?php if ($customisation_products['thumbnails_position'] == 'left') : ?> selected="selected" <?php endif; ?> value="left">Left</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-tabs_position">Tabs block:</label>
                    <div class="col-sm-7">
                        <select name="customisation_products[tabs_position]" id="input-tabs_position" class="form-control">
                            <option <?php if ($customisation_products['tabs_position'] == 1) : ?> selected="selected" <?php endif; ?> value="1">Bottom vertical</option>
                            <option <?php if ($customisation_products['tabs_position'] == 2) : ?> selected="selected" <?php endif; ?> value="2">Bottom horizontal</option>
                            <option <?php if ($customisation_products['tabs_position'] == 3) : ?> selected="selected" <?php endif; ?> value="3">Collapsed in product description</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-related">"Related products" module in right column (right column on Product Page):</label>
                    <div class="col-sm-7">
                        <select name="customisation_products[related]" id="input-related" class="form-control">
                            <option <?php if ($customisation_products['related'] == 'enable') : ?> selected="selected" <?php endif; ?> value="enable">Enable</option>
                            <option <?php if ($customisation_products['related'] == 'disable') : ?> selected="selected" <?php endif; ?> value="disable">Disable Related block</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-product_page_images_sizes">Sizes of images in products blocks (right column on Product Page):</label>
                    <div class="col-sm-7">
                        <select name="customisation_products[product_page_images_sizes]" id="input-product_page_images_sizes" class="form-control">
                            <option <?php if ($customisation_products['product_page_images_sizes'] == 'small') : ?> selected="selected" <?php endif; ?> value="small">Small images</option>
                            <option <?php if ($customisation_products['product_page_images_sizes'] == 'big') : ?> selected="selected" <?php endif; ?> value="big">Big images</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-5 control-label" for="input-cloudzoom_mode">
                                                        <span data-toggle="tooltip" title="Choose position of cloudzoom image preview on product page.">
                                                             Cloudzoom position on product page:
                                                        </span>
                    </label>
                    <div class="col-sm-7">
                        <select name="customisation_products[cloudzoom_mode]" id="input-cloudzoom_mode" class="form-control">
                            <option <?php if ($customisation_products['cloudzoom_mode'] == 'right') : ?> selected="selected" <?php endif; ?> value="right">Right</option>
                            <option <?php if ($customisation_products['cloudzoom_mode'] == 'inside') : ?> selected="selected" <?php endif; ?> value="inside">Inside product image</option>
                        </select>
                    </div>
                </div>
                <fieldset>
                    <legend>Social buttons on Product Page</legend>
                    <div class="form-group">
                        <label class="col-sm-5 control-label" for="input-meta-keyword">
                                                            <span data-toggle="tooltip" title="Here you can enter any html of iframe content of buttons">
                                                                Content for buttons:
                                                            </span>
                        </label>
                        <div class="col-sm-7">
                            <textarea name="customisation_products[product_page_button]" rows="5" placeholder="Footer payment icons images:" id="input-meta-keyword" class="form-control"><?php echo $customisation_products['product_page_button']; ?></textarea>
                        </div>
                    </div>

                </fieldset>

            </div>
        </div>

    </div>
    <!------------------------------------end tab Products sliders, products listings-->

    <!-------------------------------------tab topslider-->
    <div class="tab-pane" id="tab-topslider<?php echo $store['store_id']; ?>">
        <ul class="nav nav-tabs col-sm-3 main_tabs_vertical">
            <li class="active"><a href="#tab-topslider-layout1-<?php echo $store['store_id']; ?>" class="selected" data-toggle="tab">Revolution Slider (full width)</a></li>
            <li><a href="#tab-topslider-layout2-<?php echo $store['store_id']; ?>" data-toggle="tab">Revolution Slider (boxed)</a></li>
            <li><a href="#tab-topslider-layout3-<?php echo $store['store_id']; ?>" data-toggle="tab">Simple slider</a></li>
            <li><a href="#tab-topslider-layout4-<?php echo $store['store_id']; ?>" data-toggle="tab">Simple slider with banners</a></li>
        </ul>
        <div class="tab-content col-sm-8">
            <!--REVOLUTION FULL WIDTH-->
            <div class="tab-pane active" id="tab-topslider-layout1-<?php echo $store['store_id']; ?>">
                <div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Enable/disable slider</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["rev_full_status"]) && $customisation_topslider["rev_full_status"]) { ?>
                                <input type="radio" name="customisation_topslider[rev_full_status]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[rev_full_status]" value="1" />
                                <?php echo $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["rev_full_status"]) && !$customisation_topslider["rev_full_status"]) { ?>
                                <input type="radio" name="customisation_topslider[rev_full_status]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[rev_full_status]" value="0" />
                                <?php echo $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="input-rev_full_html<?php echo $language['language_id']; ?>-<?php echo $store["store_id"]; ?>">
                            Content for Revolution full width Slider
                        </label>
                        <div class="col-sm-9">
                            <ul class="nav nav-tabs" id="language-rev_full_html">
                                <?php foreach ($languages as $language) : ?>
                                <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-rev_full_html<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) : ?>
                                <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-rev_full_html<?php echo $language['language_id']; ?>">
                                    <textarea name="customisation_topslider[<?php echo $language['language_id']; ?>][rev_full_html]" placeholder="Content for Revolution full width Slider" id="input-rev_full_html<?php echo $language['language_id']; ?>-<?php echo $store["store_id"]; ?>"><?php echo isset($customisation_topslider[$language['language_id']]['rev_full_html']) ? $customisation_topslider[$language['language_id']]['rev_full_html'] : ''; ?></textarea>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--REVOLUTION BOXED WIDTH-->
            <div class="tab-pane" id="tab-topslider-layout2-<?php echo $store['store_id']; ?>">
                <div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Enable/disable slider</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["rev_boxed_status"]) && $customisation_topslider["rev_boxed_status"]) { ?>
                                <input type="radio" name="customisation_topslider[rev_boxed_status]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[rev_boxed_status]" value="1" />
                                <?php echo $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["rev_boxed_status"]) && !$customisation_topslider["rev_boxed_status"]) { ?>
                                <input type="radio" name="customisation_topslider[rev_boxed_status]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[rev_boxed_status]" value="0" />
                                <?php echo $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="language-rev_boxed_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>">
                            Content for Revolution boxed Slider
                        </label>
                        <div class="col-sm-9">
                            <ul class="nav nav-tabs">
                                <?php foreach ($languages as $language) : ?>
                                <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-rev_boxed_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) : ?>
                                <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-rev_boxed_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>">
                                    <textarea name="customisation_topslider[<?php echo $language['language_id']; ?>][rev_boxed_html]" placeholder="Content for Revolution boxed Slider" id="input-rev_boxed_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>"><?php echo isset($customisation_topslider[$language['language_id']]['rev_boxed_html']) ? $customisation_topslider[$language['language_id']]['rev_boxed_html'] : ''; ?></textarea>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--SIMPLE-->
            <div class="tab-pane" id="tab-topslider-layout3-<?php echo $store['store_id']; ?>">
                <div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Enable/disable slider</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["simple_status"]) && $customisation_topslider["simple_status"]) { ?>
                                <input type="radio" name="customisation_topslider[simple_status]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[simple_status]" value="1" />
                                <?php echo $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["simple_status"]) && !$customisation_topslider["simple_status"]) { ?>
                                <input type="radio" name="customisation_topslider[simple_status]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[simple_status]" value="0" />
                                <?php echo $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="language-simple_html<?php echo $language['language_id']; ?>">
                            Content for Simple Slider
                        </label>
                        <div class="col-sm-9">
                            <ul class="nav nav-tabs" id="language-simple_html">
                                <?php foreach ($languages as $language) : ?>
                                <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-simple_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) : ?>
                                <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-simple_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>">
                                    <textarea name="customisation_topslider[<?php echo $language['language_id']; ?>][simple_html]" placeholder="Content for Simple Slider" id="input-simple_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>"><?php echo isset($customisation_topslider[$language['language_id']]['simple_html']) ? $customisation_topslider[$language['language_id']]['simple_html'] : ''; ?></textarea>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--SIMPLE WITH BANNERS-->
            <div class="tab-pane" id="tab-topslider-layout4-<?php echo $store['store_id']; ?>">
                <div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Enable/disable slider</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["simple_banner_status"]) && $customisation_topslider["simple_banner_status"]) { ?>
                                <input type="radio" name="customisation_topslider[simple_banner_status]" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[simple_banner_status]" value="1" />
                                <?php echo $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (isset($customisation_topslider["simple_banner_status"]) && !$customisation_topslider["simple_banner_status"]) { ?>
                                <input type="radio" name="customisation_topslider[simple_banner_status]" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="customisation_topslider[simple_banner_status]" value="0" />
                                <?php echo $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="language-simple_banners_html">
                            Content for Simple Slider with banners
                        </label>
                        <div class="col-sm-9">
                            <ul class="nav nav-tabs" id="language-simple_banners_html">
                                <?php foreach ($languages as $language) : ?>
                                <li class="<?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>"><a href="#language-simple_banners_html<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) : ?>
                                <div class="tab-pane <?php echo ($language['language_id'] == 1 ? 'active' : ''); ?>" id="language-simple_banners_html<?php echo $language['language_id']; ?>">
                                    <textarea name="customisation_topslider[<?php echo $language['language_id']; ?>][simple_banners_html]" placeholder="Content for Simple Slider with banners" id="input-simple_banners_html<?php echo $language['language_id']; ?>-<?php echo $store['store_id']; ?>"><?php echo isset($customisation_topslider[$language['language_id']]['simple_banners_html'] ) ? $customisation_topslider[$language['language_id']]['simple_banners_html'] : ''; ?></textarea>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-------------------------------------end tab topslider-->
</div>
