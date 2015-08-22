<?php
class ControllerCommonHome extends Controller {
	public function index() {

		if(!isset($this->request->get['code'])){
			exit("用户未搜权");
		}
		$wx_config = $this->getAccessToken();
		$this->wx = new Wxapi($wx_config);
		$openid_data = $this->wx->getOpenId($this->request->get['code']);
		//验证是否已经登录过
		if(!$this->doLogin($openid_data)){

		}

		
		//print_r($userinfo);


		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}

	//获取accesstoken
	protected function getAccessToken()
	{
		$this->load->library('wxapi');
		if(isset($this->session->data['access_token'])&&isset($this->session->data['expires_time'])){
			$wx_config['access_token'] = $this->session->data['access_token'];
			$wx_config['expires_time'] = $this->session->data['expires_time'];
		}else{
			unset($this->session->data['access_token']);
			unset($this->session->data['expires_time']);
			$wx_config['access_token'] = "";
			$wx_config['expires_time'] = 0;
		}
	/*	$this->wx = new Wxapi($wx_config);
		$wx_new_config = $this->wx->getToken();

		$this->session->data['access_token'] = $wx_new_config['access_token'];
		$this->session->data['expires_time'] = $wx_new_config['expires_time'];

		return $wx_new_config['access_token'];*/
		return $wx_config;
	}


	//登录并注册
	protected function doLogin($openid_data,$password = "123456")
	{
		$this->event->trigger('pre.customer.login');
		$email = $openid_data->openid."@beyankee.com";

		// Check if customer has been approved.
		$this->load->model('account/customer');
		$customer_info = $this->model_account_customer->getCustomerByEmail($email);

		if (!$customer_info) {
			//自动注册
			$this->load->library('wxapi');
			$wx_config = $this->getAccessToken();
			$this->wx = new Wxapi($wx_config);
			$userinfo = $this->wx->getUserInfo($openid_data->access_token,$openid_data->openid);
			$data['customer_group_id'] = 1;
			$data['telephone'] = "13602416028";
			$data['fullname'] = $userinfo->nickname;
			$data['email'] = $email;
			$data['password'] = $password;
			$data['newsletter'] = 0;
			$customer_id = $this->model_account_customer->addCustomer($data);

			$this->customer->login($email, $password);

			unset($this->session->data['guest']);

			// Add to activity log
			$this->load->model('account/activity');

			$activity_data = array(
				'customer_id' => $customer_id,
				'name'        => $this->request->post['fullname']
			);

			$this->model_account_activity->addActivity('register', $activity_data);

			//$this->response->redirect($this->url->link('account/success'));
		}

		if (!$this->error) {
			if (!$this->customer->login($email, $password)) {
				return false;
				//$this->error['warning'] = $this->language->get('error_login');
			} else {
				$this->event->trigger('post.customer.login');
				return true;
			}
		}

		//return !$this->error;
		return false;

	}

}