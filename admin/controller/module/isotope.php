<?php
class ControllerModuleIsotope extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/isotope');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('isotope', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}
			
			$this->cache->delete('product');

			$this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}
		
		if (isset($this->error['width_latest'])) {
			$data['error_width_latest'] = $this->error['width_latest'];
		} else {
			$data['error_width_latest'] = '';
		}
		
		if (isset($this->error['height_latest'])) {
			$data['error_height_latest'] = $this->error['height_latest'];
		} else {
			$data['error_height_latest'] = '';
		}
        /* new changes */
        if (isset($this->error['width_bestseller'])) {
            $data['error_width_bestseller'] = $this->error['width_bestseller'];
        } else {
            $data['error_width_bestseller'] = '';
        }

        if (isset($this->error['height_bestseller'])) {
            $data['error_height_bestseller'] = $this->error['height_bestseller'];
        } else {
            $data['error_height_bestseller'] = '';
        }

        if (isset($this->error['width_popular'])) {
            $data['error_width_popular'] = $this->error['width_popular'];
        } else {
            $data['error_width_popular'] = '';
        }

        if (isset($this->error['height_popular'])) {
            $data['error_height_popular'] = $this->error['height_popular'];
        } else {
            $data['error_height_popular'] = '';
        }

        if (isset($this->error['width_special'])) {
            $data['error_width_special'] = $this->error['width_special'];
        } else {
            $data['error_width_special'] = '';
        }

        if (isset($this->error['height_special'])) {
            $data['error_height_special'] = $this->error['height_special'];
        } else {
            $data['error_height_special'] = '';
        }

        if (isset($this->error['width_category'])) {
            $data['error_width_category'] = $this->error['width_category'];
        } else {
            $data['error_width_category'] = '';
        }

        if (isset($this->error['height_category'])) {
            $data['error_height_category'] = $this->error['height_category'];
        } else {
            $data['error_height_category'] = '';
        }

        if (isset($this->error['width_featured'])) {
            $data['error_width_featured'] = $this->error['width_featured'];
        } else {
            $data['error_width_featured'] = '';
        }

        if (isset($this->error['height_featured'])) {
            $data['error_height_featured'] = $this->error['height_featured'];
        } else {
            $data['error_height_featured'] = '';
        }


        /* //new changes */


        $data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/isotope', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/isotope', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/isotope', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/isotope', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }


        $data['token'] = $this->session->data['token'];


        if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}


        /*featured*/


        $this->load->model('catalog/product');

        $data['products'] = array();

        if (isset($this->request->post['product'])) {
            $products = $this->request->post['product'];
        } elseif (!empty($module_info)) {
            $products = $module_info['product'];
        } else {
            $products = array();
        }

        foreach ($products as $product_id) {
            $product_info = $this->model_catalog_product->getProduct($product_id);

            if ($product_info) {
                $data['products'][] = array(
                    'product_id' => $product_info['product_id'],
                    'name'       => $product_info['name']
                );
            }
        }
        /*end featured*/




        if (isset($this->request->post['limit_latest'])) {
			$data['limit_latest'] = $this->request->post['limit_latest'];
		} elseif (!empty($module_info)) {
			$data['limit_latest'] = $module_info['limit_latest'];
		} else {
			$data['limit_latest'] = 5;
		}

        if (isset($this->request->post['columns_latest'])) {
            $data['columns_latest'] = $this->request->post['columns_latest'];
        } elseif (!empty($module_info)) {
            $data['columns_latest'] = $module_info['columns_latest'];
        } else {
            $data['columns_latest'] = 1;
        }

        /* new changes */
        if (isset($this->request->post['limit_bestseller'])) {
            $data['limit_bestseller'] = $this->request->post['limit_bestseller'];
        } elseif (!empty($module_info)) {
            $data['limit_bestseller'] = $module_info['limit_bestseller'];
        } else {
            $data['limit_bestseller'] = 5;
        }
        if (isset($this->request->post['limit_popular'])) {
            $data['limit_popular'] = $this->request->post['limit_popular'];
        } elseif (!empty($module_info)) {
            $data['limit_popular'] = $module_info['limit_popular'];
        } else {
            $data['limit_popular'] = 5;
        }

        if (isset($this->request->post['limit_special'])) {
            $data['limit_special'] = $this->request->post['limit_special'];
        } elseif (!empty($module_info)) {
            $data['limit_special'] = $module_info['limit_special'];
        } else {
            $data['limit_special'] = 5;
        }

        if (isset($this->request->post['limit_category'])) {
            $data['limit_category'] = $this->request->post['limit_category'];
        } elseif (!empty($module_info)) {
            $data['limit_category'] = $module_info['limit_category'];
        } else {
            $data['limit_category'] = 4;
        }

        if (isset($this->request->post['limit_featured'])) {
            $data['limit_featured'] = $this->request->post['limit_featured'];
        } elseif (!empty($module_info)) {
            $data['limit_featured'] = $module_info['limit_featured'];
        } else {
            $data['limit_featured'] = 5;
        }

        /* //new changes */


        if (isset($this->request->post['width_latest'])) {
			$data['width_latest'] = $this->request->post['width_latest'];
		} elseif (!empty($module_info)) {
			$data['width_latest'] = $module_info['width_latest'];
		} else {
			$data['width_latest'] = 350;
		}
        if (isset($this->request->post['height_latest'])) {
			$data['height_latest'] = $this->request->post['height_latest'];
		} elseif (!empty($module_info)) {
			$data['height_latest'] = $module_info['height_latest'];
		} else {
			$data['height_latest'] = 450;
		}

        /* new changes */
        if (isset($this->request->post['width_bestseller'])) {
            $data['width_bestseller'] = $this->request->post['width_bestseller'];
        } elseif (!empty($module_info)) {
            $data['width_bestseller'] = $module_info['width_bestseller'];
        } else {
            $data['width_bestseller'] = 350;
        }
        if (isset($this->request->post['height_bestseller'])) {
            $data['height_bestseller'] = $this->request->post['height_bestseller'];
        } elseif (!empty($module_info)) {
            $data['height_bestseller'] = $module_info['height_bestseller'];
        } else {
            $data['height_bestseller'] = 450;
        }

        if (isset($this->request->post['width_popular'])) {
            $data['width_popular'] = $this->request->post['width_popular'];
        } elseif (!empty($module_info)) {
            $data['width_popular'] = $module_info['width_popular'];
        } else {
            $data['width_popular'] = 350;
        }
        if (isset($this->request->post['height_popular'])) {
            $data['height_popular'] = $this->request->post['height_popular'];
        } elseif (!empty($module_info)) {
            $data['height_popular'] = $module_info['height_popular'];
        } else {
            $data['height_popular'] = 450;
        }

        if (isset($this->request->post['width_special'])) {
            $data['width_special'] = $this->request->post['width_special'];
        } elseif (!empty($module_info)) {
            $data['width_special'] = $module_info['width_special'];
        } else {
            $data['width_special'] = 350;
        }
        if (isset($this->request->post['height_special'])) {
            $data['height_special'] = $this->request->post['height_special'];
        } elseif (!empty($module_info)) {
            $data['height_special'] = $module_info['height_special'];
        } else {
            $data['height_special'] = 450;
        }

        if (isset($this->request->post['width_featured'])) {
            $data['width_featured'] = $this->request->post['width_featured'];
        } elseif (!empty($module_info)) {
            $data['width_featured'] = $module_info['width_featured'];
        } else {
            $data['width_featured'] = 350;
        }
        if (isset($this->request->post['height_featured'])) {
            $data['height_featured'] = $this->request->post['height_featured'];
        } elseif (!empty($module_info)) {
            $data['height_featured'] = $module_info['height_featured'];
        } else {
            $data['height_featured'] = 450;
        }


        if (isset($this->request->post['width_category'])) {
            $data['width_category'] = $this->request->post['width_category'];
        } elseif (!empty($module_info)) {
            $data['width_category'] = $module_info['width_category'];
        } else {
            $data['width_category'] = 350;
        }
        if (isset($this->request->post['height_category'])) {
            $data['height_category'] = $this->request->post['height_category'];
        } elseif (!empty($module_info)) {
            $data['height_category'] = $module_info['height_category'];
        } else {
            $data['height_category'] = 450;
        }

        /* //new changes */

        /* new variables */
        if (isset($this->request->post['status_latest'])) {
            $data['status_latest'] = $this->request->post['status_latest'];
        } elseif (!empty($module_info)) {
            $data['status_latest'] = $module_info['status_latest'];
        } else {
            $data['status_latest'] = 5;
        }

        if (isset($this->request->post['status_bestseller'])) {
            $data['status_bestseller'] = $this->request->post['status_bestseller'];
        } elseif (!empty($module_info)) {
            $data['status_bestseller'] = $module_info['status_bestseller'];
        } else {
            $data['status_bestseller'] = 5;
        }

        if (isset($this->request->post['status_popular'])) {
            $data['status_popular'] = $this->request->post['status_popular'];
        } elseif (!empty($module_info)) {
            $data['status_popular'] = $module_info['status_popular'];
        } else {
            $data['status_popular'] = 5;
        }

        if (isset($this->request->post['status_special'])) {
            $data['status_special'] = $this->request->post['status_special'];
        } elseif (!empty($module_info)) {
            $data['status_special'] = $module_info['status_special'];
        } else {
            $data['status_special'] = 5;
        }

        if (isset($this->request->post['status_featured'])) {
            $data['status_featured'] = $this->request->post['status_featured'];
        } elseif (!empty($module_info)) {
            $data['status_featured'] = $module_info['status_featured'];
        } else {
            $data['status_featured'] = 5;
        }


        if (isset($this->request->post['status_category'])) {
            $data['status_category'] = $this->request->post['status_category'];
        } elseif (!empty($module_info)) {
            $data['status_category'] = $module_info['status_category'];
        } else {
            $data['status_category'] = 5;
        }


        if (isset($this->request->post['order_latest'])) {
            $data['order_latest'] = $this->request->post['order_latest'];
        } elseif (!empty($module_info)) {
            $data['order_latest'] = $module_info['order_latest'];
        } else {
            $data['order_latest'] = 1;
        }
        if (isset($this->request->post['order_bestseller'])) {
            $data['order_bestseller'] = $this->request->post['order_bestseller'];
        } elseif (!empty($module_info)) {
            $data['order_bestseller'] = $module_info['order_bestseller'];
        } else {
            $data['order_bestseller'] = 2;
        }

        if (isset($this->request->post['order_popular'])) {
            $data['order_popular'] = $this->request->post['order_popular'];
        } elseif (!empty($module_info)) {
            $data['order_popular'] = $module_info['order_popular'];
        } else {
            $data['order_popular'] = 3;
        }

        if (isset($this->request->post['order_special'])) {
            $data['order_special'] = $this->request->post['order_special'];
        } elseif (!empty($module_info)) {
            $data['order_special'] = $module_info['order_special'];
        } else {
            $data['order_special'] = 4;
        }

        if (isset($this->request->post['order_featured'])) {
            $data['order_featured'] = $this->request->post['order_featured'];
        } elseif (!empty($module_info)) {
            $data['order_featured'] = $module_info['order_featured'];
        } else {
            $data['order_featured'] = 4;
        }


        if (isset($this->request->post['id_category1'])) {
            $data['id_category1'] = $this->request->post['id_category1'];
        } elseif (!empty($module_info)) {
            $data['id_category1'] = $module_info['id_category1'];
        } else {
            $data['id_category1'] = 20;
        }
        if (isset($this->request->post['id_category2'])) {
            $data['id_category2'] = $this->request->post['id_category2'];
        } elseif (!empty($module_info)) {
            $data['id_category2'] = $module_info['id_category2'];
        } else {
            $data['id_category2'] = 18;
        }
        if (isset($this->request->post['id_category3'])) {
            $data['id_category3'] = $this->request->post['id_category3'];
        } elseif (!empty($module_info)) {
            $data['id_category3'] = $module_info['id_category3'];
        } else {
            $data['id_category3'] = 24;
        }
        if (isset($this->request->post['id_category4'])) {
            $data['id_category4'] = $this->request->post['id_category4'];
        } elseif (!empty($module_info)) {
            $data['id_category4'] = $module_info['id_category4'];
        } else {
            $data['id_category4'] = 34;
        }

        if (isset($this->request->post['columns_bestseller'])) {
            $data['columns_bestseller'] = $this->request->post['columns_bestseller'];
        } elseif (!empty($module_info)) {
            $data['columns_bestseller'] = $module_info['columns_bestseller'];
        } else {
            $data['columns_bestseller'] = 1;
        }
        if (isset($this->request->post['columns_popular'])) {
            $data['columns_popular'] = $this->request->post['columns_popular'];
        } elseif (!empty($module_info)) {
            $data['columns_popular'] = $module_info['columns_popular'];
        } else {
            $data['columns_popular'] = 1;
        }
        if (isset($this->request->post['columns_special'])) {
            $data['columns_special'] = $this->request->post['columns_special'];
        } elseif (!empty($module_info)) {
            $data['columns_special'] = $module_info['columns_special'];
        } else {
            $data['columns_special'] = 1;
        }

        if (isset($this->request->post['columns_featured'])) {
            $data['columns_featured'] = $this->request->post['columns_featured'];
        } elseif (!empty($module_info)) {
            $data['columns_featured'] = $module_info['columns_featured'];
        } else {
            $data['columns_featured'] = 1;
        }

        /* //new variables */


        if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/isotope.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/isotope')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
		
		if (!$this->request->post['width_latest']) {
			$this->error['width_latest'] = $this->language->get('error_width');
		}
		
		if (!$this->request->post['height_latest']) {
			$this->error['height_latest'] = $this->language->get('error_height');
		}

        /* new changes */
        if (!$this->request->post['width_bestseller']) {
            $this->error['width_bestseller'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height_bestseller']) {
            $this->error['height_bestseller'] = $this->language->get('error_height');
        }

        if (!$this->request->post['width_popular']) {
            $this->error['width_popular'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height_popular']) {
            $this->error['height_popular'] = $this->language->get('error_height');
        }
        if (!$this->request->post['width_special']) {
            $this->error['width_special'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height_special']) {
            $this->error['height_special'] = $this->language->get('error_height');
        }

        if (!$this->request->post['width_featured']) {
            $this->error['width_featured'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height_featured']) {
            $this->error['height_featured'] = $this->language->get('error_height');
        }


        if (!$this->request->post['width_category']) {
            $this->error['width_category'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height_category']) {
            $this->error['height_category'] = $this->language->get('error_height');
        }


        /* //new changes */


        return !$this->error;
	}
}