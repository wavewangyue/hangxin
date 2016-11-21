<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/init.jsp" %>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>展示·TravelSky</title>
	<script src="js/d3.min.js"></script>  
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

	<style>
		.MyText {
			font-size: 35px;
			font-family: 微软雅黑;
			fill: dimgray;
			text-anchor: middle;
			cursor:pointer;
		}
		.MyTexts {
			font-size: 20px;
			font-family: 微软雅黑;
			fill: white;
			text-anchor: middle;
			cursor:pointer;
		}
		.MyImgs {
			cursor:pointer;
		}
	</style>

	<script>
	var width = window.innerWidth*0.95;
	var height = 0;
	var backcolor = "DimGray";
	var colorset = new Array("LightPink",
							 "SandyBrown",
							 "Khaki",
							 "LightGreen",
							 "PaleTurquoise",
							 "Plum",
							 "Maroon",
							 "DarkSlateBlue",
							 "GreenYellow");
	var chaps = new Array("0 背景与故事",
						  "1 传统推荐算法",
						  "2 本体知识库",
						  "3 无先验下跨域推荐",
						  "4 主题发现",
						  "5 基于主题组合推荐",
						  "6 资源画像",
						  "7 交易安全",
						  "8 个性化营销");
	var chapslip = 9;
	function d3init(basePath){
		//svg
		var time = 0;
		var yoff = 0;
		var svg = d3.select("body")
		.select("#container")
		.append("svg")
		.attr("width", width)
		.attr("height", height);
		d3.select("body")
		.style("background-color",backcolor);
		//line1
		svg.append("line")
        .attr("x1",0)  
        .attr("y1",yoff+20)  
        .attr("x2",width)  
        .attr("y2",yoff+20)  
        .attr("stroke","gray")  
        .attr("stroke-width",3);
		svg.append("line")
		.attr("class","MyLine")
        .attr("x1",0)  
        .attr("y1",yoff+20)  
        .attr("x2",width)  
        .attr("y2",yoff+=20)  
        .attr("stroke","yellow")
        .attr("stroke-width",3)
		.attr("stroke-dasharray","100,80,60,40,20");
		//rect1
		rect1 = svg.append("rect")
		.attr("x",width/2-410)
		.attr("y",yoff+20)
		.attr("rx",10)
		.attr("ry",10)
		.attr("width",400)
		.attr("height",80)
		.attr("fill","GreenYellow")
		.style("cursor","pointer")
		.on("mouseover",function(){
			d3.select(this)
			.attr("fill","white");
		})
		.on("mouseout",function(){
			d3.select(this)
			.attr("fill","GreenYellow");
		})
		.on("click",function(){
			window.location.href = basePath+"display/Display01.jsp";
		});
		//text1
		svg.append("text")
		.attr("class","MyText")
		.attr("x",width/2-205)
		.attr("y",yoff+70)
		.on("mouseover",function(){
			rect1.attr("fill","white");
		})
		.on("mouseout",function(){
			rect1.attr("fill","GreenYellow");
		})
		.on("click",function(){
			window.location.href = basePath+"display/Display01.jsp";
		})
		.text("从 头 开 始");
		//rect2
		rect2 = svg.append("rect")
		.attr("x",width/2+10)
		.attr("y",yoff+20)
		.attr("rx",10)
		.attr("ry",10)
		.attr("width",400)
		.attr("height",80)
		.attr("fill","SandyBrown")
		.style("cursor","pointer")
		.on("mouseover",function(){
			d3.select(this)
			.attr("fill","white");
		})
		.on("mouseout",function(){
			d3.select(this)
			.attr("fill","SandyBrown");
		})
		.on("click",function(){
			window.location.href = basePath+"Index.jsp";
		});
		//text2
		svg.append("text")
		.attr("class","MyText")
		.attr("x",width/2+210)
		.attr("y",yoff+70)
		.on("mouseover",function(){
			rect2.attr("fill","white");
		})
		.on("mouseout",function(){
			rect2.attr("fill","SandyBrown");
		})
		.on("click",function(){
			window.location.href = basePath+"Index.jsp";
		})
		.text("返 回 网 站");
		yoff+=100;
		//line2
		svg.append("line")  
        .attr("x1",0)  
        .attr("y1",yoff+20)  
        .attr("x2",width)  
        .attr("y2",yoff+20)  
        .attr("stroke","gray")  
        .attr("stroke-width",3);
		svg.append("line")
		.attr("class","MyLine")
        .attr("x1",0)  
        .attr("y1",yoff+20)  
        .attr("x2",width)  
        .attr("y2",yoff+=20)  
        .attr("stroke","yellow")
        .attr("stroke-width",3)
		.attr("stroke-dasharray","100,80,60,40,20");
		//chaps
		var rwidth = 220;
		var rheight = 130;
		rects = svg.selectAll(".MyRect")
		.data(chaps)
		.enter()
		.append("rect")
		.attr("class","MyRect")
		.attr("id",function(d,i){
			return "r"+i;
		})
		.attr("x",function(d,i){
			return i%3*(rwidth+80)+width/2-(rwidth+80)-rwidth/2;
		})
		.attr("y",function(d,i){
			return yoff+200*parseInt(i/3)+50;
		})
		.attr("rx",30)
		.attr("ry",30)
		.attr("width",0)
		.attr("height",0)
		.attr("stroke",function(d,i){
			return colorset[i];
		})  
        .attr("stroke-width",4)
        .attr("stroke-dasharray",4)
		.attr("fill",function(d,i){
			return backcolor;
		})
		.style("cursor","pointer")
		.on("mouseover",function(d,i){
			if (i < chapslip){
				d3.select(this).transition()
				.duration(200)
				.attr("transform","translate(-25,-25)")
				.attr("width",rwidth+50)
				.attr("height",rheight+50);
			}
		})
		.on("mouseout",function(d,i){
			if (i < chapslip){
				d3.select(this).transition()
				.duration(200)
				.attr("transform","translate(0,0)")
				.attr("width",rwidth)
				.attr("height",rheight);
			}
		})
		.on("click",function(d,i){
			if (i < chapslip){
				if (i == 0)
					window.location.href = basePath+"display/Display01.jsp";
				else
					window.location.href = basePath+"display/Display"+i+"1.jsp";
			}
		});
		//texts
		texts = svg.selectAll(".MyTexts")
        .data(chaps)
        .enter()
        .append("text")
        .attr("class","MyTexts")
        .attr("id",function(d,i){
			return "t"+i;
		})
		.attr("x",function(d,i){
			return i%3*(rwidth+80)+width/2-(rwidth+80);
		})
		.attr("y",function(d,i){
			return yoff+200*parseInt(i/3)+50+rheight/2+40;
		})
		.style("fill",function(d,i){
			return colorset[i];
		})
		.text(function(d){
			return "";
		})
		.on("mouseover",function(d,i){
			if (i < chapslip){
				d3.select("#r"+i).transition()
				.duration(200)
				.attr("transform","translate(-25,-25)")
				.attr("width",rwidth+50)
				.attr("height",rheight+50);
			}
		})
		.on("mouseout",function(d,i){
			if (i < chapslip){
				d3.select("#r"+i).transition()
				.duration(200)
				.attr("transform","translate(0,0)")
				.attr("width",rwidth)
				.attr("height",rheight);
			}
		})
		.on("click",function(d,i){
			if (i < chapslip){
				if (i == 0)
					window.location.href = basePath+"display/Display01.jsp";
				else
					window.location.href = basePath+"display/Display"+i+"1.jsp";
			}
		});
		//imgs
		var iwidth = 60;
		var iheight = 60;
		imgs = texts = svg.selectAll(".MyImgs")
        .data(chaps)
        .enter()
        .append("svg:image")
        .attr("class","MyImgs")
        .attr("id",function(d,i){
			return "i"+i;
		})
      	.attr("x",function(d,i){
			return i%3*(rwidth+80)+width/2-(rwidth+80)-iwidth/2+5;
		})
		.attr("y",function(d,i){
			return yoff+200*parseInt(i/3)+50+rheight/2-iheight+15;
		})
      	.attr("width", iwidth)
      	.attr("height", iheight)
      	.on("mouseover",function(d,i){
			if (i < chapslip){
				d3.select("#r"+i).transition()
				.duration(200)
				.attr("transform","translate(-25,-25)")
				.attr("width",rwidth+50)
				.attr("height",rheight+50);
			}
		})
		.on("mouseout",function(d,i){
			if (i < chapslip){
				d3.select("#r"+i).transition()
				.duration(200)
				.attr("transform","translate(0,0)")
				.attr("width",rwidth)
				.attr("height",rheight);
			}
		})
		.on("click",function(d,i){
			if (i < chapslip){
				if (i == 0)
					window.location.href = basePath+"display/Display01.jsp";
				else
					window.location.href = basePath+"display/Display"+i+"1.jsp";
			}
		});
		yoff+=200*parseInt(chaps.length/3);
		//copyright
		svg.append("text")
		.attr("x",width/2)
		.attr("y",yoff+=100)
		.style("font-size","15px")
		.style("fill","white")
		.style("text-anchor","middle")
		.text("Copyright · ACTLab&TravelSky");
		svg.attr("height", yoff+=100);
		//flash
		svg.selectAll(".MyRect").transition()
		.duration(300)
		.delay(function(d,i){
			return i*150;
		})
		.attr("width",rwidth)
		.attr("height",rheight)
		.each("end",function(d,i) {
		      d3.select("#t"+i)
		      .text(d);
		      d3.select("#i"+i)
		      .attr("xlink:href",basePath+"display/icon/icon"+i+".png");
		});
		d3.timer(function(){
			time++;
			if (time == 20000) time = 0;
			svg.selectAll(".MyRect")
			.attr("stroke-dashoffset",function(d,i){
				if (i < chapslip) return -time/2;
				else return 0;
			});
			svg.selectAll(".MyLine")
			.attr("stroke-dashoffset",function(d,i){
				return time*5;
			});
		});
	}
	
	
	function init(basePath){
		d3init(basePath);
	}
	</script>
  </head>
  
  <body onload="init('<%=basePath%>')" >
  	<div style="text-align:center;">
  		<img style="margin-top:20px;" src="display/icon/logoindex.png" />
  	</div>
	<div id="container"></div>
  </body>
</html>
