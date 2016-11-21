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
	
		var pagenum = "02";
		
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
								Facebook
							</h3>
							<p style="margin-top:50px">
								Facebook问世于2004年2月4日，目前已经成为全球最大的社交网站，自问世至今12年，他不仅仅是提供了一个可以分享日志照片，记录生活，展示自我的平台，并且深深影响以及改变着所有用户的行为习惯。
							</p >
							<img style="margin-top:50px" src="display/img/pic1010.png" />
							<p style="margin-top:50px">
								Facebook的推荐功能主要采用了<a style="color:darkred">UserCF（基于用户的协同过滤）</a>。UserCF更多的考虑相同爱好的用户兴趣，和用户当前的行为关系不大。例如，用户的朋友访问过什么，利用圈子的社会化行为完成推荐。这种方法具有很强的实时性，尤其是新引入的热点，可以很快的扩散，正好符合facebook推荐的需要。此外，根据相同人群所关注事物的评分来预测某个人对该事物的评分，进而将用户的动态推荐给其他人，也是facebook推荐的一大特色。当facebook用户发布照片和文字内容，或者在浏览其他人的内容时点“赞”，那么他每一个此类操作都会以“新鲜事”的方式呈现在他的好友面前。对于如何将众多的“新鲜事”优选的方式推荐给用户，facebook采用了EdgeRank算法，由以下三个因素决定：与朋友的亲密度，一条新鲜事的成本，以及这条动态的新鲜程度。
							</p >
							<img style="margin-top:50px" src="display/img/pic1011.png" />
							<p style="margin-top:50px">
								据统计，所有Facebook用户的新朋友关系中有<a style="color:darkred">92%来自于朋友的朋友</a>，即好友推荐所产生的“新朋友关系”。而以新闻推荐作为主要内容的NewsFeed，每天已经可以给facebook <a style="color:darkred">带来4000 万刀的收益</a>。可见在大数据时代使用一种合适的推荐方法，是facebook保持良好用户体验和使用效果的重要保证。
							</p >
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								Amazon
							</h3>
							<p style="margin-top:50px">
								Amazon是美国最大的网络电子商务公司，是最早的电子商务的公司之一。该公司为客户提供数百万种独特的商品，拥有海量的数据，以千万计的顾客，以及数百万登记在册的不同商品。在其推荐体系中，老顾客信息丰富，可以从大量的购买和评级中产生推荐，而对于新顾客，由于信息有限，只能以少量购买或产品评级为基础，产生高质量的推荐。
							</p>
							<img style="margin-top:50px" src="display/img/pic1012.png" />
							<p style="margin-top:50px">
								Amazon采用的是<a style="color:darkblue">ItemCF算法（基于物品的协同过滤）</a>。对于商城来说，item的增长速度远不如user的增长速度，而且item之间的相似性远不如user之间的相似性那么敏感，所以可以在离线系统中将item的相似度矩阵计算好，以供线上可以近乎即时地进行推荐。由于这种方法靠的是item之间的相关度进行推荐，所以被推荐的item一般都和喜欢的item在内容和特性上高度相似。
							</p>
							<img style="margin-top:50px" src="display/img/pic1013.png" />
							<p style="margin-top:50px">
								对亚马逊来说，推荐技术很有效的改善了用户体验，和商品评论一起，帮助亚马逊建立最可靠易用的商品资料库，绑定了大量的用户，为亚马逊带来长期稳定的收益。关于推荐系统对amazon销售额的贡献比例，Amazon曾经公布过在2001年到2003年排名前100000的商品中，<a style="color:darkblue">推荐系统贡献了39.2%的销售额</a>。
							</p>
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkgreen">
								美团
							</h3>
							<p style="margin-top:50px">
								美团网是2010年成立的团购网站。美团网有着“美团一次，美一次”的宣传口号。其目标是为消费者发现最值得信赖的商家，让消费者享受超低折扣的优质服务；为商家找到最合适的消费者，给商家带来最大的收益。
							</p>
							<img style="margin-top:50px" src="display/img/pic1014.png" />
							<p style="margin-top:50px">
								美团的推荐系统，首先的是帮助用户快速找到所需，其目标是为消费者快速找到“高品质，低价格”的服务。为此，美团使用了多种推荐方法，其中<a style="color:darkgreen">UserCF</a>推荐算法依赖于当前用户相近的用户群体的社会化行为，使新加入的物品能很快进入推荐列表；<a style="color:darkgreen">ItemCF</a>侧重用户自身的个体行为，使新加入的用户能够很快得到推荐；<a style="color:darkgreen">Location-based</a>推荐算法在具体的业务中可以充分利用用户所处的地理位置。另外美团也设计了加权型，分级型，调制型，过滤型等多种将以上算法进行融合的方法，<a style="color:darkgreen">以数据为基础，用算法去雕琢</a>，将二者有机结合，带来巨大的效果提升。
							</p>
							<img style="margin-top:50px" src="display/img/pic1015.png" />
							<p style="margin-top:50px">
								“猜你喜欢”是美团最重要的推荐产品，目标是让用户打开美团 App的时候，可以最快找到他们想要的团购服务。此项目已经进行了2年多，<a style="color:darkgreen">交易额占比从最初的0.7%提高到7~8%</a>。 “首页频道推荐”也是美团的一项重要推荐产品，根据用户的个人偏好推荐首页频道，<a style="color:darkgreen">这个区域为美团 app带来40%以上交易额</a>。另外还有“今日推荐个性化推送”功能，目的是在用户打开美团 App前，就把他们最感兴趣的服务推送给他们，促使用户点击及下单，大大提高了用户的活跃度。
							</p>
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:purple">
								Netflix
							</h3>
							<p style="margin-top:50px">
								Netflix是一家在线影片租赁提供商。公司能够提供Netflix超大数量的DVD，而且能够让顾客快速方便的挑选影片，同时免费递送。Netflix已经连续五次被评为顾客最满意的网站。可以通过PC、TV及iPad、iPhone收看电影、电视节目，可通过Wii，Xbox360,PS3等设备连接TV。
							</p>
							<img style="margin-top:50px" src="display/img/pic1016.png" />
							<p style="margin-top:50px">
								Netflix的个性化推荐系统向来精准，首页上的个性化包含了按行展示的视频，每一行有一个主题，主题揭示了这行视频的内在联系。大多数的个性化都是基于挑选行视频的方法，包括哪些行该放哪些视频，以及如何对视频排序。Netflix个性化系统的另一个重要元素是<a style="color:purple">认知</a>，想让用户知道是系统是如何把握到他们的喜好的，这不仅仅能使用户信任推荐系统，而且鼓励用户提交更多的反馈来帮助推荐的改善。另外，<a style="color:purple">基于好友的推荐</a>，可以让用户登录facebook产生连接，从而了解用户的朋友们在做什么，并以此对用户进行内容推荐。再者，Netflix的<a style="color:purple">“风格”主题的推荐</a>，包含了像“喜剧”这样的大类，也包含了"时空穿越剧“这样的非常长尾的小类，也给用户留下了深刻印象。<a style="color:purple">基于相似度的推荐</a>也是其提供个性化服务的一方面，相似度是一个很宽泛的概念，描述的对象可以是不同的电影、用户，也可以是评分、视频元信息等。
							</p>
							<img style="margin-top:50px" src="display/img/pic1017.png" />
							<p style="margin-top:50px">
								eBay中90%的用户购物活动都来自于搜索，而Netflix则恰恰相反，推荐是很重要的，而搜索功能只有在无法向用户推荐他们想看的内容时才会发挥作用。Netflix硅谷总部有800名工程师在进行与推荐系统相关的幕后工作。据该公司估计，<a style="color:purple">75%的观看行为是由内容推荐产生</a>。
							</p>
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:brown">
								豆瓣
							</h3>
							<p style="margin-top:50px">
								豆瓣（douban）是一个社区网站，由杨勃（网名“阿北”）创立于2005年。该网站以书影音起家，提供关于书籍、电影、音乐等作品的信息，无论描述还是评论都由用户提供（User-generated content，UGC），是Web 2.0网站中具有特色的一个网站。2012年8月，豆瓣宣布其月度覆盖独立用户数（Unique Visitors）已超过1亿，日均PV为1.6亿。
							</p>
							<img style="margin-top:50px" src="display/img/pic1018.png" />
							<p style="margin-top:50px">
								豆瓣的图书推荐，采用了<a style="color:brown">基于内容的推荐（content-based）与weight-cf相结合</a>的方式。首先把item按照content归类，在这方面，豆瓣有很好的数据库，即用户给图书打的标签（小说，散文，科技，国内，国外等等），然后在类内利用<a style="color:brown">协同过滤（CF）</a>进行推荐，最后把各个类产生的推荐结果加权组合，就形成了推荐结果。豆瓣电影推荐，采用的是专家cf推荐。豆瓣认为，友邻的推荐效果其实比不上和你相关的专家的推荐效果，因为专家给电影评分比较多，而且专家的评分比较可靠和稳定，受到热门等因素的影响小。
							</p>
							<img style="margin-top:50px" src="display/img/pic1019.png" />
							<p style="margin-top:50px">
								豆瓣没有编辑写手，没有特约文章，没有六百行的首页和跳动的最新专题。豆瓣的藏书甚至没有强加给你的“标准分类”。这里所有的内容，分类，筛选，排序都由每一个成员产生和决定。当当、卓越等电子商务网站也同样提供推荐功能，而<a style="color:brown">豆瓣的推荐是他们的核心功能</a>，所以就需要更为准确，推荐系统能让每个人看到不一样的豆瓣。有网友说，豆瓣向他推荐了30多项，居然有3项猜对了，其中不乏比较冷僻的读物，使他<a style="color:brown">“就此沦为豆瓣王国的子民”</a>。另一些网友则认为，豆瓣的“推荐”基本上起到了书友会目录的功能，而且比以畅销为主要准条的书友会推荐更有针对性，更个性化。多参与评价和收藏会对“推荐”起到积极作用。
							</p>
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkred">
								京东
							</h3>
							<p style="margin-top:50px">
								京东（JD.com）是中国最大的自营式电商企业，2015年第一季度在中国自营式B2C电商市场的占有率为56.3%。2014年5月，京东在美国纳斯达克证券交易所正式挂牌上市，成为中国第一个成功赴美上市的大型综合型电商平台，与腾讯、百度等中国互联网巨头共同跻身全球前十大互联网公司排行榜。
							</p>
							<img style="margin-top:50px" src="display/img/pic10110.png" />
							<p style="margin-top:50px">
								京东具有庞大的用户量和全品类的商品，能够根据用户浏览、点击、购买、评论数据以及品牌、品类、描述等商品自身的数据积累，分别做基于用户和基于商品的协同过滤，更精确地进行个性化推荐。总体而言，京东推荐算法的步骤并不神秘，无非是建立召回模型——召回模型效率分析——排序模型三步。召回模型，即候选集的获取，大体从基于用户历史行为的召回、基于用户偏好的召回、基于地域的召回三个维度来实现。<a style="color:darkred">基于行为的召回</a>，根据用户购买行为推荐相关/相似的商品。<a style="color:darkred">基于用户偏好的召回</a>结合商品品牌、适用人群、价格指数以及用户对商品的点击、购买、关注和收藏等行为，京东对用户进行画像，从而确定可以长期推荐的品类。<a style="color:darkred">基于地域的召回</a>，把整个地图划分多个网格运用数据统计结果。以北京为例，三里屯地区用户更感兴趣的商品是扑克牌、水等，中低端小学校的数据主要集中在袜子、晾衣架等等。
							</p>
							<img style="margin-top:50px" src="display/img/pic10111.png" />
							<p style="margin-top:50px">
								在信息过剩的互联网时代，个性化推荐技术对于互联网公司运营的重要性自不待言。京东基于大数据和个性化推荐，实现了向不同用户展示不同的内容的效果，在PC端和移动端都已经为京东<a style="color:darkred">贡献了10%的订单</a>。
							</p>
						</div>
					</div>
				</li>
				<li style="margin-top:50px" class="span11">
					<div class="thumbnail">
						<div class="caption">
							<h3 style="color:darkblue">
								今日头条
							</h3>
							<p style="margin-top:50px">
								今日头条是一款基于数据挖掘的推荐引擎产品，它为用户推荐有价值的、个性化的信息，提供连接人与信息的新型服务，是国内移动互联网领域成长最快的公司之一。当用户使用微博、QQ等社交账号登录今日头条时，它能5秒钟内通过算法解读使用者的兴趣DNA，用户每次动作后，10秒更新用户模型，越用越懂用户，从而进行精准的阅读内容推荐。
							</p>
							<img style="margin-top:50px" src="display/img/pic10112.png" />
							<p style="margin-top:50px">
								今日头条的文章推荐机制是<a style="color:darkblue">个性化推荐机制</a>，最大化保证推送的精准度，尽量保证对的文章推荐给对的人，归根到底这个推荐算法关键在于对海量用户行为的数据分析与挖掘，目的是为实现最精准的<a style="color:darkblue">基于内容的推荐</a>。今日头条的文章推荐主要有以下几类机制：<a style="color:darkblue">基于文章主题相似性的推荐</a>，通过获取与用户阅读过文章的相似文章来进行推荐；<a style="color:darkblue">基于相同城市的新闻</a>，对于拥有相同地理信息的用户，会推荐与之相匹配的城市的热门文章；<a style="color:darkblue">基于文章关键词的推荐</a>，对于每篇文章，提取关键词，作为描述文章内容的一种特征，然后与用户动作历史的文章关键词进行匹配推荐；<a style="color:darkblue">基于站内热门文章的普适性推荐</a>，根据站内用户阅读习惯，找出热门文章，对所有没有阅读过该文章的用户进行推荐，等等。
							</p>
							<img style="margin-top:50px" src="display/img/pic10113.png" />
							<p style="margin-top:50px">
								今日头条是个性化的新闻推荐引擎，在今日头条CEO张一鸣看来，<a style="color:darkblue">推荐算法是这款应用的核心</a>，也是其与传统媒体最本质的区别。今日头条之所以能够非常懂用户，精准推荐出用户所喜好的新闻，完全得益于算法。而正是<a style="color:darkblue">精准推荐</a>，使得今日头条在短短两年多的时间内拥有了<a style="color:darkblue">2.2亿用户</a>，每天有超过2000万用户在今日头条上阅读自己感兴趣的文章。
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
