<?php
class ControllerCommonWxapi extends Controller {
	
	public function index(){
		
		$wx_config = $this->getAccessToken();
		$this->wx = new Wxapi($wx_config);
		$wx_new_config = $this->wx->getToken();

		$this->session->data['access_token'] = $wx_new_config['access_token'];
		$this->session->data['expires_time'] = $wx_new_config['expires_time'];

		$access_token = $wx_new_config['access_token'];

		var_dump($this->doLogin("178015846@qq.com","i7jhcev21t"));

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

	//登录
	protected function doLogin($email,$password)
	{
		$this->event->trigger('pre.customer.login');
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