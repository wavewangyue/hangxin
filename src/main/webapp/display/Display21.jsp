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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
	
		var pagenum = "21";
		
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
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								本体知识库架构
							</h3>
							<p style="margin-top:20px;margin-left:0px;">
								<a style="font-size:25px;color:darkred"><Strong>输入 </Strong></a>已有数据源（机票数据、用户历史订单数据），网络数据源（酒店信息、用户信息、酒店评论信息）
							</p>
							<p style="margin-top:20px;margin-left:0px;">
								<a style="font-size:25px;color:darkorange"><Strong>输出 </Strong></a>数据访问接口（中间层：数据进一步处理）（顶层：数据前端展示）
							</p>
							<p style="margin-top:20px;margin-left:0px;">
								<a style="font-size:25px;color:darkgreen"><Strong>所需研究 </Strong></a>Scrapy网络爬虫
							</p>
							<img src="display/img/pic204.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								网络爬虫
							</h3>
							<p>
								系统中通过网络爬虫和已有的其他数据来生成基本的sql数据表，作为本体知识库的数据支持。
							</p>
							<img src="display/img/pic205.png" />
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								爬取网站
							</h3>
							<p>
								大众点评，携程，去哪儿
							</p>
							
						</div>
					</div>
				</li>
				<li class="span9">
					<div class="thumbnail">
						<img src="display/img/pic1.png" />
						<div class="caption">
							<h3>
								爬取酒店基本信息
							</h3>
							<p>
								酒店名称、酒店地址、酒店价格、酒店评分、酒店标签
							</p>
							
						</div>
					</div>
				</li>
				<li class="span9">
					<div class="thumbnail">
						<img src="display/img/pic2.png" />
						<div class="caption">
							<h3>
								爬取用户信息
							</h3>
							<p>
								用户名、城市、性别、评论数、贡献度
							</p>
							
						</div>
					</div>
				</li>
				<li class="span9">
					<div class="thumbnail">
						<img src="display/img/pic3.png" />
						<div class="caption">
							<h3>
								爬取用户评论信息
							</h3>
							<p>
								评论者、酒店、评分、评论内容、评论标签
							</p>							
						</div>
					</div>
				</li>
				<li class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								数据爬取结果
							</h3>
							<p style="margin-top:50px">酒店（城市、名称、价格、评分、地址等）（数据量：121550）</p>
							<p style="margin-top:20px">经统计，拥有酒店数最多的5个城市：北京、上海、广州、杭州、深圳，加起来占总数10%，且低价位酒店较多，高价位酒店较少</p>
							<img style="margin-top:20px" src="display/img/pic003.png" />
							<p style="margin-top:50px">用户（用户名、性别、城市、贡献度、评论过的酒店等）（数据量：250000）</p>
							<p style="margin-top:20px">经统计，用户性别男女比为1：2，拥有用户数最多的5个城市：上海、北京、广州、天津、南京，加起来约占总数50%</p>
							<img style="margin-top:20px" src="display/img/pic004.png" />
							<p style="margin-top:50px">评论（评论用户、所评价酒店、评论内容、评论时间等）（数据量：1357714）</p>
							<p style="margin-top:20px">经统计，约为65%的酒店拥有少于10条的评论，约为50%的用户拥有少于10条的评论，可见存在一定的数据稀疏性</p>
							<img style="margin-top:20px" src="display/img/pic005.png" />							
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
