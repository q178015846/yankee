<?php
class ControllerCommonWxapi extends Controller {
	
	public function index(){
		
		$wx_config = $this->getAccessToken();
		$this->wx = new Wxapi($wx_config);
		$wx_new_config = $this->wx->getToken();

		$this->session->data['access_token'] = $wx_new_config['access_token'];
		$this->session->data['expires_time'] = $wx_new_config['expires_time'];

		$access_token = $wx_new_config['access_token'];

		var_dump($this->wx->generateQRCode("http://www.baidu.com"));

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