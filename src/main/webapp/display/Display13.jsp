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
			.axis path,
			.axis line{
				fill: none;
				stroke: gray;
				shape-rendering: crispEdges;
			}
			.axis text {
				font-family: 微软雅黑;
				font-size: 15px;
				fill:gray;
			}
			.MyText {
				font-size: 15px;
				font-family: 微软雅黑;
				fill: gray;
				text-anchor: middle;
			}
	</style>
	
	<script>
		var pagenum = "13";
	
		var rects;
		var xScale;
		var yScale;
		var width = 500;
		var height = 500;
		var padding = {left:50, right:30, top:60, bottom:30};
		var title = "Time Performance";
		var items = ["ItemBased","UserBased","SlopeOne","KNN"];
		var dataset0 = [1,1,1,1];
		var tablelabel = 0;
		var dataset = new Array([278.223, 200.580, 930.915, 525.456],
								[261.957, 198.389, 982.954, 488.129],
								[252.545, 193.632, 875.052, 448.998],
								[240.046, 192.709, 727.772, 413.543]);					 
		var compute = new Array(d3.interpolate(d3.rgb("white"),d3.rgb("red")),
								d3.interpolate(d3.rgb("white"),d3.rgb("orange")),
								d3.interpolate(d3.rgb("white"),d3.rgb("blue")),
								d3.interpolate(d3.rgb("white"),d3.rgb("green")));
		var cScale;
		
		function d3init(){
				//svg
				var svg = d3.select("body")
							.select("#container")
							.append("svg")
							.attr("width", width)
							.attr("height", height);
				//scale
				xScale = d3.scale.ordinal()
							.domain(d3.range(dataset[0].length))
							.rangeRoundBands([0, width - padding.left - padding.right]);
						//	.range(items);
				yScale = d3.scale.linear()
							.domain([0,d3.max(dataset[0])])
							.range([height - padding.top - padding.bottom, 0]);
				cScale = d3.scale.linear()  
							.domain([0,d3.max(dataset[0])])  
							.range([0.4,1]);
				//blank(between)
				var rectPadding = 20;
				//axis
				var yAxis = d3.svg.axis()
							.scale(yScale)
							.orient("left");
				svg.append("g")
					.attr("class","axis")
					.attr("transform","translate(" + padding.left + "," + padding.top + ")")
					.call(yAxis);
				svg.append("line")
					.attr("x1",padding.left - 6)
					.attr("y1",height - padding.bottom + 0.5)
					.attr("x2",width - padding.right)
					.attr("y2",height - padding.bottom + 0.5)
					.attr("stroke","gray")
					.attr("stroke-width",1);					
				var texts = svg.selectAll(".MyText")
					.data(items)
					.enter()
					.append("text")
					.attr("class","MyText")
					.attr("transform","translate(" + padding.left + "," + padding.top + ")")
					.attr("x", function(d,i){
						return xScale(i) + xScale.rangeBand()/2;
					} )
					.attr("y",function(d){
						return height - padding.bottom - padding.top + 20;
					})
					.text(function(d){
						return d;
					});
				//title
				svg.append("text")
					.attr("class","MyText")
					.attr("x",(width + padding.left - padding.right)/2)
					.attr("y",padding.top/2)
					.text(title);
				//rects
				rects = svg.selectAll(".MyRect")
							.data(dataset0)
							.enter()
							.append("rect")
							.attr("class","MyRect")
							.attr("transform","translate(" + padding.left + "," + padding.top + ")")
							.attr("x", function(d,i){
								return xScale(i) + rectPadding/2;
							} )
							.attr("y",function(d){
								return yScale(d);
							})
							.attr("width", xScale.rangeBand() - rectPadding )
							.attr("height", function(d){
								return height - padding.top - padding.bottom - yScale(d);
							})
							.attr("fill",function(d,i){
								return "gray";
							})
							.on("mouseover",function(d,i){
								d3.select(this)
								.attr("fill","gold");
								svg.append("text")
								.attr("id","number")
								.attr("class","MyText")
								.attr("transform","translate(" + padding.left + "," + padding.top + ")")
								.attr("x",xScale(i) + xScale.rangeBand()/2)
								.attr("y",yScale(d))
								.attr("dy",20)
								.text(d);
							})
							.on("mouseout",function(d,i){
								d3.select(this)
								.transition()
								.duration(500)
								.attr("fill",compute[tablelabel](cScale(d)));
								svg.select("#number")
								.remove();
							});
				//start
				rects.data(dataset[0])
				.transition()
				.duration(1000)
				.delay(function(d,i){
					return 200*i;
				})
				.attr("y",function(d){
					return yScale(d);
				})
				.attr("height",function(d){
					return height - padding.top - padding.bottom - yScale(d);
				})
				.attr("fill",function(d,i){
					return compute[0](cScale(d));;
				});
		}
		
		function changetable(label){
				tablelabel = label;
				rects.data(dataset[label])
				.transition()
				.duration(1000)
				.delay(function(d,i){
					return 200*i;
				})
				.attr("y",function(d){
					return yScale(d);
				})
				.attr("height",function(d){
					return height - padding.top - padding.bottom - yScale(d);
				})
				.attr("fill",function(d,i){
					return compute[label](cScale(d));
				});
		}
		
		function init(){
			setpage(pagenum);
			d3init();
		}
	</script>
  </head>
  
  <body onload="init()" >
	<div class="container-fluid">
	<div class="row-fluid">
		<jsp:include page="Index.jsp" />
		<div class="span9" style="height:100%">
			<ul class="thumbnails" style="font-family:微软雅黑;margin-top:50px;margin-left:40px;font-size:18px">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								算法评价
							</h3>
							<p style="margin-top:20px">
								为了对推荐算法效果进行优劣评判，我们使用500000+的机票数据，利用mahout对四种推荐算法进行了评估
							</p >
							<p style="margin-top:20px">
								评价标准：时间性能
							</p >
						</div>
					</div>
				</li>
			</ul>
			<div id="container" style="margin-left:20%;margin-top:20px;"></div>
			<div class="btn-group  btn-group-vertical" style="margin-left:25%;margin-top:10px">
				<div>
				 <button class="btn btn-small btn-danger " type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(0)">产生1个推荐</button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(1)">产生2个推荐</button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(2)">产生3个推荐</button>
				 <button class="btn btn-small btn-success" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(3)">产生4个推荐</button>
				</div>
			</div>
			<ul class="thumbnails" style="font-family:微软雅黑;margin-top:50px;margin-left:40px;font-size:20px">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			  <a style="font-size:30px;font-family:微软雅黑;color:darkblue"><Strong>UserBased</Strong></a>  用户的数量较机票数量少很多，因此有更好的时间性能
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			  <a style="font-size:30px;font-family:微软雅黑;color:darkred"><Strong>SlopeOne</Strong></a> 由于要预测所有用户对每种机票的评分，计算时间较长
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			  <a style="font-size:30px;font-family:微软雅黑;color:darkgreen"><Strong>KNN</Strong></a> 需要计算每个用户的N个邻居，也需要较长的时间
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			 <a style="font-size:30px;font-family:微软雅黑;color:darkorange"><Strong> 推荐个数</Strong></a>随着推荐个数的增加，可推荐用户数减少，计算时间减少
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
