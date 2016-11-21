<%@ page language="java" import="java.util.*,act.hangxin.service.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String user = "";
	String loginfo1="";
	String loginfo2="";
	if ((request.getParameter("user")!="")&&(request.getParameter("user")!=null)){
		user=request.getParameter("user");
		loginfo1 = "Hello, user "+user;
	}
	else{
		loginfo2 = "Log in";
	}
	String url1=basePath+"Index.jsp?user="+user;
	String url2=basePath+"Create.jsp?user="+user;
	String url3=basePath+"Login.jsp?user="+user;
	String url4=basePath+"display/Display0.jsp";
	String url5=basePath+"Secure.jsp?user="+user;
	String url6=basePath+"Behavior.jsp?user="+user;
	String strpass = "";
	if (request.getSession().getAttribute("password")!=null) strpass = request.getSession().getAttribute("password").toString();
	PasswordService p = new PasswordService(strpass);
	if (!p.getans()) response.sendRedirect(basePath+"Passpage.jsp");
%>
