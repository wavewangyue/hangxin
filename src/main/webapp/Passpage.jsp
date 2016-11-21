<%@ page language="java" import="java.util.*,act.hangxin.service.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

int label = 0;
String input = "";
if (request.getParameter("input")!=null){
	input = request.getParameter("input");
}
if (input != "") label = 2;
PasswordService p = new PasswordService(input);
if (p.getans()){
	label = 1;
	request.getSession().setAttribute("password",p.getpass()); 
}
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证·TravelSky</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript">
		function pass(input,label,basePath){
			if (label == 1){
				window.location.href = basePath+"Index.jsp";
			}
			else if (label == 2) alert("您刚刚输入的密码为："+input+",此密码错误");
		}
		function go(basePath){
			var str = basePath+"Passpage.jsp?input="+document.getElementById("myinput").value+"";
			
			if (document.getElementById("myinput").value == ""){
				alert("请输入密码");
			}
			else{
				window.location.href = str;
			}
		}
	</script>
  </head>
  
  <body onload="pass('<%=input%>','<%=label%>','<%=basePath%>')">

    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12" style="text-align:center">
					<p  style="margin-top:15%;font-size:20px;color:black;font-family: 微软雅黑;">
						<Strong>欢迎使用ACT航信项目系统</Strong>
					</p>
					<p style="margin-top:2%;font-size:20px;color:black;font-family: 微软雅黑;">
						<Strong>请输入密码</Strong>
					</p>
					<div>
						<input id="myinput" type="text" style="margin-top:20px;height:50px;width:150px;" onkeydown="if(event.keyCode==13) go('<%=basePath%>')"/>
					</div>	
					<button class="btn btn-large" style="margin-top:20px;font-size:20px;font-family: 微软雅黑;" onclick="go('<%=basePath%>')">确定</button>
				
				
		</div>
	</div>
	</div>
	

</body>
</html>
