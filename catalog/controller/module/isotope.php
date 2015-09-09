<?php
class ControllerModuleIsotope extends Controller {
	public function index($setting) {
		$this->load->language('module/isotope');
        $this->load->model('custom/general');

		$data['heading_title'] = $this->language->get('heading_title');

        $data['filter_title_latest'] = $this->language->get('filter_title_latest');
        $data['filter_title_bestseller'] = $this->language->get('filter_title_bestseller');
        $data['filter_title_popular'] = $this->language->get('filter_title_popular');
        $data['filter_title_special'] = $this->language->get('filter_title_special');
        $data['filter_title_featured'] = $this->language->get('filter_title_featured');

        $data['filter_title_all'] = $this->language->get('filter_title_all');

        $data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

        $customisation_products = $this->config->get('customisation_products');


        if (isset($customisation_products["limit_description_popup"]) && is_numeric($customisation_products["limit_description_popup"])) {
            $data['limit'] = $customisation_products["limit_description_popup"];
        } else {
            $data['limit'] = 1500;
        }
        $data['quick_type'] = 'popup';



        $data['products_latest'] = array();
        $data['products_bestseller'] = array();
        $data['products_popular'] = array();
        $data['products_special'] = array();
        $data['products_featured'] = array();

        $filter_data_latest = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit_latest']
		);


        $filter_data_special = array(
            'sort'  => 'pd.name',
            'order' => 'DESC',
            'start' => 0,
            'limit' => $setting['limit_special']
        );




        if ($setting['status_latest'] != 0){
            $results_latest = $this->model_catalog_product->getProducts($filter_data_latest);
        } else {
           $results_latest = '';
        }

        $data['order_latest'] = $setting['order_latest'];
        $data['order_bestseller'] = $setting['order_bestseller'];
        $data['order_popular'] = $setting['order_popular'];
        $data['order_special'] = $setting['order_special'];
        $data['order_featured'] = $setting['order_featured'];


        /*other sliders model */
        if ($setting['status_bestseller'] != 0){
            $results_bestseller = $this->model_catalog_product->getBestSellerProducts($setting['limit_bestseller']);
        } else {
            $results_bestseller = '';
        }
        if ($setting['status_popular'] != 0){
            $results_popular = $this->model_catalog_product->getPopularProducts($setting['limit_popular']);
        } else {
            $results_popular = '';
        }
        if ($setting['status_special'] != 0){
            $results_special = $this->model_catalog_product->getProductSpecials($filter_data_special);
        } else {
            $results_special = '';
        }

        if ($setting['status_featured'] != 0){
            if (!$setting['limit_featured']) {
                $setting['limit_featured'] = 4;
            }

            $data['products'] = array();


        } else {
            $data['products'] = '';
        }


        /* category model */

        if ($setting['status_category'] != 0){

            $data['width_category'] = $setting['width_category'];
            $data['height_category'] = $setting['height_category'];


            if (isset($setting['id_category1']) && $setting['id_category1'] != ''){

                $data['category_name1'] = $this->model_custom_general->getCategoryName($setting['id_category1']);
                $filter_data_category1 = array('filter_category_id'=> $setting['id_category1'], 'filter_filter'=> '', 'sort' => 'p.sort_order', 'order'=>'ASC', 'start' => '', 'limit' => $setting['limit_category']);
                $results_category1 = $this->model_catalog_product->getProducts($filter_data_category1);

                if (sizeof($results_category1) == 0){$results_category1 = '';}
            } else {
                $results_category1 = '';
            }



            if (isset($setting['id_category2']) && $setting['id_category2'] != ''){
                $data['category_name2'] = $this->model_custom_general->getCategoryName($setting['id_category2']);
                $filter_data_category2 = array('filter_category_id'=> $setting['id_category2'], 'filter_filter'=> '', 'sort' => 'p.sort_order', 'order'=>'ASC', 'start' => '', 'limit' => $setting['limit_category']);
                $results_category2 = $this->model_catalog_product->getProducts($filter_data_category2);

                if (sizeof($results_category2) == 0){$results_category2 = '';}
            } else {
                $results_category2 = '';
            }
            if (isset($setting['id_category3']) && $setting['id_category3'] != ''){
                $data['category_name3'] = $this->model_custom_general->getCategoryName($setting['id_category3']);
                $filter_data_category3 = array('filter_category_id'=> $setting['id_category3'], 'filter_filter'=> '', 'sort' => 'p.sort_order', 'order'=>'ASC', 'start' => '', 'limit' => $setting['limit_category']);
                $results_category3 = $this->model_catalog_product->getProducts($filter_data_category3);

                if (sizeof($results_category3) == 0){$results_category3 = '';}
            } else {
                $results_category3 = '';
            }


            if (isset($setting['id_category4']) && $setting['id_category4'] != ''){
                $data['category_name4'] = $this->model_custom_general->getCategoryName($setting['id_category4']);
                $filter_data_category4 = array('filter_category_id'=> $setting['id_category4'], 'filter_filter'=> '', 'sort' => 'p.sort_order', 'order'=>'ASC', 'start' => '', 'limit' => $setting['limit_category']);
                $results_category4 = $this->model_catalog_product->getProducts($filter_data_category4);

                if (sizeof($results_category4) == 0){$results_category4 = '';}
            } else {
                $results_category4 = '';
            }
        } else {
            $results_category1 = '';
            $results_category2 = '';
            $results_category3 = '';
            $results_category4 = '';
        }


