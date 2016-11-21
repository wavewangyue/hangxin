<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
	int pagenum = 5;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html style="overflow:auto;overflow-x:hidden">
  <head>
    <base href="<%=basePath%>">
    
    <title>交易安全管理</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>

	<script type="text/javascript">
	</script>
  </head>
  
  <body>
    <body onload="indexerinit(<%=pagenum%>)">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<jsp:include page="include/indexer.jsp" />
			<iframe style="width:100%;height:100%" src="http://121.201.15.171:8080/index.html#/dashboard.html"></iframe>
		</div>
	</div>
</div>

  </body>
  </body>
</html>
