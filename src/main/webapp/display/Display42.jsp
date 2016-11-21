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
	
		var pagenum = "42";

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
							<h3 style="color:darkred">
								获取评论
							</h3>
							<p style="margin-top:40px">
								对500个酒店的评论数据进行整理，为每一个酒店整理一个评论文档，把此酒店的所有评论归入该酒店的文档中
							</p >
							<p style="margin-top:40px">
								文档实例（部分截取）：三亚太阳湾柏悦酒店
							</p >
							<img src="display/img/pic421.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								评论分词（ICTCLAS）
							</h3>
							<p style="margin-top:20px">
								对所有评论进行分词处理，得到20000+的关键词汇，对低频词与无意义的词语进行筛选，得到如下所示200+的高频关键词汇
							</p>
							<img src="display/img/pic422.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								PLSA主题模型与EM算法
							</h3>
							<p style="margin-top:40px">
								概率潜在语义分析（Probabilistic Latent Semantic Analysis）
							</p >
							<p style="margin-top:40px">
								在得到了上面的数据基础后，使用pLSA主题模型算法，得到下面的三个矩阵
							</p >
							<p style="margin-top:40px">
								最大期望算法（Expectation Maximization Algorithm）
							</p >
							<p style="margin-top:40px">
								用以估计PLSA计算中所需的参数
							</p >
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkgreen">
								酒店-关键词矩阵
							</h3>
							<p style="margin-top:20px">
								统计所有酒店评论文档，建立规模为500x200的酒店-关键词矩阵
							</p>
							<p style="margin-top:20px">
								500行：500个酒店
							</p>
							<p style="margin-top:20px">
								200列：200个主题关键词
							</p>
							<p style="margin-top:20px">
								x行y列的节点意义：在酒店x的评论文档中关键词y出现的次数
							</p>
							<img style="margin-top:20px" src="display/img/pic423.png" />
							<p style="margin-top:20px">
								矩阵示例：三亚太阳湾柏悦酒店
							</p>
							<p style="margin-top:20px">
								观察几个出现频率较高的词语，其中出现19次的词语为“度假”，出现8次的词语为“沙滩”
							</p>
							<img style="margin-top:20px" src="display/img/pic427.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:purple">
								关键词-主题矩阵
							</h3>
							<p style="margin-top:20px">
								对所有200个主题关键词进行聚类处理，类别数为4，聚类结果为4x200的关键词-主题矩阵
							</p>
							<p style="margin-top:20px">
								4行：聚类处理后所得的4类主题
							</p>
							<p style="margin-top:20px">
								200列：200个主题关键词
							</p>
							<p style="margin-top:20px">
								x行y列的节点意义：关键词y属于主题x的概率
							</p>
							<img style="margin-top:20px" src="display/img/pic424.png" />
							<p style="margin-top:50px">
								对关键词-主题矩阵进行分析处理，规定为每个主题选出10个出现频率高，特征性强，分类效果明显的主题关键词
							</p>
							<p style="margin-top:20px">
								以下为从200个关键词中机器自动筛选出的能划分4个主题的40个关键词
							</p>
							<p style="margin-top:20px">
								4行：4类主题
							</p>
							<p style="margin-top:20px">
								10列：每个主题对应的10个关键词
							</p>
							<img style="margin-top:20px" src="display/img/pic425.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:blue">
								酒店-主题矩阵
							</h3>
							<p style="margin-top:20px">
								对所有500个酒店结合之前生成的酒店-关键词矩阵与关键词-主题矩阵进行关联统计，得到4x500的酒店-主题矩阵
							</p>
							<p style="margin-top:20px">
								4行：4类主题
							</p>
							<p style="margin-top:20px">
								500列：500个酒店
							</p>
							<p style="margin-top:20px">
								x行y列的节点意义：酒店y属于主题x的概率，概率最高的就可决定酒店所属主题
							</p>
							<img style="margin-top:20px" src="display/img/pic426.png" />
							<p style="margin-top:20px">
								示例：三亚太阳湾柏悦酒店
							</p>
							<p style="margin-top:20px">
								可以看到，该酒店所属主题概率最大的为 主题3
							</p>
							<img style="margin-top:20px" src="display/img/pic428.png" />
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<table class="table" style="margin-top:5%;font-size:20px;font-family:微软雅黑">
				<thead>
					<tr>
						<th style = "width:15%;text-align:center;">
							主题
						</th>
						<th style = "width:20%;text-align:center;">
							主题关键词
						</th>
						<th style = "width:20%;text-align:center;">
							示例酒店
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="success">
						<td style = "height:150px;text-align:center;">
							<div style="margin-top:50px;"> </div>
							主题1
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:50px;"> </div>
							蛋糕,婚礼,开会,吃饭,新鲜,会议,大酒店,池子,婚宴,晚餐
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:10px;"> </div>
							<p>怡生园国际会议中心</p>
							<p>北京西国贸大酒店</p>
							<p>长白山国际酒店</p>
							<p>万方苑国际酒店</p>
						</td>
						
					</tr>
					<tr class="error">
						<td style = "height:150px;text-align:center;">
							<div style="margin-top:50px;"> </div>
							主题2
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:50px;"> </div>
							隔音,预定,空调,如家,网上,好找,浴室,地铁站,退房,便利
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:10px;"> </div>
							<p>7天连锁酒店(六道口店)</p>
							<p>爱舍空间主题概念酒店</p>
							<p>如家快捷酒店(人民广场店)</p>
							<p>和园国际青年旅舍</p>
						</td>
						
					</tr>
					<tr class="warning">
						<td style = "height:150px;text-align:center;">
							<div style="margin-top:50px;"> </div>
							主题3
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:50px;"> </div>
							休闲,度假,别墅,阳台,沙滩,机场,游泳,水果,舒适,热情
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:10px;"> </div>
							<p>三亚太阳湾柏悦酒店</p>
							<p>万丽度假酒店泉SPA</p>
							<p>亚龙湾喜来登度假酒店</p>
							<p>三亚玉华苑海景酒店</p>
						</td>
						
					</tr>
					<tr class="info">
						<td style = "height:150px;text-align:center;">
							<div style="margin-top:50px;"> </div>
							主题4
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:50px;"> </div>
							套房,咖啡,行政,楼层,下午茶,地段,硬件,沙发,建筑,布置
						</td>
						<td style = "height:100px;text-align:center;font-family:楷体;">
							<div style="margin-top:10px;"> </div>
							<p>北京珠三角JW万豪酒店</p>
							<p>上海世博洲际酒店</p>
							<p>椰林滩大酒店</p>
							<p>外滩华尔道夫酒店</p>
						</td>
					</tr>
				</tbody>
			</table>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
