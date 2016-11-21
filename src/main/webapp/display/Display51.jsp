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
	
		var pagenum = "51";
		
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
								组合推荐模块架构
							</h3>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkred"><Strong>输入 </Strong></a>本体知识库（前端展示所需）、主题发现模块（初步主题划分 与 理论方法支持）
							</p>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkorange"><Strong>输出 </Strong></a>最终给用户推荐的机票酒店列表，前端展示给用户
							</p>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkgreen"><Strong>所需研究 </Strong></a>主题分类策略讨论（融合机器+人工）
							</p>
							<img style="margin-bottom:50px" src="display/img/pic006.png" />
						</div>
					</div>
				</li>
				
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
