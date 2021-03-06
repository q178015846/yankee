DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'slideshow';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'featured';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'account';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'category';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'banner';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'carousel';


DELETE FROM ?:banner where `banner_id`= 9;
DELETE FROM ?:banner_image where `banner_id`= 9;
DELETE FROM ?:banner_image_description where `banner_id`= 9;

INSERT INTO ?:banner VALUES (9, 'Optimus Brands', 1);

INSERT INTO ?:banner_image (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(100, 9, 'index.php', 'catalog/brands/brand-3docean.png', 0),
(101, 9, 'index.php', 'catalog/brands/brand-activeden.png', 0),
(102, 9, 'index.php', 'catalog/brands/brand-audiojungle.png', 0),
(103, 9, 'index.php', 'catalog/brands/brand-graphicriver.png', 0),
(104, 9, 'index.php', 'catalog/brands/brand-themeforest.png', 0),
(105, 9, 'index.php', 'catalog/brands/brand-videohive.png', 0),
(106, 9, 'index.php', 'catalog/brands/brand-3docean.png', 0),
(107, 9, 'index.php', 'catalog/brands/brand-activeden.png', 0),
(108, 9, 'index.php', 'catalog/brands/brand-audiojungle.png', 0);

INSERT INTO ?:banner_image_description VALUES
(100, 1, 9, 'brand01'),
(101, 1, 9, 'brand02'),
(102, 1, 9, 'brand03'),
(103, 1, 9, 'brand04'),
(104, 1, 9, 'brand05'),
(105, 1, 9, 'brand06'),
(106, 1, 9, 'brand07'),
(107, 1, 9, 'brand08'),
(108, 1, 9, 'brand09');


UPDATE ?:setting SET `value` = 'catalog/theme_logo.png' WHERE `key` = 'config_logo';
UPDATE ?:setting SET `value` = 'catalog/theme_favicon.png' WHERE `key` = 'config_icon';

UPDATE ?:setting SET `value` = '350' WHERE `key` = 'config_image_product_width';
UPDATE ?:setting SET `value` = '425' WHERE `key` = 'config_image_product_height';

UPDATE ?:setting SET `value` = '593' WHERE `key` = 'config_image_additional_width';
UPDATE ?:setting SET `value` = '722' WHERE `key` = 'config_image_additional_height';

UPDATE ?:setting SET `value` = '593' WHERE `key` = 'config_image_thumb_width';
UPDATE ?:setting SET `value` = '722' WHERE `key` = 'config_image_thumb_height';

UPDATE ?:setting SET `value` = '350' WHERE `key` = 'config_image_related_width';
UPDATE ?:setting SET `value` = '425' WHERE `key` = 'config_image_related_height';

UPDATE ?:setting SET `value` = '888' WHERE `key` = 'config_image_popup_width';
UPDATE ?:setting SET `value` = '1080' WHERE `key` = 'config_image_popup_height';

UPDATE ?:setting SET `value` = '6' WHERE `key` = 'config_product_limit';
UPDATE ?:setting SET `value` = '400' WHERE `key` = 'config_product_description_length';

UPDATE ?:category SET `top` = 0 WHERE `category_id` = 18;
UPDATE ?:category SET `top` = 0 WHERE `category_id` = 24;
UPDATE ?:category SET `top` = 0 WHERE `category_id` = 34;
UPDATE ?:category SET `top` = 0 WHERE `category_id` = 57;
UPDATE ?:category SET `top` = 0 WHERE `category_id` = 33;
UPDATE ?:category SET `top` = 0 WHERE `category_id` = 17;

UPDATE ?:category SET `column` = 4;

UPDATE ?:category_description SET `name` = 'Woman' WHERE `category_id` = 20;
UPDATE ?:category_description SET `name` = 'Men' WHERE `category_id` = 25;

UPDATE ?:category SET `image` = '' WHERE `category_id` = 20;

UPDATE ?:category_description SET `description` = '&lt;section class=&quot;owl-slider-outer slider-listing hidden-xs&quot;&gt;\r\n    &lt;div class=&quot;owl-slider&quot;&gt;\r\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image/catalog/blocks/listing-image-01-1171x208.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;listing-title women hidden-xs&quot;&gt;\r\n                &lt;h2&gt;Desktop&lt;/h2&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image/catalog/blocks/listing-image-02-1171x208.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;listing-title women hidden-xs&quot;&gt;\r\n                &lt;h2&gt;Desktop&lt;/h2&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/section&gt;\r\n' WHERE `category_id` = 20;
UPDATE ?:category_description SET `description` = '&lt;section class=&quot;owl-slider-outer slider-listing hidden-xs&quot;&gt;\r\n    &lt;a class=&quot;owl-slider-prev&quot;&gt;&lt;/a&gt;\r\n    &lt;a class=&quot;owl-slider-next&quot;&gt;&lt;/a&gt;\r\n    &lt;div class=&quot;owl-slider&quot;&gt;\r\n        &lt;div class=&quot;item&quot;&gt;\r\n            &lt;img src=&quot;image/catalog/blocks/slide_man_1.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;listing-title women hidden-xs&quot;&gt;\r\n                &lt;h2&gt;Men&lt;/h2&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;item&quot;&gt;\r\n            &lt;img src=&quot;image/catalog/blocks/slide_man_2.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;listing-title women hidden-xs&quot;&gt;\r\n                &lt;h2&gt;Men&lt;/h2&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/section&gt;\r\n&lt;p&gt;Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi. Curabitur molestie euismod erat. Proin eros odio, mattis rutrum. et, egestas vitae, magna. Integer semper, velit ut interNam lectus nulla, bibendum pretium, dictum a, mattis nec, dolor. Nullam id justo sed diam aliquam tincidunt. Duis sollicitudin, dui ac commodo iaculis, mi risus sagittis odio, vel ultrices enim sem ut pede. Aenean quam. Nulla neque purus, ullamcorper nec, eleifend at, fermentum ut, turpis. Nullam id justo sed labore diam diam aliquam nonumy. Integer ligula magna, dictum et, pulvinar non, ultricies ac, nibh. Vivamus euismod nulla vel nunc. Fusce tincidunt, justo congue egestas molestie, tortor tortor blandit erat, et scelerisque metus metus at ipsum.&lt;/p&gt;\r\n' WHERE `category_id` = 25;

DELETE FROM ?:filter;
DELETE FROM ?:filter_description;
DELETE FROM ?:filter_group;
DELETE FROM ?:filter_group_description;
DELETE FROM ?:category_filter;
DELETE FROM ?:product_filter;

INSERT INTO ?:filter (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(3, 1, 3),
(2, 1, 1),
(1, 1, 2),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 1, 4),
(8, 1, 5);

INSERT INTO ?:filter_description (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 1, 1, 'green'),
(2, 1, 1, 'blue'),
(1, 1, 1, 'brown'),
(4, 1, 2, '$0 - $100'),
(5, 1, 2, '$101 - $200'),
(6, 1, 2, '$201 - $500'),
(7, 1, 1, 'red'),
(8, 1, 1, 'violet');

INSERT INTO ?:filter_group (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2);


INSERT INTO ?:filter_group_description (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Color'),
(2, 1, 'Price');

INSERT INTO ?:category_filter (`category_id`, `filter_id`) VALUES
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8);
INSERT INTO ?:product_filter (`product_id`, `filter_id`) VALUES
(28, 1),
(28, 2),
(28, 3),
(28, 7),
(28, 8),
(20, 1),
(20, 2),
(20, 3);

DELETE FROM ?:product_related;

INSERT INTO ?:product_related VALUES
(40, 42),
(41, 42),
(30, 42),
(30, 29),
(30, 43),
(30, 44),
(42, 30),
(42, 44),
(42, 40),
(42, 41);


UPDATE  ?:product SET `date_available` =  '2014-10-10' WHERE  `product_id` = 43;
UPDATE  ?:product SET `date_available` =  '2014-10-10' WHERE  `product_id` = 30;
UPDATE  ?:product SET `date_available` =  '2014-10-10' WHERE  `product_id` = 40;

UPDATE  ?:product_description SET `tag` =  'Smartphone' WHERE  `product_id` = 28;
UPDATE  ?:product_description SET `tag` =  'Phone,Mobile' WHERE  `product_id` = 29;
UPDATE  ?:product_description SET `tag` =  'Camera,Canon' WHERE  `product_id` = 30;
UPDATE  ?:product_description SET `tag` =  'Camera' WHERE  `product_id` = 31;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 32;
UPDATE  ?:product_description SET `tag` =  'Monitor,Laptop' WHERE  `product_id` = 33;
UPDATE  ?:product_description SET `tag` =  'iPod,Phone' WHERE  `product_id` = 34;
UPDATE  ?:product_description SET `tag` =  'Cool,modern' WHERE  `product_id` = 35;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 36;
UPDATE  ?:product_description SET `tag` =  'iPhone,Mobile' WHERE  `product_id` = 40;
UPDATE  ?:product_description SET `tag` =  'Laptop,iMac' WHERE  `product_id` = 41;
UPDATE  ?:product_description SET `tag` =  'Monitor,Apple' WHERE  `product_id` = 42;
UPDATE  ?:product_description SET `tag` =  'Macbook' WHERE  `product_id` = 43;
UPDATE  ?:product_description SET `tag` =  'Macbook,Laptop' WHERE  `product_id` = 44;
UPDATE  ?:product_description SET `tag` =  'Macbook' WHERE  `product_id` = 45;
UPDATE  ?:product_description SET `tag` =  'Laptop,Sony' WHERE  `product_id` = 46;
UPDATE  ?:product_description SET `tag` =  'Cool,Laptop,Usefull' WHERE  `product_id` = 47;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 48;
UPDATE  ?:product_description SET `tag` =  'Mobile' WHERE  `product_id` = 49;

UPDATE ?:currency SET `title` = 'Pounds' WHERE `currency_id` = '1';
UPDATE ?:user_group SET `permission` = 'a:2:{s:6:"access";a:192:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:17:"catalog/mcategory";i:8;s:16:"catalog/mproduct";i:9;s:14:"catalog/option";i:10;s:15:"catalog/product";i:11;s:17:"catalog/recurring";i:12;s:14:"catalog/review";i:13;s:18:"common/column_left";i:14;s:18:"common/filemanager";i:15;s:11:"common/menu";i:16;s:14:"common/profile";i:17;s:12:"common/stats";i:18;s:13:"design/banner";i:19;s:13:"design/layout";i:20;s:14:"extension/feed";i:21;s:19:"extension/installer";i:22;s:22:"extension/modification";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:15:"feed/openbaypro";i:31;s:20:"localisation/country";i:32;s:21:"localisation/currency";i:33;s:21:"localisation/geo_zone";i:34;s:21:"localisation/language";i:35;s:25:"localisation/length_class";i:36;s:21:"localisation/location";i:37;s:25:"localisation/order_status";i:38;s:26:"localisation/return_action";i:39;s:26:"localisation/return_reason";i:40;s:26:"localisation/return_status";i:41;s:25:"localisation/stock_status";i:42;s:22:"localisation/tax_class";i:43;s:21:"localisation/tax_rate";i:44;s:25:"localisation/weight_class";i:45;s:17:"localisation/zone";i:46;s:19:"marketing/affiliate";i:47;s:17:"marketing/contact";i:48;s:16:"marketing/coupon";i:49;s:19:"marketing/marketing";i:50;s:14:"module/account";i:51;s:16:"module/affiliate";i:52;s:20:"module/amazon_button";i:53;s:19:"module/amazon_login";i:54;s:17:"module/amazon_pay";i:55;s:13:"module/banner";i:56;s:17:"module/bestseller";i:57;s:15:"module/carousel";i:58;s:15:"module/category";i:59;s:20:"module/customisation";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:14:"module/isotope";i:67;s:13:"module/latest";i:68;s:14:"module/popular";i:69;s:16:"module/pp_button";i:70;s:15:"module/pp_login";i:71;s:18:"module/simple_blog";i:72;s:27:"module/simple_blog_category";i:73;s:16:"module/slideshow";i:74;s:14:"module/special";i:75;s:12:"module/store";i:76;s:14:"module/upsells";i:77;s:14:"openbay/amazon";i:78;s:22:"openbay/amazon_listing";i:79;s:22:"openbay/amazon_product";i:80;s:16:"openbay/amazonus";i:81;s:24:"openbay/amazonus_listing";i:82;s:24:"openbay/amazonus_product";i:83;s:12:"openbay/ebay";i:84;s:20:"openbay/ebay_profile";i:85;s:21:"openbay/ebay_template";i:86;s:12:"openbay/etsy";i:87;s:20:"openbay/etsy_product";i:88;s:21:"openbay/etsy_shipping";i:89;s:17:"openbay/etsy_shop";i:90;s:23:"payment/amazon_checkout";i:91;s:24:"payment/amazon_login_pay";i:92;s:24:"payment/authorizenet_aim";i:93;s:24:"payment/authorizenet_sim";i:94;s:21:"payment/bank_transfer";i:95;s:22:"payment/bluepay_hosted";i:96;s:24:"payment/bluepay_redirect";i:97;s:14:"payment/cheque";i:98;s:11:"payment/cod";i:99;s:17:"payment/firstdata";i:100;s:24:"payment/firstdata_remote";i:101;s:21:"payment/free_checkout";i:102;s:17:"payment/globalpay";i:103;s:24:"payment/globalpay_remote";i:104;s:22:"payment/klarna_account";i:105;s:22:"payment/klarna_invoice";i:106;s:14:"payment/liqpay";i:107;s:14:"payment/nochex";i:108;s:15:"payment/paymate";i:109;s:16:"payment/paypoint";i:110;s:13:"payment/payza";i:111;s:26:"payment/perpetual_payments";i:112;s:18:"payment/pp_express";i:113;s:18:"payment/pp_payflow";i:114;s:25:"payment/pp_payflow_iframe";i:115;s:14:"payment/pp_pro";i:116;s:21:"payment/pp_pro_iframe";i:117;s:19:"payment/pp_standard";i:118;s:14:"payment/realex";i:119;s:21:"payment/realex_remote";i:120;s:22:"payment/sagepay_direct";i:121;s:22:"payment/sagepay_server";i:122;s:18:"payment/sagepay_us";i:123;s:24:"payment/securetrading_pp";i:124;s:24:"payment/securetrading_ws";i:125;s:14:"payment/skrill";i:126;s:19:"payment/twocheckout";i:127;s:28:"payment/web_payment_software";i:128;s:16:"payment/worldpay";i:129;s:16:"report/affiliate";i:130;s:25:"report/affiliate_activity";i:131;s:22:"report/affiliate_login";i:132;s:24:"report/customer_activity";i:133;s:22:"report/customer_credit";i:134;s:21:"report/customer_login";i:135;s:22:"report/customer_online";i:136;s:21:"report/customer_order";i:137;s:22:"report/customer_reward";i:138;s:16:"report/marketing";i:139;s:24:"report/product_purchased";i:140;s:21:"report/product_viewed";i:141;s:18:"report/sale_coupon";i:142;s:17:"report/sale_order";i:143;s:18:"report/sale_return";i:144;s:20:"report/sale_shipping";i:145;s:15:"report/sale_tax";i:146;s:17:"sale/custom_field";i:147;s:13:"sale/customer";i:148;s:20:"sale/customer_ban_ip";i:149;s:19:"sale/customer_group";i:150;s:10:"sale/order";i:151;s:14:"sale/recurring";i:152;s:11:"sale/return";i:153;s:12:"sale/voucher";i:154;s:18:"sale/voucher_theme";i:155;s:15:"setting/setting";i:156;s:13:"setting/store";i:157;s:16:"shipping/auspost";i:158;s:17:"shipping/citylink";i:159;s:14:"shipping/fedex";i:160;s:13:"shipping/flat";i:161;s:13:"shipping/free";i:162;s:13:"shipping/item";i:163;s:23:"shipping/parcelforce_48";i:164;s:15:"shipping/pickup";i:165;s:19:"shipping/royal_mail";i:166;s:12:"shipping/ups";i:167;s:13:"shipping/usps";i:168;s:15:"shipping/weight";i:169;s:19:"simple_blog/article";i:170;s:18:"simple_blog/author";i:171;s:20:"simple_blog/category";i:172;s:19:"simple_blog/comment";i:173;s:19:"simple_blog/install";i:174;s:18:"simple_blog/report";i:175;s:11:"tool/backup";i:176;s:14:"tool/error_log";i:177;s:11:"tool/upload";i:178;s:12:"total/coupon";i:179;s:12:"total/credit";i:180;s:14:"total/handling";i:181;s:16:"total/klarna_fee";i:182;s:19:"total/low_order_fee";i:183;s:12:"total/reward";i:184;s:14:"total/shipping";i:185;s:15:"total/sub_total";i:186;s:9:"total/tax";i:187;s:11:"total/total";i:188;s:13:"total/voucher";i:189;s:8:"user/api";i:190;s:9:"user/user";i:191;s:20:"user/user_permission";}s:6:"modify";a:192:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:17:"catalog/mcategory";i:8;s:16:"catalog/mproduct";i:9;s:14:"catalog/option";i:10;s:15:"catalog/product";i:11;s:17:"catalog/recurring";i:12;s:14:"catalog/review";i:13;s:18:"common/column_left";i:14;s:18:"common/filemanager";i:15;s:11:"common/menu";i:16;s:14:"common/profile";i:17;s:12:"common/stats";i:18;s:13:"design/banner";i:19;s:13:"design/layout";i:20;s:14:"extension/feed";i:21;s:19:"extension/installer";i:22;s:22:"extension/modification";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:15:"feed/openbaypro";i:31;s:20:"localisation/country";i:32;s:21:"localisation/currency";i:33;s:21:"localisation/geo_zone";i:34;s:21:"localisation/language";i:35;s:25:"localisation/length_class";i:36;s:21:"localisation/location";i:37;s:25:"localisation/order_status";i:38;s:26:"localisation/return_action";i:39;s:26:"localisation/return_reason";i:40;s:26:"localisation/return_status";i:41;s:25:"localisation/stock_status";i:42;s:22:"localisation/tax_class";i:43;s:21:"localisation/tax_rate";i:44;s:25:"localisation/weight_class";i:45;s:17:"localisation/zone";i:46;s:19:"marketing/affiliate";i:47;s:17:"marketing/contact";i:48;s:16:"marketing/coupon";i:49;s:19:"marketing/marketing";i:50;s:14:"module/account";i:51;s:16:"module/affiliate";i:52;s:20:"module/amazon_button";i:53;s:19:"module/amazon_login";i:54;s:17:"module/amazon_pay";i:55;s:13:"module/banner";i:56;s:17:"module/bestseller";i:57;s:15:"module/carousel";i:58;s:15:"module/category";i:59;s:20:"module/customisation";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:14:"module/isotope";i:67;s:13:"module/latest";i:68;s:14:"module/popular";i:69;s:16:"module/pp_button";i:70;s:15:"module/pp_login";i:71;s:18:"module/simple_blog";i:72;s:27:"module/simple_blog_category";i:73;s:16:"module/slideshow";i:74;s:14:"module/special";i:75;s:12:"module/store";i:76;s:14:"module/upsells";i:77;s:14:"openbay/amazon";i:78;s:22:"openbay/amazon_listing";i:79;s:22:"openbay/amazon_product";i:80;s:16:"openbay/amazonus";i:81;s:24:"openbay/amazonus_listing";i:82;s:24:"openbay/amazonus_product";i:83;s:12:"openbay/ebay";i:84;s:20:"openbay/ebay_profile";i:85;s:21:"openbay/ebay_template";i:86;s:12:"openbay/etsy";i:87;s:20:"openbay/etsy_product";i:88;s:21:"openbay/etsy_shipping";i:89;s:17:"openbay/etsy_shop";i:90;s:23:"payment/amazon_checkout";i:91;s:24:"payment/amazon_login_pay";i:92;s:24:"payment/authorizenet_aim";i:93;s:24:"payment/authorizenet_sim";i:94;s:21:"payment/bank_transfer";i:95;s:22:"payment/bluepay_hosted";i:96;s:24:"payment/bluepay_redirect";i:97;s:14:"payment/cheque";i:98;s:11:"payment/cod";i:99;s:17:"payment/firstdata";i:100;s:24:"payment/firstdata_remote";i:101;s:21:"payment/free_checkout";i:102;s:17:"payment/globalpay";i:103;s:24:"payment/globalpay_remote";i:104;s:22:"payment/klarna_account";i:105;s:22:"payment/klarna_invoice";i:106;s:14:"payment/liqpay";i:107;s:14:"payment/nochex";i:108;s:15:"payment/paymate";i:109;s:16:"payment/paypoint";i:110;s:13:"payment/payza";i:111;s:26:"payment/perpetual_payments";i:112;s:18:"payment/pp_express";i:113;s:18:"payment/pp_payflow";i:114;s:25:"payment/pp_payflow_iframe";i:115;s:14:"payment/pp_pro";i:116;s:21:"payment/pp_pro_iframe";i:117;s:19:"payment/pp_standard";i:118;s:14:"payment/realex";i:119;s:21:"payment/realex_remote";i:120;s:22:"payment/sagepay_direct";i:121;s:22:"payment/sagepay_server";i:122;s:18:"payment/sagepay_us";i:123;s:24:"payment/securetrading_pp";i:124;s:24:"payment/securetrading_ws";i:125;s:14:"payment/skrill";i:126;s:19:"payment/twocheckout";i:127;s:28:"payment/web_payment_software";i:128;s:16:"payment/worldpay";i:129;s:16:"report/affiliate";i:130;s:25:"report/affiliate_activity";i:131;s:22:"report/affiliate_login";i:132;s:24:"report/customer_activity";i:133;s:22:"report/customer_credit";i:134;s:21:"report/customer_login";i:135;s:22:"report/customer_online";i:136;s:21:"report/customer_order";i:137;s:22:"report/customer_reward";i:138;s:16:"report/marketing";i:139;s:24:"report/product_purchased";i:140;s:21:"report/product_viewed";i:141;s:18:"report/sale_coupon";i:142;s:17:"report/sale_order";i:143;s:18:"report/sale_return";i:144;s:20:"report/sale_shipping";i:145;s:15:"report/sale_tax";i:146;s:17:"sale/custom_field";i:147;s:13:"sale/customer";i:148;s:20:"sale/customer_ban_ip";i:149;s:19:"sale/customer_group";i:150;s:10:"sale/order";i:151;s:14:"sale/recurring";i:152;s:11:"sale/return";i:153;s:12:"sale/voucher";i:154;s:18:"sale/voucher_theme";i:155;s:15:"setting/setting";i:156;s:13:"setting/store";i:157;s:16:"shipping/auspost";i:158;s:17:"shipping/citylink";i:159;s:14:"shipping/fedex";i:160;s:13:"shipping/flat";i:161;s:13:"shipping/free";i:162;s:13:"shipping/item";i:163;s:23:"shipping/parcelforce_48";i:164;s:15:"shipping/pickup";i:165;s:19:"shipping/royal_mail";i:166;s:12:"shipping/ups";i:167;s:13:"shipping/usps";i:168;s:15:"shipping/weight";i:169;s:19:"simple_blog/article";i:170;s:18:"simple_blog/author";i:171;s:20:"simple_blog/category";i:172;s:19:"simple_blog/comment";i:173;s:19:"simple_blog/install";i:174;s:18:"simple_blog/report";i:175;s:11:"tool/backup";i:176;s:14:"tool/error_log";i:177;s:11:"tool/upload";i:178;s:12:"total/coupon";i:179;s:12:"total/credit";i:180;s:14:"total/handling";i:181;s:16:"total/klarna_fee";i:182;s:19:"total/low_order_fee";i:183;s:12:"total/reward";i:184;s:14:"total/shipping";i:185;s:15:"total/sub_total";i:186;s:9:"total/tax";i:187;s:11:"total/total";i:188;s:13:"total/voucher";i:189;s:8:"user/api";i:190;s:9:"user/user";i:191;s:20:"user/user_permission";}}' WHERE `name` = 'Administrator';


DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'carousel';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'filter';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'customisation';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'category';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'isotope';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'html';
DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'upsells';

INSERT INTO ?:extension (`extension_id`, `type`, `code`) VALUES
(null, 'module', 'featured'),
(null, 'module', 'carousel'),
(null, 'module', 'category'),
(null, 'module', 'isotope'),
(null, 'module', 'html'),
(null, 'module', 'upsells'),
(null, 'module', 'filter');

DELETE FROM ?:setting WHERE `code` = 'customisation';
DELETE FROM ?:setting WHERE `code` = 'category';
DELETE FROM ?:setting WHERE `code` = 'filter';
DELETE FROM ?:setting WHERE `code` = 'account';
DELETE FROM ?:setting WHERE `code` = 'upsells';

INSERT INTO ?:setting VALUES
(null, 0, 'category', 'category_status', '1', 0),
(null, 0, 'filter', 'filter_status', '1', 0),
(null, 0, 'account', 'account_status', '1', 0),
(null, 0, 'upsells', 'upsells_status', '1', 0),

(null, 0, 'customisation', 'customisation_rightimg', 'catalog/icon-optimus.png', 0),
(null, 0, 'customisation', 'customisation_bgall', 'catalog/back-bg.jpg', 0),

(null, 0, 'customisation', 'customisation_slider', 'a:13:{s:11:"slider_type";s:18:"isotope_categories";s:22:"sliders_isotope_status";s:1:"1";s:18:"sliders_row_status";s:1:"1";s:13:"featured_type";s:10:"horizontal";s:19:"featured_quick_type";s:6:"inline";s:11:"latest_type";s:8:"vertical";s:17:"latest_quick_type";s:5:"popup";s:15:"bestseller_type";s:8:"vertical";s:21:"bestseller_quick_type";s:5:"popup";s:12:"popular_type";s:10:"horizontal";s:18:"popular_quick_type";s:5:"popup";s:12:"special_type";s:8:"vertical";s:18:"special_quick_type";s:5:"popup";}', 1),
(null, 0, 'customisation', 'customisation_colors', 'a:41:{s:11:"layout_skin";s:7:"default";s:15:"general_bgcolor";s:0:"";s:15:"content_bg_mode";s:9:"no-repeat";s:18:"general_themecolor";s:0:"";s:13:"general_input";s:0:"";s:12:"general_text";s:0:"";s:12:"general_link";s:0:"";s:17:"general_linkhover";s:0:"";s:13:"captions_font";s:1:"-";s:13:"captions_text";s:0:"";s:15:"topline_bgcolor";s:0:"";s:14:"topline_shadow";s:1:"1";s:18:"topline_phonecolor";s:0:"";s:6:"dd_ink";s:0:"";s:12:"dd_linkhover";s:0:"";s:10:"dd_bgcolor";s:0:"";s:9:"dd_border";s:0:"";s:14:"headernav_text";s:0:"";s:19:"headernav_linkhover";s:0:"";s:14:"headernav_link";s:0:"";s:16:"top_menu_bgcolor";s:0:"";s:17:"headernav_bgcolor";s:0:"";s:20:"content_border_color";s:0:"";s:14:"product_border";s:9:"1px solid";s:14:"product_shadow";s:1:"0";s:15:"footerinfo_text";s:0:"";s:15:"footerinfo_link";s:0:"";s:19:"footerinfo_captions";s:0:"";s:18:"footerinfo_bgcolor";s:0:"";s:11:"footer_text";s:0:"";s:11:"footer_link";s:0:"";s:17:"footer_link_hover";s:0:"";s:14:"footer_bgcolor";s:0:"";s:20:"footerpopup_captions";s:0:"";s:16:"footerpopup_link";s:0:"";s:21:"footerpopup_linkhover";s:0:"";s:19:"footerpopup_bgcolor";s:0:"";s:10:"price_font";s:1:"-";s:13:"price_regular";s:0:"";s:9:"price_new";s:0:"";s:9:"price_old";s:0:"";}', 1),

(null, 0, 'customisation', 'customisation_contentbg', '', 0),
(null, 0, 'customisation', 'customisation_delimeter', '', 0),
(null, 0, 'customisation', 'customisation_headerpattern', '', 0),
(null, 0, 'customisation', 'customisation_decoration', '', 0),
(null, 0, 'customisation', 'customisation_topslider', 'a:5:{s:15:"rev_full_status";s:1:"1";i:1;a:4:{s:13:"rev_full_html";s:2147:"&lt;ul&gt;\r\n        &lt;li&gt;\r\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/slider-main-back-01.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;/a&gt;\r\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt;\r\n                &lt;span class=&quot;big&quot;&gt;Sale&lt;/span&gt;\r\n                &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;/span&gt;\r\n            &lt;/a&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/slider-main-back-02s.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;/a&gt;\r\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt;\r\n                &lt;span class=&quot;big&quot;&gt;New&lt;/span&gt;\r\n                &lt;span class=&quot;small&quot;&gt;collection&lt;/span&gt;\r\n                &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;/span&gt;\r\n            &lt;/a&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/slider-main-back-03.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;/a&gt;\r\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt;\r\n                &lt;span class=&quot;big&quot;&gt;Special offer&lt;/span&gt;\r\n                &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;/span&gt;\r\n                &lt;span class=&quot;small&quot;&gt;Up to 50% OFF&lt;/span&gt;\r\n            &lt;/a&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;a class=&quot;control prev animate-scale&quot;&gt;&lt;span class=&quot;icon-arrow-left-5&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/a&gt;\r\n&lt;a class=&quot;control next animate-scale&quot;&gt;&lt;span class=&quot;icon-untitled&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/a&gt;\r\n&lt;a class=&quot;scroll-down animate-move-down&quot;&gt;&lt;span class=&quot;icon icon-arrow-down&quot;&gt;&amp;nbsp;&lt;/span&gt; scroll to view content &lt;/a&gt;";s:14:"rev_boxed_html";s:3522:"&lt;ul&gt;\r\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\r\n        &lt;img alt=&quot;&quot; src=&quot;image/catalog/TopSlider/home_boxed_slider1.jpg&quot;&gt;\r\n        &lt;div class=&quot;tp-caption sfr&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;830&quot; data-y=&quot;80&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-01&quot;&gt; &lt;span class=&quot;big&quot;&gt;Sale&lt;/span&gt;&lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;tp-caption sfr&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;830&quot; data-y=&quot;185&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-01&quot;&gt;&lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n    &lt;/li&gt;\r\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\r\n        &lt;img alt=&quot;&quot; src=&quot;image/catalog/TopSlider/home_boxed_slider2.jpg&quot;&gt;\r\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;50&quot; data-y=&quot;90&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt;&lt;span class=&quot;big&quot;&gt;New&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;50&quot; data-y=&quot;170&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt;&lt;span class=&quot;small&quot;&gt;collection&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1400&quot; data-x=&quot;50&quot; data-y=&quot;210&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt; &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;/span&gt;&lt;/a&gt; &lt;/div&gt;\r\n    &lt;/li&gt;\r\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\r\n        &lt;img alt=&quot;&quot; src=&quot;image/catalog/TopSlider/home_boxed_slider3.jpg&quot;&gt;\r\n        &lt;div class=&quot;tp-caption sft&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;800&quot; data-y=&quot;40&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;big&quot;&gt;Special&lt;br&gt;\r\n                offer&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;tp-caption sfb&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;800&quot; data-y=&quot;160&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;middle&quot;&gt;Save money with &lt;br&gt;\r\n                Lingerie SALE&lt;/span&gt;&lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;tp-caption sfb&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1200&quot; data-x=&quot;800&quot; data-y=&quot;265&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;small&quot;&gt;UP TO 50% OFF&lt;/span&gt;&lt;/a&gt; &lt;/div&gt;\r\n    &lt;/li&gt;\r\n&lt;/ul&gt;";s:11:"simple_html";s:1541:"&lt;div class=&quot;item&quot;&gt;\r\n                &lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider1.jpg&quot; alt=&quot;&quot;&gt;\r\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt;\r\n                    &lt;span class=&quot;big&quot;&gt;Sale&lt;/span&gt;\r\n                    &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;/span&gt;\r\n                &lt;/a&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider2.jpg&quot; alt=&quot;&quot;&gt;\r\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt;\r\n                    &lt;span class=&quot;big&quot;&gt;New&lt;/span&gt;\r\n                    &lt;span class=&quot;small&quot;&gt;collection&lt;/span&gt;\r\n                    &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;/span&gt;\r\n                &lt;/a&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider3.jpg&quot; alt=&quot;&quot;&gt;\r\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt;\r\n                    &lt;span class=&quot;big&quot;&gt;Special offer&lt;/span&gt;\r\n                    &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;/span&gt;\r\n                    &lt;span class=&quot;small&quot;&gt;UP TO 50% OFF&lt;/span&gt;\r\n                &lt;/a&gt;\r\n            &lt;/div&gt;";s:19:"simple_banners_html";s:2214:"&lt;div class=&quot;owl-slider-outer&quot;&gt;\r\n    &lt;a class=&quot;owl-slider-prev&quot;&gt;&lt;/a&gt;\r\n    &lt;a class=&quot;owl-slider-next&quot;&gt;&lt;/a&gt;\r\n    &lt;div class=&quot;owl-slider&quot;&gt;\r\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider1.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt; &lt;span class=&quot;big&quot;&gt;Sale&lt;/span&gt; &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;/span&gt; &lt;/a&gt;&lt;/div&gt;\r\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider2.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt; &lt;span class=&quot;big&quot;&gt;New&lt;/span&gt; &lt;span class=&quot;small&quot;&gt;collection&lt;/span&gt; &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image/catalog/TopSlider/home_boxed_slider3.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt; &lt;span class=&quot;big&quot;&gt;Special offer&lt;/span&gt; &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;/span&gt; &lt;/a&gt;&lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;banners-block&quot;&gt;\r\n    &lt;div class=&quot;item&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot;&gt;\r\n            &lt;img src=&quot;image/catalog/TopSlider/banner1.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;banner-text black&quot;&gt;\r\n                100%&lt;br&gt;\r\n                RETINA READY\r\n            &lt;/div&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;item&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot;&gt;\r\n            &lt;img src=&quot;image/catalog/TopSlider/banner2.jpg&quot; alt=&quot;&quot;&gt;\r\n            &lt;div class=&quot;banner-text&quot;&gt;\r\n                &lt;div class=&quot;inside&quot;&gt;RESPONSIVE&lt;br&gt;\r\n                    LAYOUT\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;";}s:16:"rev_boxed_status";s:1:"0";s:13:"simple_status";s:1:"0";s:20:"simple_banner_status";s:1:"0";}', 1),

(null, 0, 'customisation', 'customisation_products', 'a:23:{s:20:"product_catalog_mode";s:1:"0";s:18:"listing_quick_type";s:5:"popup";s:20:"product_listing_type";s:15:"big_with_column";s:32:"bs_products_listing_images_sizes";s:5:"small";s:14:"izotope_number";s:1:"2";s:24:"limit_description_inline";s:4:"2600";s:23:"limit_description_popup";s:4:"1500";s:11:"sale_status";s:1:"1";s:13:"sale_label_bg";s:0:"";s:10:"new_status";s:1:"1";s:4:"days";s:3:"100";s:12:"new_label_bg";s:0:"";s:17:"discount_label_bg";s:0:"";s:12:"quick_status";s:1:"1";s:15:"discount_status";s:1:"1";s:16:"countdown_status";s:1:"1";s:18:"popup_small_status";s:1:"1";s:19:"thumbnails_position";s:6:"bottom";s:13:"tabs_position";s:1:"1";s:7:"related";s:6:"enable";s:25:"product_page_images_sizes";s:3:"big";s:14:"cloudzoom_mode";s:5:"right";s:19:"product_page_button";s:785:"&lt;div class=&quot;share addthis_toolbox addthis_default_style &quot;&gt;\r\n                    &lt;div class=&quot;addthis_default_style&quot;&gt;\r\n                        &lt;a class=&quot;addthis_button_compact&quot;&gt;Share&lt;/a&gt;\r\n                        &lt;a class=&quot;addthis_button_email&quot;&gt;&lt;/a&gt;\r\n                        &lt;a class=&quot;addthis_button_print&quot;&gt;&lt;/a&gt;\r\n                        &lt;a class=&quot;addthis_button_facebook&quot;&gt;&lt;/a&gt;\r\n                        &lt;a class=&quot;addthis_button_twitter&quot;&gt;&lt;/a&gt;\r\n                    &lt;/div&gt;\r\n                    &lt;script type=&quot;text/javascript&quot; src=&quot;//s7.addthis.com/js/250/addthis_widget.js&quot;&gt;&lt;/script&gt;\r\n                &lt;/div&gt;";}', 1),
(null, 0, 'customisation', 'customisation_general', 'a:37:{s:13:"homepage_mode";s:4:"full";s:15:"bg_image_status";s:1:"0";s:13:"headertopline";s:1:"1";s:10:"quickpanel";s:1:"1";s:14:"header_account";s:1:"1";s:11:"footerpopup";s:1:"1";s:8:"css_file";s:1:"0";s:9:"headerspy";s:1:"1";s:8:"spy_type";s:1:"1";i:1;a:15:{s:15:"welcome_message";s:24:"Default welcome message!";s:17:"mobile_menu_title";s:4:"MENU";s:22:"customitem_item_title1";s:6:"buynow";s:15:"blog_link_title";s:4:"blog";s:16:"pages_link_title";s:5:"pages";s:17:"contact_map_title";s:7:"contact";s:20:"footer_socials_title";s:10:"FIND US ON";s:17:"custom_html_title";s:17:"CUSTOM HTML BLOCK";s:16:"customblock_html";s:612:"&lt;ul class=&quot;menu&quot;&gt;\r\n	&lt;li&gt;&lt;span class=&quot;icon icon-house&quot;&gt;&amp;nbsp;&lt;/span&gt; 7563 St. Vincent Place, Glasgow&lt;/li&gt;\r\n	&lt;li&gt;&lt;span class=&quot;icon icon-phone-4&quot;&gt;&amp;nbsp;&lt;/span&gt; 321321321, 321321321&lt;/li&gt;\r\n	&lt;li&gt;&lt;span class=&quot;icon icon-envelop&quot;&gt;&amp;nbsp;&lt;/span&gt; &lt;a href=&quot;mailto:info@mydomain.com&quot;&gt;info@mydomain.com&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span class=&quot;icon icon-skype-2&quot;&gt;&amp;nbsp;&lt;/span&gt; &lt;a href=&quot;index.php&quot;&gt;shop.test&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";s:16:"newsletter_title";s:17:"Newsletter signup";s:16:"newsletter_promo";s:74:"Enter your email and we''ll send you a coupon with 10% off your next order.";s:22:"newsletter_placeholder";s:14:"Your E-mail...";s:9:"sale_text";s:4:"sale";s:8:"new_text";s:3:"new";s:15:"quick_view_text";s:10:"Quick View";}s:11:"header_type";s:1:"4";s:9:"menu_type";s:1:"1";s:10:"homebutton";s:1:"1";s:20:"customitem_item_url1";s:9:"index.php";s:16:"blog_link_status";s:1:"0";s:13:"blog_link_url";s:35:"index.php?route=simple_blog/article";s:14:"pages_link_url";s:9:"index.php";s:12:"pages_status";s:1:"1";s:18:"contact_map_status";s:1:"1";s:18:"additional_page_id";a:4:{i:4;s:1:"4";i:6;s:1:"6";i:3;s:1:"3";i:5;s:1:"5";}s:22:"additional_page_status";a:4:{i:4;s:1:"1";i:6;s:1:"1";i:3;s:1:"1";i:5;s:1:"1";}s:31:"additional_page_checkout_status";s:1:"1";s:30:"additional_page_account_status";s:1:"1";s:15:"footercopyright";s:91:"&amp;copy; 2015 &lt;a href=&quot;index.php&quot;&gt;Optimus&lt;/a&gt;. All Rights Reserved.";s:7:"socials";s:1454:"&lt;ul class=&quot;find-us&quot;&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//www.facebook.com/&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-facebook-3&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//twitter.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-twitter-3&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//www.linkedin.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-linkedin-2&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//www.youtube.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-youtube-3&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//www.pinterest.com/&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-pinterest-2&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;//plus.google.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-googleplus-2&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n    &lt;/ul&gt;";s:14:"socials_status";s:1:"1";s:13:"footerpayment";s:840:"&lt;ul class=&quot;payment-list pull-right&quot;&gt;\r\n    &lt;li&gt;&lt;img src=&quot;image/catalog/blocks/icon-payment-01.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;img src=&quot;image/catalog/blocks/icon-payment-02.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;img src=&quot;image/catalog/blocks/icon-payment-03.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;img src=&quot;image/catalog/blocks/icon-payment-04.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;img src=&quot;image/catalog/blocks/icon-payment-05.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;/li&gt;\r\n&lt;/ul&gt;";s:20:"footerpayment_status";s:1:"1";s:18:"customblock_status";s:1:"1";s:7:"twitter";s:6:"envato";s:8:"facebook";s:6:"envato";s:10:"video_code";s:11:"HhEPvNx0OYw";s:9:"chat_code";s:0:"";s:16:"chat_code_status";s:1:"1";s:6:"apikey";s:0:"";s:14:"list_unique_id";s:0:"";s:17:"newsletter_status";s:1:"1";}', 1),
(null, 0, 'customisation', 'customisation_translation', 'a:1:{i:1;a:7:{s:12:"view_details";s:12:"view details";s:14:"tags_tab_title";s:4:"tags";s:15:"countdown_title";s:27:"THIS LIMITER OFFER ENDS IN:";s:19:"countdown_title_day";s:3:"Day";s:20:"countdown_title_hour";s:4:"Hour";s:22:"countdown_title_minute";s:6:"Minute";s:22:"countdown_title_second";s:6:"Second";}}', 1);


DELETE FROM ?:module;
INSERT INTO ?:module (`module_id`, `name`, `code`, `setting`) VALUES
(40, 'Product Page Advanced Custom Block', 'html', 'a:3:{s:4:"name";s:34:"Product Page Advanced Custom Block";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:2500:"        &lt;div&gt;\r\n            &lt;div class=&quot;brands&quot;&gt;\r\n                &lt;div class=&quot;text-center&quot;&gt;&lt;img src=&quot;image/catalog/brands/brand-themeforest.png&quot; alt=&quot;&quot;&gt;&lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;services-block single small vertical&quot;&gt;\r\n                &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n                    &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n                        &lt;span class=&quot;icon icon-tags-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Special Offer 1+1=3&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Get a gift!&lt;/span&gt;\r\n            &lt;/span&gt;\r\n                    &lt;/a&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n                    &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n                        &lt;span class=&quot;icon icon-credit-card&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;FREE REWARD CARD&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Worth 10$, 50$, 100$&lt;/span&gt;\r\n            &lt;/span&gt;\r\n                    &lt;/a&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n                    &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n                        &lt;span class=&quot;icon icon-users-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Join Our Club&lt;/span&gt;\r\n            &lt;/span&gt;\r\n                    &lt;/a&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n                    &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n                        &lt;span class=&quot;icon icon-truck&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Free Shipping&lt;/span&gt;\r\n            &lt;/span&gt;\r\n                    &lt;/a&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n\r\n        &lt;/div&gt;\r\n";}}s:6:"status";s:1:"1";}'),
(41, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:9:"Home Page";s:9:"banner_id";s:1:"9";s:5:"width";s:3:"170";s:6:"height";s:2:"48";s:6:"status";s:1:"1";}'),
(42, 'Home Page Promo ', 'html', 'a:3:{s:4:"name";s:16:"Home Page Promo ";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:1379:"&lt;div class=&quot;services-block hidden-xs&quot;&gt;\r\n        &lt;div class=&quot;row&quot;&gt;\r\n            &lt;div class=&quot;col-xs-12 col-sm-4 col-lg-4 divider-right&quot;&gt;\r\n                &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n                    &lt;span class=&quot;icon icon-airplane-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n                    &lt;span class=&quot;title&quot;&gt;Free shipping&lt;/span&gt;\r\n                    &lt;span class=&quot;description&quot;&gt;on orders over $200&lt;/span&gt;\r\n                &lt;/a&gt;\r\n            &lt;/div&gt;\r\n\r\n            &lt;div class=&quot;col-xs-12 col-sm-4 col-lg-4 divider-right&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt; &lt;span class=&quot;icon icon-clock&quot;&gt;&amp;nbsp;&lt;/span&gt; &lt;span class=&quot;title&quot;&gt;30-day returns&lt;/span&gt; &lt;span class=&quot;description&quot;&gt;moneyback guarantee&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n\r\n            &lt;div class=&quot;col-xs-12 col-sm-4 col-lg-4&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt; &lt;span class=&quot;icon icon-umbrella &quot;&gt;&amp;nbsp;&lt;/span&gt; &lt;span class=&quot;title&quot;&gt;24/7 Support &lt;/span&gt; &lt;span class=&quot;description&quot;&gt;online consultations&lt;/span&gt; &lt;/a&gt; &lt;/div&gt;\r\n\r\n        &lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(43, 'Home Page', 'featured', 'a:6:{s:4:"name";s:9:"Home Page";s:7:"product";a:5:{i:0;s:2:"42";i:1;s:2:"30";i:2;s:2:"47";i:3;s:2:"28";i:4;s:2:"41";}s:5:"limit";s:1:"7";s:5:"width";s:3:"350";s:6:"height";s:3:"425";s:6:"status";s:1:"1";}'),
(44, 'Home Page Isotope Categories', 'isotope', 'a:41:{s:4:"name";s:28:"Home Page Isotope Categories";s:13:"status_latest";s:1:"0";s:12:"limit_latest";s:1:"5";s:12:"order_latest";s:1:"1";s:12:"width_latest";s:3:"350";s:13:"height_latest";s:3:"450";s:14:"columns_latest";s:1:"1";s:17:"status_bestseller";s:1:"0";s:16:"limit_bestseller";s:1:"5";s:16:"order_bestseller";s:1:"2";s:16:"width_bestseller";s:3:"350";s:17:"height_bestseller";s:3:"450";s:18:"columns_bestseller";s:1:"1";s:14:"status_popular";s:1:"0";s:13:"limit_popular";s:1:"5";s:13:"order_popular";s:1:"3";s:13:"width_popular";s:3:"350";s:14:"height_popular";s:3:"450";s:15:"columns_popular";s:1:"1";s:14:"status_special";s:1:"0";s:13:"limit_special";s:1:"5";s:13:"order_special";s:1:"4";s:13:"width_special";s:3:"350";s:14:"height_special";s:3:"450";s:15:"columns_special";s:1:"1";s:15:"status_featured";s:1:"0";s:14:"limit_featured";s:0:"";s:14:"order_featured";s:0:"";s:14:"width_featured";s:3:"350";s:15:"height_featured";s:3:"450";s:16:"columns_featured";s:1:"1";s:7:"product";a:1:{i:0;s:2:"42";}s:15:"status_category";s:1:"1";s:14:"limit_category";s:1:"4";s:14:"width_category";s:3:"350";s:15:"height_category";s:3:"450";s:12:"id_category1";s:2:"20";s:12:"id_category2";s:2:"57";s:12:"id_category3";s:2:"33";s:12:"id_category4";s:0:"";s:6:"status";s:1:"1";}'),
(45, 'Isotope Home Page Sliders in row', 'isotope', 'a:41:{s:4:"name";s:32:"Isotope Home Page Sliders in row";s:13:"status_latest";s:1:"1";s:12:"limit_latest";s:1:"5";s:12:"order_latest";s:1:"1";s:12:"width_latest";s:3:"126";s:13:"height_latest";s:3:"153";s:14:"columns_latest";s:1:"1";s:17:"status_bestseller";s:1:"1";s:16:"limit_bestseller";s:1:"5";s:16:"order_bestseller";s:1:"2";s:16:"width_bestseller";s:3:"126";s:17:"height_bestseller";s:3:"153";s:18:"columns_bestseller";s:1:"1";s:14:"status_popular";s:1:"1";s:13:"limit_popular";s:1:"5";s:13:"order_popular";s:1:"3";s:13:"width_popular";s:3:"350";s:14:"height_popular";s:3:"450";s:15:"columns_popular";s:1:"1";s:14:"status_special";s:1:"1";s:13:"limit_special";s:1:"5";s:13:"order_special";s:1:"4";s:13:"width_special";s:3:"126";s:14:"height_special";s:3:"153";s:15:"columns_special";s:1:"1";s:15:"status_featured";s:1:"0";s:14:"limit_featured";s:0:"";s:14:"order_featured";s:0:"";s:14:"width_featured";s:3:"350";s:15:"height_featured";s:3:"450";s:16:"columns_featured";s:1:"1";s:7:"product";a:1:{i:0;s:2:"42";}s:15:"status_category";s:1:"0";s:14:"limit_category";s:1:"4";s:14:"width_category";s:3:"350";s:15:"height_category";s:3:"450";s:12:"id_category1";s:2:"20";s:12:"id_category2";s:2:"18";s:12:"id_category3";s:2:"24";s:12:"id_category4";s:2:"34";s:6:"status";s:1:"1";}'),
(46, 'Sitemap Left Custom Block', 'html', 'a:3:{s:4:"name";s:25:"Sitemap Left Custom Block";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:144:"&lt;img class=&quot;img-responsive animate scale animated&quot; src=&quot;image/catalog/blocks/large-icon-sitemap.png&quot; alt=&quot;&quot;&gt;";}}s:6:"status";s:1:"1";}'),
(47, 'Product Bottom Custom Block', 'html', 'a:3:{s:4:"name";s:27:"Product Bottom Custom Block";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:2006:"&lt;div class=&quot;services-block single small row&quot;&gt;\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-3 col-lg-3 divider-right&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-tags-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Special Offer 1+1=3&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Get a gift!&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-3 col-lg-3 divider-right&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-credit-card&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;FREE REWARD CARD&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Worth 10$, 50$, 100$&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-3 col-lg-3 divider-right&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-users-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Join Our Club&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-3 col-lg-3 divider-right&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-truck&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Free Shipping&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(48, 'Product Bottom Video', 'html', 'a:3:{s:4:"name";s:20:"Product Bottom Video";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:278:"&lt;div id=&quot;video-container&quot;&gt;\r\n    &lt;iframe src=&quot;//www.youtube.com/embed/GrKjC5omE4A&quot; style=&quot;border:0; margin:0; padding:0&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;line-divider&quot;&gt;&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(49, 'Home Page Food skin', 'featured', 'a:6:{s:4:"name";s:9:"Home Page";s:7:"product";a:6:{i:0;s:2:"42";i:1;s:2:"30";i:2;s:2:"47";i:3;s:2:"28";i:4;s:2:"41";i:5;s:2:"46";}s:5:"limit";s:1:"6";s:5:"width";s:3:"350";s:6:"height";s:3:"425";s:6:"status";s:1:"1";}'),
(50, 'Home Page Food skin', 'bestseller', 'a:5:{s:4:"name";s:19:"Home Page Food skin";s:5:"limit";s:1:"6";s:5:"width";s:2:"68";s:6:"height";s:2:"83";s:6:"status";s:1:"1";}'),
(51, 'Home Page Food skin', 'latest', 'a:5:{s:4:"name";s:19:"Home Page Food skin";s:5:"limit";s:1:"6";s:5:"width";s:2:"68";s:6:"height";s:2:"83";s:6:"status";s:1:"1";}'),
(52, 'Home Page Food skin', 'special', 'a:5:{s:4:"name";s:19:"Home Page Food skin";s:5:"limit";s:1:"6";s:5:"width";s:3:"270";s:6:"height";s:3:"328";s:6:"status";s:1:"1";}'),
(53, 'Product Right Custom Block', 'html', 'a:3:{s:4:"name";s:25:"Product Left Custom Block";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:2073:"&lt;h3&gt;PRODUCT CUSTOM BLOCK &lt;/h3&gt;\r\nYou can add your content here, like promotions or some additional info\r\n&lt;div class=&quot;services-block single small vertical&quot;&gt;\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-tags-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Special Offer 1+1=3&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Get a gift!&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-credit-card&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;FREE REWARD CARD&lt;/span&gt;\r\n                &lt;span class=&quot;description&quot;&gt;Worth 10$, 50$, 100$&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-users-2&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Join Our Club&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-xs-12 col-sm-6 col-md-12 col-lg-12&quot;&gt;\r\n        &lt;a href=&quot;index.php&quot; class=&quot;item&quot;&gt;\r\n            &lt;span class=&quot;icon icon-truck&quot;&gt;&amp;nbsp;&lt;/span&gt;\r\n            &lt;span class=&quot;text&quot;&gt;\r\n                &lt;span class=&quot;title&quot;&gt;Free Shipping&lt;/span&gt;\r\n            &lt;/span&gt;\r\n        &lt;/a&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n";}}s:6:"status";s:1:"1";}'),
(54, 'Electronic skin Home Page Isotope Sliders', 'isotope', 'a:41:{s:4:"name";s:41:"Electronic skin Home Page Isotope Sliders";s:13:"status_latest";s:1:"1";s:12:"limit_latest";s:1:"2";s:12:"order_latest";s:1:"1";s:12:"width_latest";s:3:"350";s:13:"height_latest";s:3:"450";s:14:"columns_latest";s:1:"1";s:17:"status_bestseller";s:1:"1";s:16:"limit_bestseller";s:1:"2";s:16:"order_bestseller";s:1:"2";s:16:"width_bestseller";s:3:"350";s:17:"height_bestseller";s:3:"450";s:18:"columns_bestseller";s:1:"1";s:14:"status_popular";s:1:"1";s:13:"limit_popular";s:1:"1";s:13:"order_popular";s:1:"3";s:13:"width_popular";s:3:"350";s:14:"height_popular";s:3:"450";s:15:"columns_popular";s:1:"1";s:14:"status_special";s:1:"1";s:13:"limit_special";s:1:"2";s:13:"order_special";s:1:"4";s:13:"width_special";s:3:"350";s:14:"height_special";s:3:"450";s:15:"columns_special";s:1:"1";s:15:"status_featured";s:1:"1";s:14:"limit_featured";s:1:"5";s:14:"order_featured";s:1:"5";s:14:"width_featured";s:3:"350";s:15:"height_featured";s:3:"450";s:16:"columns_featured";s:1:"1";s:7:"product";a:1:{i:0;s:2:"42";}s:15:"status_category";s:1:"0";s:14:"limit_category";s:1:"4";s:14:"width_category";s:3:"350";s:15:"height_category";s:3:"450";s:12:"id_category1";s:2:"20";s:12:"id_category2";s:2:"18";s:12:"id_category3";s:2:"24";s:12:"id_category4";s:2:"34";s:6:"status";s:1:"1";}'),
(55, 'Kids skin Sliders in row 1', 'isotope', 'a:41:{s:4:"name";s:26:"Kids skin Sliders in row 1";s:13:"status_latest";s:1:"0";s:12:"limit_latest";s:1:"5";s:12:"order_latest";s:1:"2";s:12:"width_latest";s:3:"350";s:13:"height_latest";s:3:"450";s:14:"columns_latest";s:1:"1";s:17:"status_bestseller";s:1:"0";s:16:"limit_bestseller";s:1:"5";s:16:"order_bestseller";s:1:"4";s:16:"width_bestseller";s:3:"350";s:17:"height_bestseller";s:3:"450";s:18:"columns_bestseller";s:1:"1";s:14:"status_popular";s:1:"1";s:13:"limit_popular";s:1:"5";s:13:"order_popular";s:1:"3";s:13:"width_popular";s:3:"350";s:14:"height_popular";s:3:"450";s:15:"columns_popular";s:1:"1";s:14:"status_special";s:1:"1";s:13:"limit_special";s:1:"5";s:13:"order_special";s:1:"2";s:13:"width_special";s:3:"350";s:14:"height_special";s:3:"450";s:15:"columns_special";s:1:"1";s:15:"status_featured";s:1:"1";s:14:"limit_featured";s:1:"5";s:14:"order_featured";s:1:"1";s:14:"width_featured";s:3:"350";s:15:"height_featured";s:3:"450";s:16:"columns_featured";s:1:"2";s:7:"product";a:5:{i:0;s:2:"42";i:1;s:2:"30";i:2;s:2:"47";i:3;s:2:"28";i:4;s:2:"41";}s:15:"status_category";s:1:"0";s:14:"limit_category";s:1:"4";s:14:"width_category";s:3:"350";s:15:"height_category";s:3:"450";s:12:"id_category1";s:2:"20";s:12:"id_category2";s:2:"18";s:12:"id_category3";s:2:"24";s:12:"id_category4";s:2:"34";s:6:"status";s:1:"1";}'),
(56, 'Kids skin Sliders in row 2', 'isotope', 'a:41:{s:4:"name";s:26:"Kids skin Sliders in row 2";s:13:"status_latest";s:1:"1";s:12:"limit_latest";s:1:"5";s:12:"order_latest";s:1:"3";s:12:"width_latest";s:3:"350";s:13:"height_latest";s:3:"450";s:14:"columns_latest";s:1:"3";s:17:"status_bestseller";s:1:"1";s:16:"limit_bestseller";s:1:"5";s:16:"order_bestseller";s:1:"1";s:16:"width_bestseller";s:3:"350";s:17:"height_bestseller";s:3:"450";s:18:"columns_bestseller";s:1:"1";s:14:"status_popular";s:1:"0";s:13:"limit_popular";s:1:"5";s:13:"order_popular";s:1:"3";s:13:"width_popular";s:3:"350";s:14:"height_popular";s:3:"450";s:15:"columns_popular";s:1:"1";s:14:"status_special";s:1:"0";s:13:"limit_special";s:1:"5";s:13:"order_special";s:1:"4";s:13:"width_special";s:3:"350";s:14:"height_special";s:3:"450";s:15:"columns_special";s:1:"1";s:15:"status_featured";s:1:"0";s:14:"limit_featured";s:1:"5";s:14:"order_featured";s:1:"4";s:14:"width_featured";s:3:"350";s:15:"height_featured";s:3:"450";s:16:"columns_featured";s:1:"1";s:7:"product";a:1:{i:0;s:2:"42";}s:15:"status_category";s:1:"0";s:14:"limit_category";s:1:"4";s:14:"width_category";s:3:"350";s:15:"height_category";s:3:"450";s:12:"id_category1";s:2:"20";s:12:"id_category2";s:2:"18";s:12:"id_category3";s:2:"24";s:12:"id_category4";s:2:"34";s:6:"status";s:1:"1";}');

DELETE FROM ?:layout_module;
INSERT INTO ?:layout_module (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(null, 1, 'html.42', 'content_top', 1),
(null, 1, 'featured.43', 'content_top', 2),
(null, 1, 'carousel.41', 'content_top', 4),
(null, 1, 'isotope.44', 'content_top', 6),
(null, 1, 'isotope.45', 'content_bottom', 7),

(null, 2, 'html.40', 'column_right', 1),
(null, 2, 'html.47', 'content_bottom', 1),
(null, 2, 'html.48', 'content_bottom', 3),
(null, 2, 'upsells', 'content_bottom', 2),

(null, 3, 'category', 'column_left', 1),
(null, 3, 'filter', 'column_left', 2),

(null, 6, 'account', 'column_left', 1),
(null, 8, 'category', 'column_left', 1),

(null, 9, 'html.46', 'column_left', 1);

DELETE FROM ?:option WHERE `option_id` = 13;
DELETE FROM ?:option_description WHERE `option_id` = 13;
DELETE FROM ?:option_value WHERE `option_id` = 13;
DELETE FROM ?:option_value_description WHERE `option_id` = 13;
DELETE FROM ?:product_option WHERE `option_id` = 13;
DELETE FROM ?:product_option_value WHERE `option_id` = 13;

INSERT INTO ?:option (`option_id`, `type`, `sort_order`) VALUES
(13, 'image', 1);

INSERT INTO ?:option_description (`option_id`, `language_id`, `name`) VALUES
(13, 1, 'Colors');

INSERT INTO ?:option_value (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(49, 13, 'catalog/colors/blue.jpg', 1),
(50, 13, 'catalog/colors/brown.jpg', 2),
(51, 13, 'catalog/colors/green.jpg', 3),
(52, 13, 'catalog/colors/red.jpg', 4),
(53, 13, 'catalog/colors/violet.jpg', 5);

INSERT INTO ?:option_value_description (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(49, 1, 13, 'blue'),
(50, 1, 13, 'brown'),
(51, 1, 13, 'green'),
(52, 1, 13, 'red'),
(53, 1, 13, 'violet');

DELETE FROM ?:product_option WHERE `product_id` = 28;
DELETE FROM ?:product_option WHERE `product_id` = 30;
DELETE FROM ?:product_option WHERE `product_id` = 40;
DELETE FROM ?:product_option WHERE `product_id` = 47;

INSERT INTO ?:product_option (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(227, 28, 13, '', 1),
(228, 30, 13, '', 1),
(229, 47, 13, '', 1),
(230, 40, 13, '', 1);

DELETE FROM ?:product_option_value WHERE `product_id` = 28;
DELETE FROM ?:product_option_value WHERE `product_id` = 30;
DELETE FROM ?:product_option_value WHERE `product_id` = 40;
DELETE FROM ?:product_option_value WHERE `product_id` = 47;

INSERT INTO ?:product_option_value (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(21, 227, 28, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 227, 28, 13, 52, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 227, 28, 13, 51, 10, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(18, 227, 28, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 28, 13, 49, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),

(22, 228, 30, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(23, 228, 30, 13, 49, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),

(24, 229, 47, 13, 53, 10, 1, '5.00000000', '+', 0, '+', '0.00000000', '+'),
(25, 229, 47, 13, 52, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 229, 47, 13, 51, 10, 1, '5.00000000', '-', 0, '+', '0.00000000', '+'),
(27, 229, 47, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),

(28, 230, 40, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 230, 40, 13, 52, 10, 1, '5.00000000', '+', 0, '+', '0.00000000', '+'),
(30, 230, 40, 13, 51, 10, 1, '5.00000000', '-', 0, '+', '0.00000000', '+'),
(31, 230, 40, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 230, 40, 13, 49, 10, 1, '5.00000000', '-', 0, '+', '0.00000000', '+');

