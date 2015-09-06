<!DOCTYPE>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>抽奖</title>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script src="catalog/view/javascript/lottery/rotate/js/Rotate.js"></script>
<style>
*{padding:0; margin:0;}
.lotteryMain{ width:100%; padding:20px 0; }
.lotteryBg{ width:520px; height:520px; margin:0 auto; background:url(catalog/view/javascript/lottery/rotate/images/lotteryBg.jpg) no-repeat; position:relative; overflow:hidden;}
#run{ width:153px; height:214px; position:absolute; left:50%; top:50%;  margin-left:-76px; margin-top:-107px; z-index:1; transform:rotate(0deg); -ms-transform:rotate(0deg); }
#btn_run{ width:125px; height:125px; background:url(catalog/view/javascript/lottery/rotate/images/btn_start.png) no-repeat; border:none; outline:none; position:absolute; left:50%; top:50%; margin-left:-62px; margin-top:-62px; z-index:2;cursor:pointer;}
</style>
</head>

<body>
<section class="lotteryMain">
	<div class="lotteryBg">
    	<img id="run" src="catalog/view/javascript/lottery/rotate/images/start.png" />
        <input id="btn_run" type="button" value="" />
    </div>
</section>  
<script>
$(function(){ 
     $("#btn_run").click(function(){
		$("#btn_run").attr('disabled',true).css("cursor","default"); 
        lottery(); 
    });
}); 
function lottery(){ 
    $.ajax({ 
        type: 'get', 
        url: 'catalog/view/javascript/lottery/rotate/json.js', 
        dataType: 'json', 
        cache: false, 
        error: function(){return false;}, 
        success:function(obj){
				$("#run").rotate({ 
					duration:3000, //转动时间 
					angle: 0, //默认角度
					animateTo:360*6+obj.rotate, //转动角度 
					easing: $.easing.easeOutSine, 
					callback: function(){ 
						alert(obj.results); 
						$("#btn_run").attr('disabled',false).css("cursor","pointer"); 
					} 
				});
        } 
    }); 
};
	
</script>  
</body>
</html>
