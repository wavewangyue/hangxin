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
	  <script src="js/jquery.js"></script>
	  <script src="js/bootstrap.min.js"></script>
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
		var pagenum = "12";
	
		var rects;
		var xScale;
		var yScale;
		var width = 500;
		var height = 500;
		var padding = {left:50, right:30, top:60, bottom:30};
		var title = "Accuracy & Recall";
		var items = ["ItemBased","UserBased","SlopeOne","KNN"];
		var dataset0 = [0.01,0.01,0.01,0.01];
		var tablelabel = 0;
		var dataset = new Array([0.064104, 0.570066, 0.000216, 0.027895],
								[0.060822, 0.304220, 0.000216, 0.027813]);					 
		var compute = new Array(d3.interpolate(d3.rgb("white"),d3.rgb("red")),
								d3.interpolate(d3.rgb("white"),d3.rgb("blue")));
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
								评价标准：准确率，召回率
							</p >
							<p style="margin-top:20px">
								准确率：推荐正确的机票与推荐的所有机票的比率（单位：%）
							</p >
							<p style="margin-top:20px">
								召回率：推荐正确的机票与用户购票集的比率（单位：%）
							</p >
						</div>
					</div>
				</li>
			</ul>
			<div id="container" style="margin-left:20%;margin-top:20px;"></div>
			<div class="btn-group  btn-group-vertical" style="margin-left:35%;margin-top:10px">
				<div>
				 <button class="btn btn-small btn-danger " type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(0)">准确率</button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(1)">召回率</button>
				</div>
			</div>
			<ul class="thumbnails" style="font-family:微软雅黑;margin-top:50px;margin-left:40px;font-size:20px">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkred"><Strong>UserBased</Strong></a>机票订单数量远大于用户的数量，基于用户的方法能够获得出更高的用户相似度
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkorange"><Strong>ItemBased</Strong></a>用户稀疏，机票相似度由于缺乏相似用户而难以提高
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkblue"><Strong>SlopeOne</Strong></a>由于用户购买同一机票的频次分布较均匀，很难区分出用户对机票的偏好
			</p>
			<p style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkgreen"><Strong>KNN</Strong></a>根据用户的距离来判别用户相似性，没有充分利用基于内容算法的优势，用户购买机票的频次分布均匀，没有区分度
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
