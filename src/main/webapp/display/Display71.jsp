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
	
		var pagenum = "71";

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
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								背景
							</h3>
							<p>
								随着航空预定网站的普及，用户逐渐习惯于在网上购买机票，不良行为与异常行为也随之增多，比如存在部分组织，制造垄断，抬高价格，或者用户的账号遭到盗用等。追根溯源，电子商务是一个复杂的系统工程，它的应用还依靠相应的社会问题和技术问题的逐步解决与完善。而现阶段我们需要一种可行有效的方式对交易的安全性进行监察与管理。
							</p>
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								场景
							</h3>
							<p>
								目前机票预订网站中存在部分由某些组织所控制的“肉鸡”账号，为某些热门航线制造垄断局面，再抬高价格出售给用户。
							</p>
							<img src="display/img/picture7-1-1.png" />
							<h3 style="color:darkblue">
								问题
							</h3>
							<p>
								对于机票预订网站，如何判断某账号是否为“肉鸡”，并控制其不良行为
							</p>
							<h3 style="color:Olive">
								方案1
							</h3>
							<p>
								利用系统中已有的异常行为库或正常行为库，训练异常行为模型或正常行为模型，在某账号产生交易行为时，根据其行为对异常行为模型与正常行为模型的匹配度判断其行为的合理性与安全性，从而判断此账号的安全性。
							</p>
							<img src="display/img/picture7-1-2.png" />
							<h3 style="color:SlateGray">
								方案2
							</h3>
							<p>
								人工制定一些策略进行行为监控，观察行为的合理性，监控账号的安全性。
							</p>
							<p style="margin-top:50px">
								<font style="font-size:22px;color:darkred">监测措施1 </font>普通用户在购票时会查看多个航班进行比价，肉鸡不会
							</p>
							<p>
								<font style="font-size:22px;color:darkblue">监测措施2 </font>普通用户总订票次数会比肉鸡少，退票次数少
							</p>
							<p>
								<font style="font-size:22px;color:darkgreen">监测措施3 </font>假舱位钓鱼。假设有两种舱位：订票价格较低的A舱与退票价格较低的B舱（如果并没有A舱，则给出一个假的A舱），普通用户一般会选择A舱，肉鸡会选择B舱
							</p>
							<img src="display/img/picture7-1-3.png" />
							<p style="margin-top:50px">
								<font style="font-size:22px;color:darkred">控制措施1 </font>一般用户更倾向于预定票价便宜的航班，只给非嫌疑用户提供最便宜的价位
							</p>
							<p>
								<font style="font-size:22px;color:darkblue">控制措施2 </font>刻意延长对嫌疑用户的响应速度
							</p>
							<p>
								<font style="font-size:22px;color:darkgreen">控制措施3 </font>标记嫌疑用户的身份证号，根据身份证号控制预订行为，增加肉鸡的成本
							</p>
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 >
								结论
							</h3>
							<p>
								当下横行的“肉鸡”问题等交易安全问题，让各个航空公司对于交易安全监控与管理提出迫切的需要。对交易进行有效的监察与管理，不但有助于降低航空公司的经济损失，还能规范用户的网络行为，消除不良网络行为对网络性能和安全的影响，大幅度减轻网络管理员的负担。
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
