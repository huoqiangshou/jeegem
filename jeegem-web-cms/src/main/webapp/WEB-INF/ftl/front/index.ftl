<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>youngcms-免费的JAVA CMS-内容管理系统-</title>
<link href="${basePath}/resources/static/three/css/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/resources/static/three/css/index.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/resources/static/three/css/tab.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${basePath}/resources/static/three/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/resources/static/three/js/jquery.Xslider.js"></script>
<script type="text/javascript" src="${basePath}/resources/static/three/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
function setTab(m,n){
 var tli=document.getElementById("menu"+m).getElementsByTagName("li");
 var mli=document.getElementById("piece"+m).getElementsByTagName("ul");
 for(i=0;i<tli.length;i++){
  tli[i].className=i==n?"hover":"";
  mli[i].style.display=i==n?"block":"none";
 }
}
$(function(){
	// 焦点图片水平滚动
	$("#slider1").Xslider({
		// 默认配置
		affect: 'scrollx', //效果  有scrollx|scrolly|fade|none
		speed: 800, //动画速度
		space: 6000, //时间间隔
		auto: true, //自动滚动
		trigger: 'mouseover', //触发事件 注意用mouseover代替hover
		conbox: '.conbox', //内容容器id或class
		ctag: 'div', //内容标签 默认为<a>
		switcher: '.switcher', //切换触发器id或class
		stag: 'a', //切换器标签 默认为a
		current:'cur', //当前切换器样式名称
		rand:false //是否随机指定默认幻灯图片
	});
	
	// 焦点图片垂直滚动
	$("#slider2").Xslider({
		affect:'scrolly',
		ctag: 'div',
		speed:400
	});
	
	// 焦点图片淡隐淡现
	$("#slider3").Xslider({
		affect:'fade',
		ctag: 'div'
	});
	
	// 选项卡
	$("#slider4").Xslider({
		affect:'none',
		ctag: 'div',
		speed:10
	});
	
	jQuery(".focusBox").hover(function(){ jQuery(this).find(".prev,.next").stop(true,true).fadeTo("show",0.2) },function(){ jQuery(this).find(".prev,.next").fadeOut() });
	jQuery(".focusBox").slide({ mainCell:".pic",effect:"fold", autoPlay:true, delayTime:100, trigger:"click"});//banner图
});
</script>
</head>

<body>
<div class="wrap_top">
    	<div class="top">
        	<div class="logo"><a href="#"><img src="${basePath}/resources/static/three/images/logo.png" width="200" height="74" /></a></div>
            <div id="navMenu">
				<ul class="menu1">
				       <#if articleTypes?exists && articleTypes?size gt 0 >
							<#list articleTypes as articleType>
				       			<li><a href="http://admin.youngcms.com/admin/index" target="_black">${articleType.typeName}</a>
 <ul>
										 <li><a href="/channel/basic">基础语言</a></li>
										 <li><a href="/channel/design">设计创作</a></li>
										 <li><a href="/channel/databases">数据库</a></li>
										 <li><a href="/channel/operation">系统运维</a></li>
										 <li><a href="/channel/front">前端开发</a></li>
										 <li><a href="/channel/server">后端开发</a></li>
										 <li><a href="/channel/app">移动开发</a></li>
								</ul>
				       			</li>
					   		</#list>
                     	</#if>
                 </ul>
			</div>
        </div>
</div>
<script type="text/javascript">
		sfHover = function() {
		var sfEls = document.getElementById("navMenu").getElementsByTagName("li");
		for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
		this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
		this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
		}
		}
		if (window.attachEvent) window.attachEvent("onload", sfHover);
