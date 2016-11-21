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
	
		var pagenum = "81";
		
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
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								背景
							</h3>
							<p>
								个性化推荐是根据用户的兴趣特点和购买行为，向用户推荐用户感兴趣的信息和商品。我们每个人在日常生活中都会有意无意的产生很多需要和诉求，包括显性需求与潜在需求。显性需求易被用户自身、市场、企业察觉和认知，而潜在需求，是指用户虽然有明确意识的欲望，但由于种种原因没有明确显露，不易被察觉。如果可以发掘出用户的潜在需求并加以满足。
							</p>
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								场景1：个性化邮件
							</h3>
							<p>
								航空预定网站会出于某些原因（如身份验证、出票提醒等）为用户发送邮件，邮件中会夹杂一定的广告信息，但是由于广告缺乏针对性，鲜有用户认真阅读广告内容，更鲜有用户产生购买行为。
							</p>
							<h3 style="color:darkblue">
								问题
							</h3>
							<p>
								如何针对不同类型的用户发掘其潜在需求，为其发送包含个性化的广告内容的邮件
							</p>
							<h3 style="color:darkblue">
								方案
							</h3>
							<p>
								根据用户在订票网站中的历史行为或者其他网站中获得的跨域信息（比如微博中的信息）中提取出来的“标签”，来预测其喜好，推荐与其喜好相匹配的产品。
							</p>
							<img src="display/img/picture8-1-1.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								场景2：个性化营销
							</h3>
							<p>
								影响力越大的网络用户拥有着越为良好的宣传价值，如果可以对此类影响力较大的用户的潜在需求加以预测与满足，那么借助其影响力就可能会给公司与产品带来巨大的宣传价值（比如章子怡于5月13日发表了关于2046号国航航班的微博，可以给她赠送相关周边产品）
							</p>
							<h3 style="color:darkred">
								问题
							</h3>
							<p>
								是否可以对网络中的类似信息加以监控与及时反馈，从而把握住良好的营销与宣传机会
							</p>
							<h3 style="color:darkred">
								方案
							</h3>
							<p>
								此设定目前看来较为理想但也较为遥远，在以上提出的几个技术方案得到实现之后，积累下一定的数据基础，或许对此可以有后续可行的计划							
							</p>
							<img src="display/img/picture8-1-2.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 >
								结论
							</h3>
							<p>
								个性化营销所产生的效益卓然，但是具体实现具有很多不确定性与复杂性，需要按照具体的情况进行具体分析。如果在未来数据基础与经验积累充足的条件下，应可以得到较好的结果。
							</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
