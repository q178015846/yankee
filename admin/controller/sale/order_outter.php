<?php
class ControllerSaleOrderOutter extends Controller {
	//发货清单
	public function index()
	{
		$data['title'] = date("Y-m-d",time())." 发货清单";
		if ($this->request->server['HTTPS']) {
			$data['base'] = HTTPS_SERVER;
		} else {
			$data['base'] = HTTP_SERVER;
		}
		$this->load->model('sale/order');
		$data['orders'] = array();
		$url = '';

		$filter_date_added = '';
		$data['date_added'] = $filter_date_added;

		$filter_data = array(	
			'filter_order_status'  => 3,
			'filter_date_added'    => $filter_date_added,
		);
		//$order_total = $this->model_sale_order->getTotalOrders($filter_data);
		$data['selected'] = array();
		$data['logged'] = true;
		$this->load->library('wxapi');
		$this->wx = new Wxapi();
		//加载微信JS-SDK
		$signPackage = $this->wx->GetSignPackage();
		$data['signPackage'] = $signPackage;
		$data['deliveryOrderList'] =  $this->url->link('sale/order_outter/deliveryOrderList', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$results = $this->model_sale_order->getOrders($filter_data);
		$data['text_no_results'] = "无相关结果";
		foreach ($results as $result) {
			$data['orders'][] = array(
				'order_id'      => $result['order_id'],
				'customer'      => $result['customer'],
				'status'        => $result['status'],
				'total'         => $this->currency->format($result['total'], $result['currency_code'], $result['currency_value']),
				'date_added'    => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'date_modified' => date($this->language->get('date_format_short'), strtotime($result['date_modified'])),
				'shipping_code' => $result['shipping_code'],
				'view'          => $this->url->link('sale/order/info', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'] . $url, 'SSL'),
				'edit'          => $this->url->link('sale/order/edit', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'] . $url, 'SSL'),
				'delete'        => $this->url->link('sale/order/delete', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'] . $url, 'SSL'),
				'deliveryMsg'        => $this->url->link('sale/order/deliveryMsg', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'] . $url, 'SSL'),
			);
		}
		$this->response->setOutput($this->load->view('sale/send_order_list.tpl', $data));
	}

	//发送发货清单给管理员
	public function deliveryOrderList()
	{
		//看是否从回调地址跳转过来的
		$this->load->library('wxapi');
		$this->wx = new Wxapi();
		$data["title"] = date('Y-m-d',time())." 发货清单";
		$data["description"] = date('Y-m-d',time())." 发货清单";
		$data["url"] = $this->url->link('sale/order_outter', 'token=' . $this->session->data['token'], 'SSL');
		$data["picurl"] = "http://120.24.157.131/yankee/admin/view/image/logo.png";
		//$openids = ['oCrCkwElKC4YuFiAYe0EvPKa-OEg','oCrCkwJz4TVqPrm3HX2uIgc5VxIw','oCrCkwD9SmF4c17Otl4t84PQEeZE','oCrCkwEKOb5HB34sivijb_cmEorw'];
		$openids = ['oCrCkwElKC4YuFiAYe0EvPKa-OEg'];
		foreach ($openids as $v) {
			$result = $this->wx->sendTxtImgMsg($v,$data);
			if($result->errmsg != "ok"){
	       		$this->response->redirect($this->url->link('error/not_found', 'token=' . $this->session->data['token'], 'SSL'));
	       	}
		}
		$this->response->redirect($this->url->link('sale/order', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		//$result = $this->wx->sendTxtImgMsg("oCrCkwElKC4YuFiAYe0EvPKa-OEg",$data);
		//var_dump($result);
		/*if($result->errmsg == "ok"){
       		$this->response->redirect($this->url->link('sale/order', 'token=' . $this->session->data['token'] . $url, 'SSL'));
       	}else{
       		$this->response->redirect($this->url->link('error/not_found', 'token=' . $this->session->data['token'], 'SSL'));
       	}*/

	}
}