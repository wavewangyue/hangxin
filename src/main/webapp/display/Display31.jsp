<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/init.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>展示·TravelSky</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="This is my page">
	<script src="js/d3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>  
	<script src="js/jquery.js"></script>   
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
	
		var pagenum = "31";
		
		function init(){
			setpage(pagenum);
		}
	</script>
  </head>
  
  <body onload="init()">
	<div class="container-fluid">
	<div class="row-fluid">
		<jsp:include page="Index.jsp" />
		<div class="span9" style="height:100%">
			<ul class="thumbnails" style="font-family:微软雅黑;margin-top:50px;margin-left:40px;font-size:18px">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								Cookie
							</h3>
							<p>
								作为会话跟踪技术，Cookie跟踪和记录了所有的用户会话信息。而会话信息中包含了大量的用户行为信息，如点击行为、搜索行为、浏览行为、互动行为、网购行为等。这些行为信息对挖掘用户偏好，构建用户属性，勾勒用户画像有很高的实用价值。通过Cookie分析并构建用户属性，能够实现更高效、准确的推荐效果。
							</p>
							<img src="display/img/pic203.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								Retargeting
							</h3>
							<p>
								访客找回
							</p>
							<p>
								Retargeting使用Cookie获取用户行为，并将其转化为精准广告。用户注册和登录电商网站A，行为记录留在于A网站的Cookie中。一段时间后，用户访问与A网站毫不相干的网站B。在此之前，B网站与A网站签订了投放广告的协议，允许A网站在B网站投放广告。当用户进入B网站的页面时，触发由A网站要求嵌入B网站投放广告的JS，B网站服务器从用户Cookie中解析出用户之前浏览A网站时存入的用户身份数据。
							</p>
							<img src="display/img/pic8.png" />
							<h3>
								目的
							</h3>
							<p>
								B网站（我们）服务器从用户Cookie中解析出用户之前浏览A网站（淘宝）时存入的用户身份数据
							</p>
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								获得广告支持
							</h3>
							<p>
								通过在广告网站上嵌入电商网站的JS代码
							</p>
							<p>
								需要与电商网站进行商务合作
							</p>
							<img src="display/img/pic9.png" />								
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								用户建模
							</h3>
							<p style="margin-top:20px">
								将广告嵌入我们的系统中，在与电商网站取得商务合作之后，当用户登录系统时，我们就可以获得电商网站根据用户在其网站浏览的历史记录获取用户记录或者用户标签，再将用户信息进行建模等后续处理，从而就可以用于我们的主题匹配中，进而对用户进行主题推荐
							</p>
							<img src="display/img/pic202.png" />								
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
