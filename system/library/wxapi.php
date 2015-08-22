<?php
include 'phpqrcode.php';
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
	public function sendTextMsg($text)
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

	//发送图片信息-客服接口
	public function setImgMsg($url)
	{
		$url = $this->accessTokenUrl("message/custom/send");
		$post_msg = '{
		   "touser": "oCrCkwElKC4YuFiAYe0EvPKa-OEg,oCrCkwJz4TVqPrm3HX2uIgc5VxIw",
		   "msgtype":"image",
		    "image":
		    {
		      "media_id":"'.$url.'"
		    }
		}';
		$result = $this->http_request($url,$post_msg);


		return json_decode($result);
	}

	//发送模板信息
	public function sendModelMsg($openid)
	{
		$set_tpl_url = $this->accessTokenUrl("message/template/send");
		$post_data_settpl = '  {
           "touser":"oCrCkwJz4TVqPrm3HX2uIgc5VxIw",
           "template_id":"z23-9o5oSUJkMP7xU39cxkg9Kr1yM8pR-1XcJ8MRkLA",
           "url":"http://weixin.qq.com/download",
           "topcolor":"#FF0000",
           "data":{}
       	}';

       	$result = $this->http_request($set_tpl_url, $post_data_settpl);

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


	//创建菜单
	public function createMenu()
	{
		$url = $this->accessTokenUrl("menu/create");
		$go_url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->wx_appid."&redirect_uri=".urlencode("http://120.24.157.131/yankee/")."&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";
		$post_data = ' {
		     "button":[
		     {	
		          "type":"click",
		          "name":"查看订单",
		          "key":"VIEW_ORDER"
		      },
		      {
		       	  "type":"click",
		          "name":"挑选香薰",
		          "key":"VIEW_GOODS"
		       },{
		           "name":"发现",
		           "sub_button":[
		           {	
		               "type":"view",
		               "name":"优惠券",
		               "url":"'.$go_url.'"
		            },
		            {
		               "type":"view",
		               "name":"Yankee",
		               "url":"http://v.qq.com/"
		            }]
		       }]
		 }';
		 $this->http_request($url, $post_data);
	}

	//新增临时素材
	public function uploadTmpMedia()
	{
		$url = $this->accessTokenUrl("media/upload");

	}

	//获取用户的openid
	public function getOpenId($code)
	{
		//code来换取access_token和openid的url
		$get_accesstoken_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$this->wx_appid."&secret=".$this->wx_appsecret."&code=".$code."&grant_type=authorization_code";
		$get_accesstoken_json = $this->http_request($get_accesstoken_url);
		if(!$get_accesstoken_json){
			return "错误授权";
		}
		$get_accesstoken_data = json_decode($get_accesstoken_json);
		if(isset($get_accesstoken_data->errcode)){
			return $get_accesstoken_data->errmsg;
		}
		return $get_accesstoken_data;

	}

	//生成二维码
	public function generateQRCode($link)
	{
		$errorCorrectionLevel = 'L';//容错级别   
		$matrixPointSize = 6;//生成图片大小 
		$qrcode_path = DIR_UPLOAD."qrcode/";
		$qrcode_name = time();
		//生成二维码图片   
		QRcode::png($link, $qrcode_path.$qrcode_name.'.png', $errorCorrectionLevel, $matrixPointSize, 2);
		/*$logo = 'placeholder.png';//准备好的logo图片   
		$QR = $qrcode_path.$qrcode_name.'.png';//已经生成的原始二维码图   

		if ($logo !== FALSE) {   
		    $QR = imagecreatefromstring(file_get_contents($QR));   
		    $logo = imagecreatefromstring(file_get_contents($logo));   
		    $QR_width = imagesx($QR);//二维码图片宽度   
		    $QR_height = imagesy($QR);//二维码图片高度   
		    $logo_width = imagesx($logo);//logo图片宽度   
		    $logo_height = imagesy($logo);//logo图片高度   
		    $logo_qr_width = $QR_width / 5;   
		    $scale = $logo_width/$logo_qr_width;   
		    $logo_qr_height = $logo_height/$scale;   
		    $from_width = ($QR_width - $logo_qr_width) / 2;   
		    //重新组合图片并调整大小   
		    imagecopyresampled($QR, $logo, $from_width, $from_width, 0, 0, $logo_qr_width,   
		    $logo_qr_height, $logo_width, $logo_height);   
		}   
		//输出图片   
		imagepng($QR, 'helloweixin.png');   
		echo '<img src="helloweixin.png">';  */
	}

	//从微信获取二维码
	public function getQRCodefromWX()
	{
		//获取ticket的url
		$ticket_url = $this->accessTokenUrl("qrcode/create");

		$ticket_post_data = '{"expire_seconds": 5000, "action_name": "QR_SCENE", "action_info": {"scene": {"scene_id": '.time().'}}}';
		$ticket_jason = $this->http_request($ticket_url, $ticket_post_data);
		if($ticket_jason){
			$ticket_data = json_decode($ticket_jason);
			//用ticket换取二维码
			$qrcode_url = "https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=".urlencode($ticket_data->ticket);
			return $qrcode_url;
		}
		return "";
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