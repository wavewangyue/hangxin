<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="init.jsp" %>

<!DOCTYPE HTML>
<html>

<script type="text/javascript">
	function indexerinit(pagenum){
		$("#label"+pagenum).attr("class","active");
	}
</script>

<div class="row-fluid" style="background-color:dimgray;padding:0em">
	<div class="span4">
		<img style="margin-top:1%;margin-left:1%;width:50%" src="image/logo.png" />
	</div>
	<div class="span4">
		<ul class="nav nav-pills" style="text-align:center;margin-top:3%;font-size:1.5em;">
			<li id="label1">
				<a href=<%=url1%> style="color:white"><strong>首页</strong></a>
			</li>
			<li id="label2">
				<a href=<%=url2%> style="color:white"><strong>机票</strong></a>
			</li>
			<li id="label3">
				<a href=<%=url3%> style="color:white"><strong>用户</strong></a>
			</li>
			<li id="label5">
				<a href=<%=url5%> style="color:white"><strong>安全</strong></a>
			</li>
			<li id="label6">
				<a href=<%=url6%> style="color:white"><strong>行为</strong></a>
			</li>
			<li id="label4">
				<a href=<%=url4%> style="color:white"><strong>展示</strong></a>
			</li>
		</ul>
	</div>
	<div class="span4">
		<p class="text-right" style="text-decoration:underline;margin-top:2%;font-size:1.5em;">
			<a href=<%=url3%> style="color:orange;font-family:微软雅黑;"><Strong><%=loginfo2%></Strong></a>
		</p>
		<p class="text-right" style="margin-top:2%;font-size:1.5em;color:lightblue;font-family: 微软雅黑;">
			<Strong><%=loginfo1%></Strong>
		</p>
		<p class="text-right" style="margin-top:2%;font-size:1em;color:white;font-family: 微软雅黑;">
			<Strong>Copyright·ACT/TravelSky</Strong>
		</p>
	</div>
</div>
</html>
