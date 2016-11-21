<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/init.jsp" %>

<!DOCTYPE HTML>
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
	<script>
		var pagenum = "01";
		
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
				<li class="span11" style="background-color:#ffffff">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								推荐系统
							</h3>
							<img src="display/img/pic100.png" />
							<p style="margin-top:40px">
								个性化推荐：根据用户的兴趣特点和购买行为，向用户推荐用户感兴趣的信息和商品。随着电子商务规模的不断扩大，商品个数和种类快速增长，顾客需要花费大量的时间才能找到自己想买的商品。这种浏览大量无关的信息和产品过程无疑会使淹没在信息过载问题中的消费者不断流失。为了解决这些问题，个性化推荐系统应运而生。
							</p >
							<p style="margin-top:40px">
								个性化推荐系统：建立在海量数据挖掘基础上的一种高级商务智能平台，以帮助电子商务网站为其顾客购物提供完全个性化的决策支持和信息服务
							</p >
							<p style="margin-top:40px">
								国内外在近些年也出现了很多个性化推荐系统，其出发点是为用户提供可以定制的个性化行程
							</p >
						</div>
					</div>
				</li>
				<li class="span11" style="background-color:#ffffff">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								iTravel
							</h3>
							<img src="display/img/pic101.png" />
							<p style="margin-top:20px">
								iTravel为欧盟开发的项目，投入140万欧元，综合多个旅游提供商
							</p>
							<p style="margin-top:20px">
								为用户构建虚拟化的旅游助手，在整个行程过程中为用户提供个性化的上下文感知的信息和辅助服务
							</p>
							<p style="margin-top:20px">
								基于LBS的服务推荐算法，随时感知用户位置并及时接收外部消息（天气情况、交通状况等），综合服务提供商的信息，按照一定的规则排序（时间、花费），给用户提出可用的替代方法
							</p>
						</div>
					</div>
				</li>
				<li class="span11" style="background-color:#ffffff">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkgreen">
								Trip Planer
							</h3>
							<img src="display/img/pic102.png" />
							<p style="margin-top:20px">
								Trip Planer是雅虎英国和爱尔兰网站于2007年推出的交互式工具
							</p>
							<p style="margin-top:20px">
								旅客可以个人旅游经历用文件记录，系统还将Flickr、雅虎旅游指南及雅虎地图整合了进去
							</p>
							<p style="margin-top:20px">
								交互式地图：该工具用于启发旅游灵感，使用户可在一个交互式地图上直观地在全球范围内策划旅行。交互式地图包括了在便于使用的交互地图中规划好的顶级旅程计划（Top Trip Plans）。用户可使用动态面板及可缩放地图技术，集中查看并发现最符合自己的旅程计划
							</p>
						</div>
					</div>
				</li>
				<li class="span11" style="background-color:#ffffff">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:purple">
								TravelGuide
							</h3>
							<img src="display/img/pic103.png" />
							<p style="margin-top:20px">
								TravelGuide系统是微软开发的第三代旅游交互系统
							</p>
							<p style="margin-top:20px">
								用户可以将搜索到的资源添加到自己的行程中去，安排时间，还可以查看评价，游记，问答和其他用户行程
							</p>
							<p style="margin-top:20px">
								系统采用关键词搜索的方式来给用户推荐资源，只要资源的描述包括被搜索的关键词，则被当作结果返回。而且需要手动的给资源添加开始时间和结束时间，因此需要用户对资源有所了解，了解资源所在的地理位置、资源游览的时间花费以及资源的属性等信息
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
