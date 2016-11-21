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
				text-anchor: middle;
			}
	</style>
	
	<script>
		
		var pagenum = "52";
		
		var arcs;
		var piedata;
		var pie;
		var arc;
		var width = 500;
		var height = 500;
		var outerRadius = 200;	
		var innerRadius = 0;
		var padding = {left:0, right:0, top:30, bottom:0};
		var title = "Number Distribution";
		var totalnum = 50000;
		var dataset0 = [1,1,1,1];
		var tablelabel = 0;
		var dataset = new Array([24110, 13690, 8209, 3991],
								[10725, 16353, 16527, 6395],
								[13150, 12630, 17283, 6937],
								[18542, 4335, 23867, 3526]);
		var textset = new Array(new Array("1-5次,","5-10次,","10-15次,","15-20次,"),
								new Array("0-2天,","2-7天,","7-20天,","20天以上,"),
								new Array("0-3天,","3-8天,","8-20天,","20天以上,"),
								new Array("普通舱,","公务舱,","折扣舱,","头等舱,"));
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
				cScale = d3.scale.linear()  
							.domain([0,totalnum/2])  
							.range([0.2,1]);
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
							.attr("fill",compute[tablelabel](cScale(d.data)));
						});					  
				arcs.append("path")
				.attr("fill",function(d,i){
					return "gray";
				})
				.attr("d",function(d){
					return arc(d);
				});		
				arcs.append("text")
				.attr("class","TableText")
				.attr("transform",function(d){
					return "translate(" + arc.centroid(d) + ")";
				})
				.text(function(d){
					return d.data;
				});
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
					return compute[tablelabel](cScale(d.data));
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
				.attr("transform",function(d){
					return "translate(" + arc.centroid(d) + ")";
				})
				.text(function(d,i){
					return textset[0][i]+d.data;
				});								
		}
			
		function changetable(label){
				tablelabel = label;
				piedata = pie(dataset[label]);
				arcs.data(piedata);
				arcs.select("path")
				.transition()
				.duration(1000)
				.delay(function(d,i){
					return 200*i;
				})				
				.attr("fill",function(d,i){
					return compute[label](cScale(d.data));
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
				.attr("transform",function(d){
					return "translate(" + arc.centroid(d) + ")";
				})
				.text(function(d,i){
					return textset[label][i]+d.data;
				});
				if (label == 0){
					document.getElementById("text1").innerHTML = "旅游出行： 近一半左右的用户历史订票次数在0-5次，如果每次去往的目的地都不一样";	
					document.getElementById("text2").innerHTML = "商务出行： 五次以上特别是10次以上的用户，如果目的地比较固定";	
				}else if (label == 1){
					document.getElementById("text1").innerHTML = "提前天数较短：少于7天，并不是经过长时间计划与考虑而制定的出行计划，偏向于商务出行";
					document.getElementById("text2").innerHTML = "提前天数较长：多于7天，计划较为充分，偏向于旅游出行";
				}else if (label == 2){
					document.getElementById("text1").innerHTML = "停留天数较短：少于8天，适用于节假日出行的旅游需求的游客和商务出差需求的游客";
					document.getElementById("text2").innerHTML = "停留天数较长：多于8天，适用于长期度假需求的游客和有长期休闲需求的游客";
				}else if (label == 3){
					document.getElementById("text1").innerHTML = "可以看到，折扣舱大概占了所有机票的一半";
					document.getElementById("text2").innerHTML = "如果以折扣舱为阈值，将所有机票数据分为舱位等级高或等级低，则分类效果较为明显。";
				}
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
								机票主题规则分析
							</h3>
							<p id="text0" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			   					我们通过人工分析和统计的方式生成机票用户的主题。主要从用户飞行频次、提前订票天数、停留天数考虑。
							</p>
							<p id="text00" style="margin-top:20px;margin-left:0px;font-size:20px;font-family:楷体">
			   					在500000+的机票数据中，由于大部分数据属性不全，为了实现主题分类过程，对机票数据进行了筛选，保证数据对这几类分类规则的属性都能支持，最终筛选后的数据集大小为50000
							</p>
						</div>
					</div>
				</li>
			</ul>
			<div id="container" style="margin-left:20%;margin-top:50px;"></div>
			<div class="btn-group  btn-group-vertical" style="margin-left:25%;margin-top:0px">
				<div>
				 <button class="btn btn-small btn-danger " type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(0)">飞行频次</button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(1)">提前订票天数</button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(2)">停留天数</button>
				 <button class="btn btn-small btn-success" type="button"  style="width:110px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(3)">舱位等级</button>
				</div>
			</div>
			<p id="text1" style="margin-top:50px;margin-left:50px;font-size:20px;font-family:楷体">
			   旅游出行： 近一半左右的用户历史订票次数在0-5次，如果每次去往的目的地都不一样
			</p>
			<p id="text2" style="margin-top:20px;margin-left:50px;font-size:20px;font-family:楷体;margin-bottom:100px">
			   商务出行： 五次以上特别是10次以上的用户，如果目的地比较固定
			</p>
		</div>
	</div>
	</div>
  </body>
</html>
