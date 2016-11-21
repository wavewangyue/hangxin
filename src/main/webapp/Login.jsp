<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
	int pagenum = 3;
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>
	<script type="text/javascript">
		function reset(basePath){
			document.getElementById("userid").value="";
			user = "";
			window.location.href=basePath+"Login.jsp?user="+user;
		}
		function log(basePath){
			if (document.getElementById("userid").value == ""){
				document.getElementById("alert").style.visibility="visible";
			}else{
				user = document.getElementById("userid").value;
				window.location.href=basePath+"Create.jsp?user="+user;
			}
		}
	</script>
  </head>
  
  <body>
    <body onload="indexerinit(<%=pagenum%>)" style="background-image:url(image/bg4.png);background-size:100%">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<jsp:include page="include/indexer.jsp" />
			<div style="text-align:center;margin-top:10%">
			<p style="font-size:20px;color:gray;font-family: 微软雅黑;">
				<Strong>用户名</Strong>
			</p>
			<form class="form-search" style="margin-top:20px">
				<input id="userid" name="userid" class="input-medium search-query" type="text" style="height:50px;width:200px" onkeydown="if(event.keyCode==13) log('<%=basePath%>')" value=<%=user%> >
			</form>
			<button class="btn btn-large btn-primary" type="button" style="margin-top:20px;" onclick="log('<%=basePath%>')">登录</button>
			<button class="btn btn-large btn-inverse" type="button" style="margin-top:20px;" onclick="reset('<%=basePath%>')">注销</button>
			<div class="alert alert-error" id="alert" style="visibility:hidden;width:150px;margin-left:42%;margin-top:20px;">
				<Strong>提示！请输入用户名</Strong>
			</div>
			</div>
		</div>
	</div>
</div>

  </body>
  </body>
</html>
