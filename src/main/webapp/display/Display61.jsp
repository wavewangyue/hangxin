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
	
		var pagenum = "61";

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
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								背景
							</h3>
							<p>
								伴随着大数据应用的讨论、创新，个性化技术成为了一个重要落地点。相比传统的线下会员管理、问卷调查、购物篮分析，大数据第一次使得企业能够通过互联网便利地获取用户更为广泛的反馈信息，为进一步精准、快速地分析资源特征、用户习惯等重要商业信息，提供了足够的数据基础。伴随着对大数据的应用逐步深入，资源画像应运而生，它可以完美地抽象出一个实体资源的信息全貌，可以看作企业应用大数据的根基。
							</p>
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								场景1：酒店画像
							</h3>
							<p>
								A是一家酒店，用户可以通过去哪儿、携程等旅游网站对酒店进行预订，每一个在此居住过的用户也可能对此酒店在大众点评或者预订时的旅游网站对其进行点评。
							</p>
							<img src="display/img/picture6-1-1.png" />
							<h3 style="color:darkblue">
								问题
							</h3>
							<p>
								基于以上场景中的数据基础如何对酒店A进行画像
							</p>
							<h3 style="color:darkblue">
								方案
							</h3>
							<p>
								我们在点评网站或旅游网站中爬取一定数量的酒店的用户评论数据，按照评论归档、评论分词、关键词筛选、PLSA主题模型算法的一系列流程处理，最终为每个酒店得到其主题与关键词，关键词可用作为酒店“贴标签”。
							</p>
							<img src="display/img/picture6-1-2.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								场景2：航班画像
							</h3>
							<p>
								B是一列航班，用户可以通过航旅纵横APP对航班进行预订，每一个乘坐过的用户也可能在航旅纵横APP中对其进行点评。							
							</p>
							<img src="display/img/picture6-1-3.png" />
							<h3 style="color:darkred">
								问题
							</h3>
							<p>
								基于以上场景中的数据基础如何对航班B进行画像
							</p>
							<h3 style="color:darkred">
								方案
							</h3>
							<p>
								我们得到航旅纵横中的航班的用户评论数据后，按照评论归档、评论分词、关键词筛选、PLSA主题模型算法的一系列流程处理，最终为每个航班得到其主题与关键词，关键词可用作为酒店“贴标签”。							
							</p>
							<img src="display/img/picture6-1-4.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkorange">
								场景3：用户画像
							</h3>
							<p>
								C是一个普通的网络用户，有一些潜在的喜好与行为习惯，也可能曾经在航旅纵横网站上有过机票的预定记录，也可能在其他网站有一定的记录。							</p>
							<h3 style="color:darkorange">
								问题
							</h3>
							<p>
								基于以上场景中的数据基础如何对用户C进行画像
							</p>
							<h3 style="color:darkorange">
								方案
							</h3>
							<p>
								对于在航空预定网站上有行为记录的用户，根据其预定的航班的标签推测其用户标签；对于在旅游网站上有评论记录的用户，根据其评论的酒店的标签推测其用户标签；对于在其他网站上有记录的用户（例如微博上的实名认证用户），可以利用其发表过的微博数据来为其进行画像。						
							</p>
							<img src="display/img/picture6-1-5.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:Olive">
								场景4：设备画像
							</h3>
							<p>
								D是一个移动端设备，某用户X使用设备D安装了航旅纵横APP用以预定机票，而航旅纵横APP中已经嵌入了可以获取设备的APP使用记录的APK插件。							
							</p>
							<img src="display/img/picture6-1-6.png" />
							<h3 style="color:Olive">
								问题
							</h3>
							<p>
								基于以上场景中的数据基础如何对设备D进行画像
							</p>
							<h3 style="color:Olive">
								方案
							</h3>
							<p>
								我们利用事先拥有的一定数量的设备的APP使用记录与对应的设备使用者的个人信息，就可以使用机器学习方式训练出模型，此模型描绘了APP使用记录与使用者个人信息之间的对应关系。在用户X安装了航旅纵横APP之后，我们得到了设备D的APP使用记录，就可以利用训练好的模型对其进行画像。							
							</p>
							<img src="display/img/picture6-1-7.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:SlateGray">
								场景5：交易画像
							</h3>
							<p>
								E是机票预订系统中的一项交易行为，由用户X产生。
							</p>
							<h3 style="color:SlateGray">
								问题
							</h3>
							<p>
								基于以上场景中的数据基础如何对交易行为E进行画像，从而判断其合理性与安全性
							</p>
							<h3 style="color:SlateGray">
								方案
							</h3>
							<p>
								我们利用事先拥有的用户X的行为记录，可以建立用户X的一般行为模型，此模型也包括时序的成分，当交易行为E产生时，测试其是否符合用户X的行为模型，如果不符合，交易行为E就会被认为是不合理的、不安全的。
							</p>
							<img src="display/img/picture6-1-8.png" />
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:DarkSlateBlue">
								场景6：标签更新
							</h3>
							<p>
								航旅纵横系统中已经建立一个标签库，但是其中标签的更新周期较长，大多为固定标签，没有实时性，阻碍了标签库的开放。
							</p>
							<h3 style="color:DarkSlateBlue">
								问题
							</h3>
							<p>
								能否使标签库中的标签得到动态更新，提高标签开放安全性
							</p>
							<h3 style="color:DarkSlateBlue">
								方案
							</h3>
							<p>
								对于用户来说，个人基本信息等基本标签是固定的，更新可能性不大，但是其潜在需求、当下需求是有实时性、周期性的，此部分标签的更新具有可行性。另外需要思考，谁会需要此标签？
							</p>
						</div>
					</div>
				</li>
				<li class="span12">
					<div class="thumbnail">
						<div class="caption">
							<h3 >
								结论
							</h3>
							<p>
								通过资源画像，可以完美地抽象出一个实体资源的信息全貌，可以让我们在大数据的背景下快速获得资源特征、用户习惯，无论是应用于推荐系统或者用于云资源标签库的建立都有巨大的意义。
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
