<%@ page language="java" import="java.util.*,act.hangxin.service.*" pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
	int pagenum = 1;
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页·ACTHangxin</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>

  </head>

  <body onload="indexerinit(<%=pagenum%>)" style="background-image:url(image/bg1.png);background-size:100%">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<jsp:include page="include/indexer.jsp" />
			<p style="margin-top:10%;margin-left:10%;font-size:60px;color:lightblue">
				欢迎使用
			</p>
			<p style="margin-top:3%;margin-left:10%;font-size:30px;font-family: 微软雅黑;color:lightblue">
				<Strong>ACT航信项目组 原型系统</Strong>
			</p>
			<p style="margin-top:6%;margin-left:10%;font-size:40px;color:lightblue">
				Welcome to the 
			</p>
			<p style="margin-top:2%;margin-left:10%;font-size:20px;color:lightblue">
				Prototype System of Team ACT&Hangxin
			</p>
			<p style="margin-top:2%;margin-left:10%;font-size:20px;color:lightblue">
				Copyright@2016 ACTLib of BUAA
			</p>
			
			<img src="image/logo1.png" style="margin-top:3%;margin-left:10%;width:8%"/>
			<img src="image/logo2.png" style="margin-top:3%;margin-left:2%;width:8%"/>
		</div>
	</div>
</div>

  </body>
</html>
