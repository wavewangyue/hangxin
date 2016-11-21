<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
	int pagenum = 6;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html style="overflow:auto;overflow-x:hidden">
  <head>
    <base href="<%=basePath%>">
    
    <title>用户行为监测</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>

	<script type="text/javascript">
	</script>
  </head>
  
  <body>
    <body onload="indexerinit(<%=pagenum%>)">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12" style="width:100%">
			<jsp:include page="include/indexer.jsp" />
			<div style="text-align:center;padding:2em;font-family:微软雅黑;font-size:1.2em;color:white;width:100%;background-color:#6d1d35">
				<span style="font-weight:bold;font-size:1.4em">航信用户行为监测Demo演示说明</span><br>
				<br>
				用户在交互页面中点击按钮，行为会被系统所记录<br>
				系统所记录的用户的行为(类型/数量/ip地址)在下方监控页面给予统计与展示<br>
				监控页面保持实时更新<br>
				<br>
				页面组件与所产生事件名称对照如下<br>
				"预订"按钮：book-button<br>
				"详情"按钮：info-button<br>
				"搜索"按钮：search<br>
				"国际/国内"：domestic<br>
				"单程/往返"：oneway<br>
				"启程/返回日期"：checkdate<br>
				表单中倒三角按钮：sort<br>
				<br>
			</div>
			<iframe id="mypage" style="width:100%;height:100%" src="http://behavior.hangxin.act.tunnel.qydev.com/flight_demo"></iframe>
			<iframe id="mypage" style="width:100%;height:100%" src="http://behavior.hangxin.act.tunnel.qydev.com/flight_chart"></iframe>
		</div>
	</div>
</div>

  </body>
  </body>
</html>
