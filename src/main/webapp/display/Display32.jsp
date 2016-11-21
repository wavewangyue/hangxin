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
		var pagenum = "32";
	
		var rects;
		var xScale;
		var yScale;
		var width = 500;
		var height = 500;
		var padding = {left:50, right:30, top:60, bottom:30};
		var title = "Accuracy";
		var items = ["Gender","Age","Edu","Job","Income"];
		var dataset0 = [1,1,1,1,1];
		var tablelabel = 0;
		var dataset = new Array([60.1428, 8.4582, 12.2488, 7.4583, 10.8578],
								[80.1547, 68.5587, 63.4578, 67.4856, 61.5483]);					 
		var compute = new Array(d3.interpolate(d3.rgb("white"),d3.rgb("orange")),
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
							.domain([0,80])
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
							<h3>
								原始日志数据
							</h3>
							<p>
								用户使用的进程及使用时长，及网页记录
							</p>
							<img src="display/img/pic10.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								筛选进程
							</h3>
							<p>
								从原始用户数据中我们对一些可能产生好的建模效果的进程实体进行筛选
							</p>
							<img src="display/img/pic105.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								用户矩阵
							</h3>
							<p>
								筛选出306个进程实体组件矩阵
							</p>
							<img src="display/img/pic11.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								用户建模结果
							</h3>
							<p>
								SVM算法对规模1000的用户群体进行建模训练
							</p>
							<img src="display/img/pic12.png" />
						</div>
					</div>
				</li>
			</ul>
			<div id="container" style="margin-left:20%;margin-top:20px;"></div>
			<div class="btn-group  btn-group-vertical" style="margin-left:35%;margin-top:10px">
				<div>
				 <button class="btn btn-small btn-warning " type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(0)">优化前</button>
				 <button class="btn btn-small btn-success" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(1)">优化后</button>
				</div>
			</div>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkred"><Strong>优化前结果</Strong></a> 准确度都非常低，并且预测结果分布太过集中不均匀
			</p>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkorange"><Strong>原因1</Strong></a> 训练群体属性值分布不均（比如性别男女比为3:1）,利用这样的数据进行模型训练，得到的测试结果会有绝大多数都是男性，训练结果没有达到预期的效果
			</p>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkblue"><Strong>原因2</Strong></a> 训练数据值差别较大（部分进程使用时间为0，而个别进程使用时间高达10000），用这样的输入进行训练会使频繁进程（如qq）对模型的影响太大，导致模型准确度不高
			</p>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:gold"><Strong>原因3</Strong></a> 分类数过多，导致难以准确预测分类，并且起不到分类效果
			</p>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:purple"><Strong>解决方法</Strong></a> 筛选数据（使各属性值均匀分布），使用带权矩阵（给各进程分配权值，最后用加权后结果进行分类预测），减少分类个数
			</p>
			<p style="margin-top:40px;margin-left:50px;font-size:20px;font-family:楷体">
			<a style="font-size:30px;font-family:微软雅黑;color:darkgreen"><Strong>优化后结果</Strong></a> 分类结果较好，性别二分类的准确度能达到80%，其他属性的三分类准确度都在60%以上。
			</p>
			<ul class="thumbnails" style="font-family:微软雅黑;margin-top:50px;margin-left:40px;">
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								后续：手机端的用户建模方案
							</h3>
							<p style="font-size:20px">
								在用户安装了apk之后，该apk可以获取用户的应用使用情况记录，从而按照上述的PC端应用的建模方式，获取用户记录使用，筛选进程，建立矩阵，再用机器学习中的回归方法在手机端对用户进行建模，从而完成对用户的主题推荐
							</p>
							<img src="display/img/pic208.png" />
						</div>
					</div>
				</li>
			</ul>	
		</div>
	</div>
	</div>
  </body>
</html>
