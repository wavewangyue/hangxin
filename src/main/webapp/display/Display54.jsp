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
				font-size: 12px;
				font-family: 微软雅黑;
				fill: black;
				text-anchor: middle;
			}
	</style>
	
	<script>
		
		var pagenum = "54";
		
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
		var dataset0 = [1,1,1,1,1,1,1,1];
		var tablelabel = 0;
		var dataset = new Array([13867, 14952, 11431, 9750, 0, 0, 0, 0],
								[8516,5351,7090,4340,5739,9213,6527,3224],
								[8026,6713,11474,8452,5500,5005,1697,3133],
								[8026,6713,11474,8452,7197,8138, 0, 0]
								);
		var textset = new Array(new Array("商务型,","游客型,","度假型,","休闲型,","","","",""),
								new Array("豪华商务型,","经济商务型,","舒适度假型,","经济度假型,","豪华游客型,","经济游客型,","舒适休闲型,","经济休闲型,"),
								new Array("豪华商务型,","经济商务型,","舒适度假型,","经济度假型,","豪华游客型,","经济游客型,","舒适休闲型,","经济休闲型,"),
								new Array("豪华商务型,","经济商务型,","舒适度假型,","经济度假型,","舒适休闲型,","经济休闲型,","","")
								);
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
				.attr("transform",function(d){
					return "translate(" + arc.centroid(d) + ")";
				})
				.text(function(d,i){
					if (d.data == 0) return "";
					else return textset[0][i]+d.data;
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
					if (d.data == 0) return "";
					else return textset[label][i]+d.data;
				});
				if (label == 0){
					document.getElementById("text1").innerHTML = "规则：提前订票天数，平均停留时间";
					document.getElementById("text2").innerHTML = "主题数：4  数据总量：50000 ";	
				}else if (label == 1){
					document.getElementById("text1").innerHTML = "规则：提前订票天数，平均停留时间，舱位等级";
					document.getElementById("text2").innerHTML = "主题数：8  数据总量：50000 ";
				}else if (label == 2){
					document.getElementById("text1").innerHTML = "主题数：8  数据总量：50000 ";
					document.getElementById("text2").innerHTML = "休闲型所占比例较少，导致整体上的分布不均--->游客型和休闲型在分类上的差别不甚明显，且从数字上看这两类跟度假型与商务型比较，数量较少--->将这两类进行合并";
				}else if (label == 3){
					document.getElementById("text1").innerHTML = "主题数：6  数据总量：50000 ";
					document.getElementById("text2").innerHTML = "分布较为均匀，实验证明可以用该主题分类将酒店与机票打包成套餐推荐给用户。";
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
								套餐主题规则
							</h3>
							<p style="margin-top:20px;margin-left:0px;">
			机票规则：提前订票天数，停留时间，舱位等级
		</p>
							<p style="margin-top:20px;margin-left:0px;">
			酒店规则：服务质量，环境位置，价格高低
		</p>
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								套餐主题分类策略
							</h3>
							<img src="display/img/pic110.png" />
							<p style="margin-top:20px;margin-left:0px;">
			对于有商务出行需要的旅客，一般会有参加会议以及商务洽谈的目的，更加需要良好酒店服务，更加需要酒店周围环境好，交通便利；对于有度假旅游的需求的旅客，最可能关注酒店是否干净整洁，环境优美；而对于在节假日或周末进行短期出行的游客，可能更钟心于服务优质的酒店，以及性价比高的酒店；另外，除以上情况之外的有休闲出行需要的旅客，对服务与环境这两个方面的关注点就会少一些，他们更为关注的可能是机票折扣与酒店价格
		</p>
						</div>
					</div>
				</li>
			</ul>
			<div id="container" style="margin-left:20%;margin-top:50px;"></div>
			<div class="btn-group  btn-group-vertical" style="margin-left:30%;margin-top:0px">
				<div>
				 <button class="btn btn-small btn-primary" type="button"  style="width:150px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(0)">机票主题结果</button>
				 <button class="btn btn-small btn-success" type="button"  style="width:150px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(1)">扩展后的机票主题</button>
				</div>
				<div>
				 <button class="btn btn-small btn-primary" type="button"  style="width:150px;height:40px;font-size:15px;font-family: 微软雅黑;"onclick = "changetable(2)">套餐主题结果</button>
				 <button class="btn btn-small btn-success" type="button"  style="width:150px;height:40px;font-size:15px;font-family: 微软雅黑;" onclick = "changetable(3)">修整后的套餐主题</button>
				</div>
			</div>
			<p id="text1" style="margin-top:50px;margin-left:50px;font-size:20px;font-family:楷体">
			    规则:提前订票天数，平均停留时间
			</p>
			<p id="text2" style="margin-top:20px;margin-left:50px;font-size:20px;font-family:楷体;margin-bottom:100px">
			  主题数：4  数据总量：50000  
			</p>
		</div>
	</div>
	</div>
  </body>
</html>
