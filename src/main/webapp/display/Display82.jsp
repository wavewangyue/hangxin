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
	
		var pagenum = "82";
		
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
								航空相关热门微博
							</h3>
							<p>2015.12.16-2016.06.16</p>
							<ul id="myTab" class="nav nav-tabs">
  								<li class="active">
  									<a href="#topic1" data-toggle="tab">#1#</a>
   								</li>
   								<li>
   									<a href="#topic2" data-toggle="tab">#2#</a>
   								</li>
   								<li>
   									<a href="#topic3" data-toggle="tab">#3#</a>
   								</li>
   								<li>
   									<a href="#topic4" data-toggle="tab">#4#</a>
   								</li>
   								<li>
   									<a href="#topic5" data-toggle="tab">#5#</a>
   								</li>
   								<li>
   									<a href="#topic6" data-toggle="tab">#6#</a>
   								</li>
   								<li>
   									<a href="#topic7" data-toggle="tab">#7#</a>
   								</li>
   								<li>
   									<a href="#topic8" data-toggle="tab">#8#</a>
   								</li>
   							</ul>
   							<div id="myTabContent" class="tab-content">
   								<div class="tab-pane fade in active" id="topic1">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												海航梦想新体验 
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.06.12
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@刘烨
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">5101万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												大家知道吗？哥是以色列国家旅游形象大使，嗯嗯。今天海南航空开了中国到以色列直航，到以色列这个牛掰的旅游处女地就一个航班的事，大家抓紧。哥为了回馈社员，转发里挑俩亲陪哥参加十一月份的以色列马拉松！
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">40082</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">25213</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">90229</font>
											</td>
										</tr>
									</tbody>
									</table>
   								</div>
   								<div class="tab-pane fade" id="topic2">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												两名男乘客辱骂殴打空姐 
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.06.13
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@航空事
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">5万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												6月12日下午5点，航班号HU7041航班。两名男乘客用经济舱的票强行占用头等舱座位后，拒绝补差价和坐回经济舱同时辱骂殴打空姐，据旅客爆料称，两名空姐均有不同程度的受伤。整个过程中旅客都在全程围观拍照，除了经济舱一名小伙子上前试图拉开打人者，其他无一人上前劝阻
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">4682</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">2016</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">467</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
   								<div class="tab-pane fade" id="topic3">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												维也纳国际机场国航值机柜台前爆发冲突
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.04.28
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@曹山石
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">59万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												今天的维也纳国际机场，维也纳飞往北京的国航CA842公务舱值机柜台前爆发冲突，惹得一堆老外侧目。看热闹的一打听，原来是插队引发的：河北东升的董事长带着持公务护照的官员一起，坐公务舱插队。见人拍照，号称要来砸手机，这又不是在国内。
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">13219</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">6388</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">9934</font>
											</td>
										</tr>
									</tbody>
									</table>
   								</div>
   								<div class="tab-pane fade" id="topic4">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												李易峰兰博基尼出车祸
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.05.27
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@法制晚报、#李易峰
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">1236万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												法晚记者联系首都机场工作人员，对方称今晨艺人李易峰确实出现在了机场T3航站楼。记者从知情人士处得知，李易峰此次摩纳哥之旅是为某品牌商业活动及工作组照拍摄。此行程为多日前确定，并非因撞车事件躲避风头。
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">4579</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">1309</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">3016</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
  								<div class="tab-pane fade" id="topic5">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												李宇春现身首都机场启程戛纳
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.05.13
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@新浪时尚、#李宇春
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">389万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												李宇春现身首都机场准备飞往法国参加#第69届戛纳国际电影节# ，现场由大批粉丝相送 。春春身着帽衫和牛仔裤，脚穿@Givenchy紀梵希 为其特别推出的GIVENCHY CL SNEAKER，并用帽衫遮住头发十分低调，化身大白淡定疾走。
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">1878</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">1005</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">4237</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
  								<div class="tab-pane fade" id="topic6">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												南航22岁空少跟宋仲基长得非常像
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.06.07
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@新浪娱乐、#宋仲基
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">1771万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												近日有网友发现南航一名22岁的空少，竟跟#宋仲基#长得非常像！好帅!航空空少撞脸意... 好想知道是哪个航班的[害羞]
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">3020</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">5607</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">27503</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
  								<div class="tab-pane fade" id="topic7">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												一妇女让孩子在飞机地板上小便
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.05.02
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@央视新闻
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">4323万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												网友曝料：4月30日乘坐CA1332航班由郑州飞往北京，飞机快降落时，同排小女孩要上厕所，女孩家人竟让她蹲在座位下面小便。看到这一幕，空乘也懵了。对此，国航工作人员回应称情况属实，呼吁广大乘客文明出行。
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">1518</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">2531</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">5506</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
  								<div class="tab-pane fade" id="topic8">
      								<table class="table table-bordered" style="font-size:18px">
									<tbody>
										<tr>
											<td style="font-weight:bold">话题名称</td>
											<td style="width:80%">
												六小龄童归家
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">时间</td>
											<td>
												2016.02.08
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">参与人物</td>
											<td>
												@六小龄童
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">粉丝数</td>
											<td>
												<font style="color:darkred">449万</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">微博详情</td>
											<td>
												首都机场，回家的感觉真好。
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">转发数</td>
											<td>
												<font style="color:darkblue">2191</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">评论数</td>
											<td>
												<font style="color:darkgreen">9240</font>
											</td>
										</tr>
										<tr>
											<td style="font-weight:bold">点赞数</td>
											<td>
												<font style="color:purple">247159</font>
											</td>
										</tr>
									</tbody>
									</table>
  								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
  </body>
</html>
