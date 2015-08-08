<?php
class Wxapi {
	//private $wx_appid = "wx37509a11c5293bb3";
	//private $wx_appsecret = "f535d3bf882ebc564980124cce20dff8";
	//appid
	private $wx_appid = "wxdd144819072bd8ca";
	//appsecret
	private $wx_appsecret = "4OVTtcggXhHEkU30LRQFhQJdsQZ2-wFdte62IRQ5w41sb8S9YXIqQkjKB_qyd-y7";
	private $access_token;
	private $baseUrl = "https://qyapi.weixin.qq.com/cgi-bin/";
	
	public function __construct() {
		$this->access_token = $this->getToken();
		
	}

	//获取token
	public function getToken(){
		//$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$this->wx_appid."&secret=".$this->wx_appsecret;
		$url = $this->baseUrl."gettoken?corpid=".$this->wx_appid."&corpsecret=".$this->wx_appsecret;
		$result = $this->http_request($url);
		$jason_data = "";
		if($result != null){
			$jason_data = json_decode($result);
			if(isset($jason_data->access_token)){

			}else{

			}
		}

		//$this->session->data['jason_result'] = $jason_result;
		return $jason_data->access_token;
	}

	//发送文本消息
	public function sendNotify($text)
	{
		//$get_template_url = "https://api.weixin.qq.com/cgi-bin/template/api_add_template?access_token=".$this->access_token;
		$url = $this->accessTokenUrl("message/send");
		$post_msg = '{
		   "touser": "703463",
		   "msgtype": "text",
		   "agentid": "23",
		   "text": {
		       "content": "'.$text.'"
		   },
		   "safe":"0"
		}';
		$result = $this->http_request($url,$post_msg);


		return json_decode($result);
	}

	//userid转换openid接口
	public function qy2oauth($userid,$agentid = 23)
	{
		$url = $this->accessTokenUrl("user/convert_to_openid");
		$post_data = '{
		   "userid": "'.$userid.'",
		   "agentid": "'.$agentid.'"
		}';

		$result = $this->http_request($url, $post_data);

		return json_decode($result);
	}

	//openid转换成userid接口
	public function oauth2qy($openid)
	{
		$url = $this->accessTokenUrl("user/convert_to_userid");
		$post_data = '{
		   "userid": "'.$userid.'",
		   "agentid": "'.$agentid.'"
		}';

		$result = $this->http_request($url, $post_data);

		return json_decode($result);
	}




	//发送请求
	protected function http_request($url, $data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        curl_close($curl);
        return $output;
    }

    //url签名
    protected function accessTokenUrl($middleUrl)
    {
    	return $this->baseUrl.$middleUrl."?access_token=".$this->access_token;
    }
}