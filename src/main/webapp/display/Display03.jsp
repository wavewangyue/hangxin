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
	
		var pagenum = "03";
		
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
							<h3 >
								研究内容框架
							</h3>
							<p style="margin-top:50px">
								本课题的研究目的，即提供面向航空预定的<a style="color:darkred">多平台来源数据的整合与关联打包</a>方案，进一步实现<a style="color:darkred">基于主题的组合推荐系统</a>，本文的主要研究内容包括:
							</p >
							<p style="margin-top:50px">
								<a style="font-size:25px;color:darkblue">本体知识库构建 </a>根据旅客历史订单信息、航空公司系统信息、酒店信息，以及项目涉及的业务对象的各类信息，抽取出本体库/知识库
							</p >
							<p style="margin-top:50px">
								<a style="font-size:25px;color:purple">跨域推荐 </a>通过用户建模+机器学习的方式，达到获得用户的行为历史后推测出用户的个人信息（性别、年龄、职业等），再利用其个人信息完成对用户的个性化推荐
							</p >
							<p style="margin-top:50px">
								<a style="font-size:25px;color:darkgreen">主题生成 </a>在大量产品数据中发掘其主题，进行主题分类，目的是建立机票与酒店之间的关联，从而可进一步将其与用户关联起来
							</p >
							<p style="margin-top:50px">
								<a style="font-size:25px;color:brown">基于主题的组合推荐 </a>将主题相关的机票与酒店进行打包，生成带有主题的机票酒店套餐，通过对用户进行建模分析，预测用户会适应的主题，再将具有相应主题内容的机票酒店套餐推荐给用户
							</p >
							<img style="margin-top:50px" src="display/img/pic001.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 >
								系统架构设计
							</h3>
							<p style="margin-top:50px">
								<font style="color:brown">已登录用户</font>通过网站前端中的访问接口访问系统时，数据流向为：
							</p>
							<p style="margin-top:20px">
								<font style="color:brown">（在线）</font>用户-->前端接口-->数据库-->动态打包模块-->前端接口-->用户
							</p>
							<p style="margin-top:20px">
								<font style="color:brown">（离线）</font>前端接口-->数据库-->主题发现模块-->动态打包模块-->前端接口
							</p>
							<p style="margin-top:50px">
								<font style="color:darkblue">未登录用户</font>通过网站前端中的访问接口访问系统时，数据流向为：
							</p>
							<p style="margin-top:20px">
								<font style="color:darkblue">（在线）</font>用户-->前端接口-->数据库-->推荐引擎模块-->前端接口-->用户
							</p>
							<p style="margin-top:20px">
								<font style="color:darkblue">（离线）</font>前端接口-->数据库-->用户建模模块-->动态打包模块-->前端接口
							</p>
							<p style="margin-top:20px">
								系统整体的架构图如下图所示
							</p>
							<img style="margin-top:50px" src="display/img/pic002.png" />
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
