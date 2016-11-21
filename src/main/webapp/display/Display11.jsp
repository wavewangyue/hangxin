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
	
		var pagenum = "11";
		
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
		<ul class="thumbnails" style="font-family:微软雅黑;width:100%;margin-top:50px;margin-left:40px;font-size:18px">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								推荐算法
							</h3>
							<img src="display/img/pic104.png" />
							<p style="margin-top:40px">
								所谓推荐算法就是利用用户的一些行为，通过一些数学算法，推测出用户可能喜欢的东西。目前主流的传统推荐算法主要分为5种
							</p >
						</div>
					</div>
				</li>				
			</ul>
			<table class="table" style="margin-top:5%;font-size:20px;font-family:微软雅黑">
				<thead>
					<tr>
						<th style = "width:15%;text-align:center;">
							算法名称
						</th>
						<th style = "width:20%;text-align:center;">
							优点
						</th>
						<th style = "width:20%;text-align:center;">
							缺点
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style = "height:100px;text-align:center;margin-top:10px;">
							<div style="margin-top:30px;"></div>
							基于内容推荐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							结果直观，容易解释，不需要领域知识
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							稀疏问题，新用户问题，复杂属性不好处理，需要足够数据
						</td>
						
					</tr>
					<tr class="success">
						<td style = "height:100px;text-align:center;">
							<div style="margin-top:30px;"> </div>
							协同过滤推荐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:10px;"> </div>
							不需要领域知识，随时间推移性能提高，推荐个性化，自动程度高，能处理复杂非结构化的对象
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							稀疏问题，新用户问题，可扩展性问题，质量取决于历史数据
						</td>
						
					</tr>
					<tr class="error">
						<td style = "height:100px;text-align:center;">
							<div style="margin-top:30px;"> </div>
							基于规则推荐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							发现新兴趣点，不要领域知识
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							规则抽取难，产品名同义性问题，个性化程度低
						</td>
						
					</tr>
					<tr class="warning">
						<td style = "height:100px;text-align:center;">
							<div style="margin-top:30px;"> </div>
							基于效用推荐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							无冷启动与稀疏性问题，能考虑非产品特性
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							推荐是静态的，灵活性差，属性重叠问题
						</td>
						
					</tr>
					<tr class="info">
						<td style = "height:100px;text-align:center;">
							<div style="margin-top:30px;"> </div>
							基于知识推荐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							能把用户需求映射到产品上，能考虑非产品特性
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:20px;"> </div>
							知识难获得，推荐是静态的
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
  </body>
</html>
