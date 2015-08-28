<?php

define("TOKEN", "yaoyao20150805");

$wechatObj = new Wxconnect();
$wechatObj->responseMsg();

class Wxconnect
{
    public function valid()
    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            echo $echoStr;
            exit;
        }
    }


    //关注后答复
    public function responseMsg()
    {
        //get post data, May be due to the different environments  
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
          //extract post data  
        if (!empty ($postStr)) {
            $postObj = simplexml_load_string($postStr,'SimpleXMLElement',LIBXML_NOCDATA);
            $fromUsername = $postObj->FromUserName;  
            $toUsername = $postObj->ToUserName;  
            $keyword = trim($postObj->Content);  
            $Event = trim($postObj->Event);  
            $time = time();  
            $textTpl = "<xml>  
                        <ToUserName><![CDATA[%s]]></ToUserName>  
                        <FromUserName><![CDATA[%s]]></FromUserName>  
                        <CreateTime>%s</CreateTime>  
                        <MsgType><![CDATA[%s]]></MsgType>  
                        <Content><![CDATA[%s]]></Content>  
                        <FuncFlag>0</FuncFlag>  
                        </xml>"; 
        }

         //测试事件推送  
        if($Event=="subscribe"){  
            $contentStr = "欢迎关注YANKEE CANDLE香薰体验馆公众平台!";  
            $msgType = "text";  
            $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);  
            echo $resultStr;  
        } 
    }

    private function checkSignature()
    {
       // you must define TOKEN by yourself
        if (!defined("TOKEN")) {
            throw new Exception('TOKEN is not defined!');
        }
        
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];
                
        $token = TOKEN;
        $tmpArr = array($token, $timestamp, $nonce);
        // use SORT_STRING rule
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );
        
        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }
}
?>