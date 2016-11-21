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
	<style>
			.MyText {
				font-size: 15px;
				font-family: 微软雅黑;
				fill: gray;
				text-anchor: middle;
			}
			.TableText {
				font-size: 15px;
				font-family: 微软雅黑;
				fill: black;
				text-anchor: left;
			}
	</style>
	
	<script>
		
		var pagenum = "53";
		
		var arcs;
		var piedata;
		var pie;
		var arc;
		var width = 800;
		var height = 500;
		var outerRadius = 200;	
		var innerRadius = 0;
		var padding = {left:0, right:0, top:30, bottom:0};
		var title = "Number Distribution";
		var totalnum = 42270;
		var dataset0 = [1,1,1,1,1,1,1,1];
		var tablelabel = 0;
		var dataset = new Array([6409, 143, 1919, 11771, 2165, 18449, 932, 482]);
		var textset = new Array(new Array("标签：旅游 服务,", "标签：旅游 服务 环境,","标签：旅游 环境,","标签：商务 服务,","标签：商务 服务 环境,","标签：商务 环境,","标签：仅商务,","标签：仅旅游,"));
		var color = d3.scale.category10();
		
		function d3init(){
				//svg
				var svg = d3.select("body")
							.select("#container")
							.append("svg")
							.attr("width", width)
							.attr("height", height);
				//layout
				pie = d3.layout.pie();
				piedata = pie(dataset0);			
				arc = d3.svg.arc()	
					.innerRadius(innerRadius)	
					.outerRadius(outerRadius);			
				//title
				svg.append("text")
					.attr("class","MyText")
					.attr("x",width/2)
					.attr("y",padding.top)
					.text(title);
				svg.append("text")
					.attr("class","MyText")
					.attr("x",width/2)
					.attr("y",padding.top+30)
					.text("total:"+totalnum);
				//arcs
				arcs = svg.selectAll("g")
					    .data(piedata)
					    .enter()
					    .append("g")
					    .attr("transform","translate("+ (width/2+padding.left) +","+ (height/2+padding.top) +")")
					    .on("mouseover",function(d,i){
							d3.select(this)
							.select("path")
							.attr("fill","gold");
						})
						.on("mouseout",function(d,i){
							d3.select(this)
							.select("path")
							.transition()
							.duration(500)
							.attr("fill",color(i));
						});					  
				arcs.append("path")
				.attr("fill",function(d,i){
					return "gray";
				})
				.attr("d",function(d){
					return arc(d);
				});
				svg.selectAll("rect")
				.data(dataset0)
				.enter()
				.append("rect")
				.attr("x","0")
				.attr("y","0")
				.attr("width","10")
				.attr("height","10")
				.attr("transform",function(d,i){
					return "translate("+0+","+(padding.top+i*50+60)+")";
				})
				.attr("fill",function(d,i){
					return color(i);
				});
				arcs.append("text")
				.attr("class","TableText")
				.attr("transform",function(d){
					return "translate(" + arc.centroid(d) + ")";
				})
				.text("");
				//start
				piedata = pie(dataset[0]);
				arcs.data(piedata);
				arcs.select("path")
				.transition()
				.duration(1000)
				.delay(function(d,i){
					return 200*i;
				})				
				.attr("fill",function(d,i){
					return color(i);
				})
				.attr("d",function(d){
					return arc(d);
				});
				arcs.select("text")
				.transition()
				.duration(1000)
				.delay(function(d,i){
					return 200*i;
				})
				.attr("transform",function(d,i){
					return "translate("+(padding.left-width/2+20)+","+(i*50-outerRadius+20)+")";
				})
				.text(function(d,i){
					return textset[0][i]+d.data;
				});								
		}
				
		function init(){
			setpage(pagenum);
			d3init();
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
							<h3 style="color:darkred">
								酒店主题规则分析
							</h3>
							<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			我们将在主题规则中提取的主题关键词，按照以下三个规则进行分类
		</p>
		<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			将120000+的酒店数据进行筛选，剔除属性不全以及没有任何标签信息的无用数据，最终经过筛选得到的酒店数据集大小为42270
		</p>
							<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			规则：服务质量，环境位置，适合商务出行或旅游出行
		</p>
		<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			服务类标签：（服务好）（早餐很棒）等
		</p>
		<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			位置类标签：（交通方便）（位置好）等
		</p>
		<p id="text1" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			出行意图类（商务/旅游）标签：（风景不错）（度假酒店）等
		</p>
		<p id="text2" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			再将酒店数据对这几类标签的拥有情况进行统计
		</p>
						</div>
					</div>
				</li>
			</ul>
			
		<div id="container" style="margin-left:20%;margin-top:50px;"></div>
		<p id="text3" style="margin-top:20px;margin-left:50px;font-size:20px;font-family:楷体">
			结果分布并不均匀，分类的方式需要进行调整
		</p>
		<p id="text3" style="margin-top:20px;margin-left:50px;font-size:20px;font-family:楷体">
			商务类酒店超过了总数3/4的，明显多于旅游类酒店，所以这对属性通过其他属性关联的方式进行弥补
		</p>
		<p id="text3" style="margin-top:20px;margin-left:50px;font-size:20px;font-family:楷体;margin-bottom:100px">
			服务质量属性和环境位置这两个属性，数据分布都较为均匀，可用于弥补其他属性
		</p>
		</div>
	</div>
	</div>
  </body>
</html>