</script>
     
    <!--  <div class="wrap_banner">
     	<div class="banner">
     	<advertList advertPositionId=2 size=1;averts,advertPosition>
		   <list averts as avert>
		      <img src="{avert.imgUrl}" width="100%" height="439" />
		   </list>
		</advertList>
     	</div>
     </div> -->
     
    <div class="banner">
			<div class="focusBox">
				<ul class="pic">
					   
					   <#if articles?exists && articles?size gt 0 >
							<#list articles as article>
					   		<#if article.slide==1>
				       			<li><a href="#"><img src="${imageWebServer}/jeegem/upload/JeeGem/${article.slideImage}" width="100%" height="439" /></a></li>
				       		</#if>
					   		</#list>
                     	</#if>
					   
				</ul>
				<a class="prev" href="javascript:void(0)"></a> <a class="next" href="javascript:void(0)"></a>
				<ul class="hd">
					   <#list articles as article>
					   		<#if article.slide==1>
				       			<li></li>
				       		</#if>
					   </#list>
				</ul>
			</div>
	</div>
      
     <div class="mian">
            <div class="matter1">
            	<div class="left">
                	<div class="info">最新上传</div>
                    <div id="slider3" class="slider">
				<div class="conbox">
					   <#list articles as article>
					   		<#if article.slide==2>
				       			<div><a href="#" title=""><img src="${imageWebServer}/jeegem/upload/JeeGem/${article.slideImage}" width="632" height="210" /></a></div>
				       		</#if>
					   </#list>
			              
				</div>
				<div class="switcher">
				<#assign var = 1 >  
				<#list articles as article>
					   		<#if article.slide==2>
						   		<a href="#" <#if var==1>class="cur" </#if>>${var}</a>
						   		<#assign var = var + 1>
				       		</#if>
				</#list>
				
				</div>
		</div>
                </div>
                <div class="right">
                    <div class="info">IT资讯</div>
                    <div class="content">
                    	 <ul>
							<#list articles as article>
								   		<#if article.slide==3>
									   		<li><a href="/static/three/content/2751.html">${article.title}</a></li>
							       		</#if>
							</#list>
                        </ul>
                    </div>
                  </div>
            </div>
            
		<div style="height:10px;"></div>
            
            <div class="ad2">
	            <a href="#"><img src="http://7u2hth.com1.z0.glb.clouddn.com/1474274239494.jpg" width="1000" height="69" /></a>
            </div>

            <div class="matter5">
					<#list articleTypes as articleType>
					<#if articleType_index<3>
						<div class="news">
		                	<div class="info">
		                        <div class="title">${articleType.typeName}</div>
		                        <div class="more"><a href="/channel/front">+more</a></div>
		               		</div>
		                    <div class="content">
		                    	  <ul>
		                    	    
		                    	    <#list articleType.articles as article>
										 <li>
										   <div class="time">${article.addTime?string("yyyy-MM-dd")}</div>
										   <a href="/static/three/content/2598.html" class="newslist_time" title="#">${article.title}</a>
										 </li>
									</#list>
									
		                          </ul>
		                    </div>
	                    </div>
	                    </#if>
					</#list>
					
					
                
					
            </div>       

			
            
            <div style="height:10px;"></div>
            <div class="ad2">
               <a href="#"><img src="http://7u2hth.com1.z0.glb.clouddn.com/1474188199146.jpg" width="1000" height="69" /></a>
            </div>

			<div class="matter5">
				<#list articleTypes as articleType>
					<#if articleType_index gt 3 && articleType_index lt 7>
						<div class="news">
		                	<div class="info">
		                        <div class="title">${articleType.typeName}</div>
		                        <div class="more"><a href="/channel/front">+more</a></div>
		               		</div>
		                    <div class="content">
		                    	  <ul>
		                    	    
		                    	    <#list articleType.articles as article>
										 <li>
										   <div class="time">${article.addTime?string("yyyy-MM-dd")}</div>
										   <a href="/static/three/content/2598.html" class="newslist_time" title="#">${article.title}</a>
										 </li>
									</#list>
									
		                          </ul>
		                    </div>
	                    </div>
	                    </#if>
					</#list>
					
			</div>
			
            
           
</div>

<div class="bottomwrap">
	<div  class="bottom">
		<ul>
			 
			<li  style="float: left;margin-left: 20px;"><a style="color: white;" href='http://cms.publiccms.com' target='_blank' title='企业网站管理系统'>Publiccms</a></li>
			
			<li  style="float: left;margin-left: 20px;"><a style="color: white;" href='http://www.jc868.com' target='_blank' title='企业网站管理系统'>竞彩</a></li>
			 
		</ul>
	</div>
	<div class="bottom">
		<div class="wenzi">
			youngcms 版权所有 - <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260175299'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/stat.php%3Fid%3D1260175299%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
			<br /> Copyright © 2016-2022 京ICP备12051136号
		</div>
	</div>
</div>
<!-- JiaThis Button BEGIN -->
<script type="text/javascript" src="http://v3.jiathis.com/code/jiathis_r.js?move=0" charset="utf-8"></script>
<!-- JiaThis Button END -->
<!-- UJian Button BEGIN -->
	<script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?type=slide"></script>
<!-- UJian Button END -->


</body>
</html>
