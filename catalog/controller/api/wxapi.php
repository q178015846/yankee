<?php
class ControllerApiWxapi extends Controller {
	
	public function index(){
		$this->load->library('wxapi');
		$this->wx = new Wxapi();

		var_dump($this->wx->sendNotify("老沐你好"));
	}
}