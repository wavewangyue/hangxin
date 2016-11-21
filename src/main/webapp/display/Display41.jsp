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
	
		var pagenum = "41";
		
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
								主题发现模块架构
							</h3>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkred"><Strong>输入 </Strong></a>本体知识库（酒店数据、评论数据）
							</p>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkorange"><Strong>输出 </Strong></a>从数据中发现的主题，提供初步的主题分类策划（机器）
							</p>
							<p style="margin-top:30px;margin-left:0px;">
								<a style="font-size:25px;color:darkgreen"><Strong>所需研究 </Strong></a>ICTCLAS中文分词工具、PLSA主题模型、EM算法
							</p>
							<img src="display/img/pic207.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								主题规则
							</h3>
							<img src="display/img/pic106.png" />
							<p style="margin-top:20px">
								机票数据：人工干预
							</p >
							<p style="margin-top:20px">
								酒店数据：人工干预+自动生成
							</p>
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								基本规则
							</h3>
							<p style="margin-top:20px">
								人工干预
							</p>
							<p style="margin-top:20px">
								用统计的方法生成
							</p>
							<p style="margin-top:20px">
								根据用户出行的频次、往返地、停留时间、折扣率、舱位等统计信息，生成机票主题
							</p>
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkgreen">
								扩展规则
							</h3>
							<p style="margin-top:20px">
								自动生成
							</p>
							<p style="margin-top:20px">
								更强的约束条件和更明确的阈值
							</p>
							<p style="margin-top:20px">
								使用主题模型算法，能够很好的从评论数据中构建主题
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
