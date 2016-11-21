<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
String[] cityname = {"阿克苏","阿拉木图","阿勒泰","安康","安庆","安阳","鞍山","蚌埠","包头","保山","北海","北京",
					 "常德","常州","朝阳","潮州","成都","赤峰","达县","大理","大连","大同","丹东","德宏芒市",
					 "迪庆","敦煌","恩施","佛山","福州","阜阳","赣州","格尔木","广汉","广州","贵阳","桂林",
					 "哈尔滨","哈密","海口","海拉尔","汉中","杭州","合肥","和田","黑河","衡阳","呼和浩特","黄山",
					 "黄岩","徽州","吉安","吉林","济南","济宁","佳木斯","嘉峪关","锦州","景德镇","九江","酒泉",
					 "喀什","克拉玛依","库车","库尔勒","昆明","拉萨","兰州","丽江","连云港","梁平","林西","临沂",
					 "柳州","庐山","泸州","洛阳","梅县","绵阳","牡丹江","南昌","南充","南京","南宁","南通",
					 "南阳","宁波","齐齐哈尔","秦皇岛","青岛","庆阳","衢州","泉州","三亚","沙市","厦门","汕头",
					 "上海","深圳","沈阳","思茅","太原","天津","通辽","铜仁","万州","威海","潍坊","温州",
					 "乌兰浩特","乌鲁木齐","武汉","武夷山","西安","西昌","西宁","西双版纳","锡林浩特","襄樊","兴城","兴宁",
					 "徐州","烟台","延安","延吉","伊宁","宜宾","宜昌","义乌","银川","榆林","运城","湛江",
					 "张家界","长春","长海","长沙","长治","昭通","郑州","中甸","重庆","舟山","珠海","遵义"};
	int i=0;
	int pagenum = 2;
%>



<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>机票推荐</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>
	<script type="text/javascript">
	
		var boxisfrom=true;
		
		function reset(){
			document.getElementById("fromplace").value="";
			document.getElementById("toplace").value="";
		}
		function fly(User,basePath){
			if (nullofinput(User)){				
				FromPlace = document.getElementById("fromplace").value;
				ToPlace = document.getElementById("toplace").value;
				if (User != ""){
				 	window.location.href = basePath+"Showlist.jsp?from="+FromPlace+"&to="+ToPlace+"&user="+User;
				}
				else window.location.href = basePath+"ShowlistNull.jsp?from="+FromPlace+"&to="+ToPlace;
			}
		}
		function nullofinput(){
			var flag = true;
	
			if (document.getElementById("fromplace").value == "") flag=false;
			if (document.getElementById("toplace").value == "") flag=false;
			if (!flag) 
				document.getElementById("alert1").style.visibility="visible"; 
			return flag;
		}
		function showbox(x){			
			boxisfrom=x;
			document.getElementById("box").style.visibility="visible"; 
		}
		function setpoint(str){
			if (boxisfrom == true){
				document.getElementById("fromplace").value = str;
			}
			else document.getElementById("toplace").value = str;
			document.getElementById("box").style.visibility="hidden";
		}
  	</script>
  </head>


  <body onload="indexerinit(<%=pagenum%>)" style="background-image:url(image/bg2.png);background-size:100%">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<jsp:include page="include/indexer.jsp" />
			<div class="span3">
			<p style="margin-top:100px;margin-left:120px;font-size:20px;color:gray;font-family: 微软雅黑;">
				<Strong>出发地</Strong>
			</p>
			<form class="form-search" style="margin-left:120px">
				<input id="fromplace" name="fromplace" class="input-medium search-query" type="text" style="height:50px;width:200px" onclick="showbox(true)"/>
				 
			</form>
			<p style="margin-left:120px;font-size:20px;color:gray;font-family: 微软雅黑;">
				<Strong>目的地</Strong>
			</p>
			<form class="form-search" style="margin-left:120px">
				<input id="toplace" name="toplace" class="input-medium search-query" type="text" style="height:50px;width:200px " onclick="showbox(false)"/>
			</form> 
			<div>
			<button class="btn btn-large btn-success" type="button" style="margin-top:20px;margin-left:120px" onclick="fly('<%=user%>','<%=basePath%>')">出发</button>
			</div>
			<button class="btn btn-large btn-warning" type="button" style="margin-top:20px;margin-left:120px" onclick="reset()">重置</button>
			<div class="alert alert-error" id="alert1" style="visibility:hidden;width:150px;margin-top:20px;margin-left:120px">
				<Strong>提示！信息不能为空</Strong>
			</div>
			<div class="alert alert-error" id="alert2" style="visibility:hidden;width:150px;margin-top:20px;margin-left:120px">
				<Strong>提示！请先登录</Strong>
			</div>
			</div>
			<div class="row-fluid">
			<div class="span9">
			<div class="btn-group  btn-group-vertical" id="box" style="margin-left:60px;margin-top:60px;visibility:hidden;">
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
				<div>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-inverse" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-primary" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-danger"  type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>
				 <button class="btn btn-small btn-warning" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button> 
				 <button class="btn btn-small btn-success" type="button"  style="width:70px;height:50px;font-family: 微软雅黑;" onclick="setpoint('<%=cityname[i]%>')"><%=cityname[i++]%></button>  
				</div>
			</div> 
			</div>
			</div>
		</div>
	</div>
</div>

  </body>
</html>
