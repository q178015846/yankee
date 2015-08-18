<?php
class Wxapi {
	private $wx_appid = "wxac5ef703439e3edd";
	private $wx_appsecret = "2b0c0ecec7479bc8c0f6ee29cd1763e0";
	//appid
	//private $wx_appid = "wxdd144819072bd8ca";
	//appsecret
	//private $wx_appsecret = "4OVTtcggXhHEkU30LRQFhQJdsQZ2-wFdte62IRQ5w41sb8S9YXIqQkjKB_qyd-y7";
	private $access_token;
	//private $baseUrl = "https://qyapi.weixin.qq.com/cgi-bin/";
	private $baseUrl = "https://api.weixin.qq.com/cgi-bin/";
	private $wx_config;
	
	public function __construct($wx_config) {
		$this->wx_config = $wx_config;
	}

	//获取token
	public function getToken(){
		//$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$this->wx_appid."&secret=".$this->wx_appsecret;
		if($this->wx_config['expires_time']<=time()){
			$url = $this->baseUrl."token?grant_type=client_credential&appid=".$this->wx_appid."&secret=".$this->wx_appsecret;
			$result = $this->http_request($url);
			$jason_data = "";
			if($result != null){
				$jason_data = json_decode($result);
				if(isset($jason_data->access_token)){
					$this->wx_config['access_token'] = $jason_data->access_token;
					$this->wx_config['expires_time'] = time()+$jason_data->expires_in;
				}else{

				}
			}
		}
		$this->access_token = $this->wx_config['access_token'];
		return $this->wx_config;

		//$this->session->data['jason_result'] = $jason_result;
		
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

	public function sendModelNotify()
	{
		$set_tpl_url = $this->accessTokenUrl("message/template/send");
		$post_data_settpl = '  {
           "touser":"oCrCkwElKC4YuFiAYe0EvPKa-OEg",
           "template_id":"z23-9o5oSUJkMP7xU39cxkg9Kr1yM8pR-1XcJ8MRkLA",
           "url":"http://weixin.qq.com/download",
           "topcolor":"#FF0000",
           "data":{}
       	}';

       	$result = $this->http_request($set_tpl_url, $post_data_settpl);

       //$get_tpl_url = $this->accessTokenUrl("template/api_add_template");
       	

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

	//获取用户登录授权
	public function doLogin()
	{
		$url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->wx_appid."&redirect_uri=http://www.baidu.com&response_type=code&scope=snsapi_userinfo#wechat_redirect";
		header("Location: ".$url);
	}


	//创建菜单
	public function createMenu()
	{
		$url = $this->accessTokenUrl("menu/create");
		$go_url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->wx_appid."&redirect_uri=120.24.157.131/yankee/&response_type=code&scope=snsapi_userinfo#wechat_redirect";
		$post_data = ' {
		     "button":[
		     {	
		          "type":"click",
		          "name":"今日歌曲",
		          "key":"V1001_TODAY_MUSIC"
		      },
		      {
		           "name":"菜单",
		           "sub_button":[
		           {	
		               "type":"view",
		               "name":"回调",
		               "url":"'.$go_url.'"
		            },
		            {
		               "type":"view",
		               "name":"视频",
		               "url":"http://v.qq.com/"
		            },
		            {
		               "type":"click",
		               "name":"赞一下我们",
		               "key":"V1001_GOOD"
		            }]
		       }]
		 }';
		 $this->http_request($url, $post_data);
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