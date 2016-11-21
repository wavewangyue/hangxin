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
	
		var pagenum = "22";
		
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
								启动Hadoop程序
							</h3>
							<p>
								Hadoop启动信息
							</p>
							<img src="display/img/pic4.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								HDFS的信息
							</h3>
							<p>
								浏览器中访问主机的50070端口
							</p>
							<p>
								HDFS可用的硬盘空间是725.87GB，剩余空间有391.39GB，以及每个节点的硬盘空间使用情况。三个节点都在正常运行
							</p>
							<img src="display/img/pic5.png" />
							<img src="display/img/pic6.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								Map-Reduce的运行状况
							</h3>
							<p>
								Hadoop集群上--->运行Scrapy作业--->数据存储到HDFS上
							</p>
							<p>
								Running Jobs：当前运行的作业
							</p>
							<p>
								Completed Jobs：已完成的作业
							</p>
							<p>
								统计数据库记录知，共抓取121550个酒店实体，250000用户实体，以及1357714条用户评论
							</p>
							<img src="display/img/pic7.png" />
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
