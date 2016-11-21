<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/init.jsp" %>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">

	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.js"></script>   
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

  </head>
  	<script>
  		function setpage(pagenum){
  			var chapnum = pagenum.toString();
  			chapnum=chapnum.substring(0,chapnum.length-1);
  			
			d3.select("#label"+pagenum)
			.attr("class","active");
			
			d3.select("#accordion-element-"+chapnum)
			.attr("class","accordion-body collapse in");
		}
  	</script>
  		<div class="span3">
  		</div>
 		<div style="width:23%;height:100%;position:fixed;overflow:hidden;background-color:#414141">
 		<div style="width:102%;height:100%;overflow-x:hidden;overflow-y:auto;padding-right:4%">
			<ul class="nav nav-tabs nav-stacked" style="margin-top:50px;margin-bottom:50px;margin-right:15px;text-align:right">
				<li >
					<a style="color:GreenYellow;font-family:微软雅黑;font-size:18px" href="display/Display0.jsp"><Strong>INDEX</Strong></a>
				</li>
				<li >
					<a style="color:Orange;font-family:微软雅黑;font-size:18px" href="Index.jsp"><Strong>EXIT</Strong></a>
				</li>
			</ul>
			<div class="accordion" id="accordion-0" style="font-family:微软雅黑">
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-0">0 背景与故事</a>
					</div>
					<div id="accordion-element-0" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label01">
								<a href="display/Display01.jsp">项目背景</a>
							</li>
							<li id="label02">
								<a href="display/Display02.jsp">用户故事</a>
							</li>
							<li id="label03">
								<a href="display/Display03.jsp">研究框架与系统架构</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-1">1 传统推荐算法</a>
					</div>
					<div id="accordion-element-1" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label11">
								<a href="display/Display11.jsp">各算法优缺点</a>
							</li>
							<li id="label12">
								<a href="display/Display12.jsp">准确率与召回率</a>
							</li>
							<li id="label13">
								<a href="display/Display13.jsp">算法时间性能</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-2">2 本体知识库</a>
					</div>
					<div id="accordion-element-2" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label21">
								<a href="display/Display21.jsp">数据爬取</a>
							</li>
							<li id="label22">
								<a href="display/Display22.jsp">集群状态</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-3">3 无先验信息下跨域推荐</a>
					</div>
					<div id="accordion-element-3" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label31">
								<a href="display/Display31.jsp" >Retargeting与获得广告支持</a>
							</li>
							<li id="label32">
								<a href="display/Display32.jsp" >模拟用户建模</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-4">4 主题发现</a>
					</div>
					<div id="accordion-element-4" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label41">
								<a href="display/Display41.jsp" >主题规则</a>
							</li>
							<li id="label42">
								<a href="display/Display42.jsp" >主题模型</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-5">5 基于主题的组合推荐</a>
					</div>
					<div id="accordion-element-5" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label51">
								<a href="display/Display51.jsp" >组合推荐</a>
							</li>
							<li id="label52">
								<a href="display/Display52.jsp" >机票主题规则</a>
							</li>
							<li id="label53">
								<a href="display/Display53.jsp" >酒店分类结果</a>
							</li>
							<li id="label54">
								<a href="display/Display54.jsp" >套餐分类结果</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-6">6 资源画像</a>
					</div>
					<div id="accordion-element-6" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label61">
								<a href="display/Display61.jsp" >原型演示</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-7">7 交易安全</a>
					</div>
					<div id="accordion-element-7" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label71">
								<a href="display/Display71.jsp" >原型演示</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-0" href="#accordion-element-8">8 个性化营销</a>
					</div>
					<div id="accordion-element-8" class="accordion-body collapse">
						<div class="accordion-inner">
							<ul class="nav nav-tabs nav-stacked">
							<li id="label81">
								<a href="display/Display81.jsp" >原型演示</a>
							</li>
							<li id="label82">
								<a href="display/Display82.jsp" >微博相关数据分析</a>
							</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<p style="margin-bottom:80px;margin-right:20px;text-align:right;font-size:16px;color:white;font-family:微软雅黑"><Strong>TO BE CONTINUE...</Strong></p>
		</div>
		</div>
</html>