        /*//other sliders model */

        if ($results_latest != '' || $results_bestseller != '' || $results_popular != '' || $results_special != '' ||  $data['products'] != '' || $results_category1 != '' || $results_category2 != '' || $results_category3 != '' || $results_category4 != '') {

            if ($results_latest != '') {
                $data['width_latest'] = $setting['width_latest'];
                $data['height_latest'] = $setting['height_latest'];

                $data['columns_latest'] = $setting['columns_latest'];

                $data['type_of_slider_latest'] = 1;

                foreach ($results_latest as $result_latest) {
                    if ($result_latest['image']) {
                        $image = $this->model_tool_image->resize($result_latest['image'], $setting['width_latest'], $setting['height_latest']);
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $setting['width_latest'], $setting['height_latest']);
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_latest['price'], $result_latest['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_latest['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_latest['special'], $result_latest['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_latest['special'] ? $result_latest['special'] : $result_latest['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = $result_latest['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_latest'][] = array(
                        'product_id'  => $result_latest['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_latest['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_latest['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,


                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_latest['product_id']),
                    );
                }
            }

            /* output for bestseller */
            if ($results_bestseller != '') {
                $data['width_bestseller'] = $setting['width_bestseller'];
                $data['height_bestseller'] = $setting['height_bestseller'];

                $data['columns_bestseller'] = $setting['columns_bestseller'];
                $data['type_of_slider_bestseller'] = 2;

                foreach ($results_bestseller as $result_bestseller) {
                    if ($result_bestseller['image']) {
                        $image = $this->model_tool_image->resize($result_bestseller['image'], $setting['width_bestseller'], $setting['height_bestseller']);
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $setting['width_bestseller'], $setting['height_bestseller']);
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_bestseller['price'], $result_bestseller['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_bestseller['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_bestseller['special'], $result_bestseller['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_bestseller['special'] ? $result_bestseller['special'] : $result_bestseller['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = $result_bestseller['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_bestseller'][] = array(
                        'product_id'  => $result_bestseller['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_bestseller['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_bestseller['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_bestseller['product_id']),
                    );
                }
            }
            /* end output for bestseller */

            /* output for popular */
            if ($results_popular != '') {
                $data['width_popular'] = $setting['width_popular'];
                $data['height_popular'] = $setting['height_popular'];

                $data['columns_popular'] = $setting['columns_popular'];
                $data['type_of_slider_popular'] = 3;

                foreach ($results_popular as $result_popular) {
                    if ($result_popular['image']) {
                        $image = $this->model_tool_image->resize($result_popular['image'], $setting['width_popular'], $setting['height_popular']);
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $setting['width_popular'], $setting['height_popular']);
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_popular['price'], $result_popular['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_popular['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_popular['special'], $result_popular['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_popular['special'] ? $result_popular['special'] : $result_popular['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = $result_popular['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_popular'][] = array(
                        'product_id'  => $result_popular['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_popular['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_popular['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_popular['product_id']),
                    );
                }
            }
            /* end output for popular */

            /* output for special */
            if ($results_special != '') {
                $data['width_special'] = $setting['width_special'];
                $data['height_special'] = $setting['height_special'];

                $data['columns_special'] = $setting['columns_special'];
                $data['type_of_slider_special'] = 4;

                foreach ($results_special as $result_special) {
                    if ($result_special['image']) {
                        $image = $this->model_tool_image->resize($result_special['image'], $setting['width_special'], $setting['height_special']);
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $setting['width_special'], $setting['height_special']);
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_special['price'], $result_special['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_special['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_special['special'], $result_special['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_special['special'] ? $result_special['special'] : $result_special['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = $result_special['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_special'][] = array(
                        'product_id'  => $result_special['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_special['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_special['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_special['product_id'])
                    );
                }

            }
            /* end output for special */

            /* output for featured */
            if ($data['products'] != '') {
                $data['width_featured'] = $setting['width_featured'];
                $data['height_featured'] = $setting['height_featured'];
                $data['columns_featured'] = $setting['columns_featured'];

                $data['type_of_slider_featured'] = 5;
                $products = array_slice($setting['product'], 0, (int)$setting['limit_featured']);

                foreach ($products as $product_id) {
                    $product_info = $this->model_catalog_product->getProduct($product_id);

                    if ($product_info) {
                        if ($product_info['image']) {
                            $image = $this->model_tool_image->resize($product_info['image'], $setting['width_featured'], $setting['height_featured']);
                        } else {
                            $image = $this->model_tool_image->resize('placeholder.png', $setting['width_featured'], $setting['height_featured']);
                        }

                        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                            $price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                        } else {
                            $price = false;
                        }

                        if ((float)$product_info['special']) {
                            $special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                        } else {
                            $special = false;
                        }

                        if ($this->config->get('config_tax')) {
                            $tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
                        } else {
                            $tax = false;
                        }

                        if ($this->config->get('config_review_status')) {
                            $rating = $product_info['rating'];
                        } else {
                            $rating = false;
                        }

                        $data['products_featured'][] = array(
                            'product_id'  => $product_info['product_id'],
                            'thumb'       => $image,
                            'name'        => $product_info['name'],
                            'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                            'price'       => $price,
                            'special'     => $special,
                            'tax'         => $tax,
                            'rating'      => $rating,
                            'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
                        );
                    }
                }



            }

            /* end output for featured */

            /* output for category1 */
            if ($results_category1 != ''){
                $data['type_of_slider_category1'] = 11;
                $data['products_category1'] = array();

                foreach ($results_category1 as $result_category1) {
                    if ($result_category1['image']) {
                        $image = $this->model_tool_image->resize($result_category1['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_category1['price'], $result_category1['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_category1['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_category1['special'], $result_category1['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_category1['special'] ? $result_category1['special'] : $result_category1['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result_category1['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_category1'][] = array(
                        'product_id'  => $result_category1['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_category1['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_category1['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,

                        //'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result_category1['product_id'] . $url)

                        'href'        => $this->url->link('product/product', 'product_id=' . $result_category1['product_id'])
                    );
                }
            }
            /* end output for category1 */

            /* output for category2 */
            if ($results_category2 != ''){
                $data['type_of_slider_category2'] = 22;
                $data['products_category2'] = array();

                foreach ($results_category2 as $result_category2) {
                    if ($result_category2['image']) {
                        $image = $this->model_tool_image->resize($result_category2['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_category2['price'], $result_category2['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_category2['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_category2['special'], $result_category2['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_category2['special'] ? $result_category2['special'] : $result_category2['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result_category2['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_category2'][] = array(
                        'product_id'  => $result_category2['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_category2['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_category2['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_category2['product_id'])
                    );
                }
            }
            /* end output for category2 */

            /* output for category3 */
            if ($results_category3 != ''){
                $data['products_category3'] = array();

                $data['type_of_slider_category3'] = 33;

                foreach ($results_category3 as $result_category3) {
                    if ($result_category3['image']) {
                        $image = $this->model_tool_image->resize($result_category3['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_category3['price'], $result_category3['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_category3['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_category3['special'], $result_category3['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_category3['special'] ? $result_category3['special'] : $result_category3['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result_category3['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_category3'][] = array(
                        'product_id'  => $result_category3['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_category3['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_category3['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_category3['product_id'])
                    );
                }
            }
            /* end output for category3 */


            /* output for category4 */
            if ($results_category4 != ''){
                $data['type_of_slider_category4'] = 44;
                $data['products_category4'] = array();

                foreach ($results_category4 as $result_category4) {
                    if ($result_category4['image']) {
                        $image = $this->model_tool_image->resize($result_category4['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result_category4['price'], $result_category4['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result_category4['special']) {
                        $special = $this->currency->format($this->tax->calculate($result_category4['special'], $result_category4['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result_category4['special'] ? $result_category4['special'] : $result_category4['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result_category4['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products_category4'][] = array(
                        'product_id'  => $result_category4['product_id'],
                        'thumb'       => $image,
                        'name'        => $result_category4['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result_category4['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result_category4['product_id'])
                    );
                }
            }
            /* end output for category4 */



            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/isotope.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/isotope.tpl', $data);
			}
		}

	}
}