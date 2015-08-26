<?php
class ControllerCommonWxapi extends Controller {
	
	public function index(){
		
		$this->load->library('wxapi');
		$this->wx = new Wxapi();
	

		//var_dump($this->wx->createMenu());

		//加载微信JS-SDK
		$signPackage = $this->wx->GetSignPackage();

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['signPackage'] = $signPackage;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/wxapi.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/wxapi.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/wxapi.tpl', $data));
		}

	}

	//生成菜单
	public function createMenu()
	{
		$this->load->library('wxapi');
		$this->wx = new Wxapi();

		var_dump($this->wx->createMenu());
	}

	//分享订单
	public function shareOrder()
	{
		# code...
	}

	//获取accesstoken
	/*protected function getAccessToken()
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
		return $wx_config;
	}*/

	//登录并注册
	protected function doLogin($email,$password)
	{
		$this->event->trigger('pre.customer.login');

		// Check if customer has been approved.
		$this->load->model('account/customer');
		$customer_info = $this->model_account_customer->getCustomerByEmail($email);

		if (!$customer_info) {
			//自动注册
			$data['customer_group_id'] = 1;
			$data['fullname'] = "rocktest";
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

			$this->response->redirect($this->url->link('account/success'));
		}

		if (!$this->error) {
			if (!$this->customer->login($email, $password)) {
				$this->error['warning'] = $this->language->get('error_login');
			} else {
				$this->event->trigger('post.customer.login');
			}
		}

		return !$this->error;

	}
}