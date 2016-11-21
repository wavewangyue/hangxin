<%@ page language="java" import="java.util.*,act.hangxin.model.*,act.hangxin.repository.*" pageEncoding="UTF-8"%>
<%@ include file="include/init.jsp" %>
<%
	int pagenum = 2;

String from = request.getParameter("from");
from = new String(from.getBytes("iso-8859-1"),"UTF-8");
String to = request.getParameter("to");
to = new String(to.getBytes("iso-8859-1"),"UTF-8");

System.out.println("from:"+from);
System.out.println("to:"+to);


planeTerm[] pt;
hotelTerm[] ht;
int rank = 0;
int max = 15;
Random ra =new Random();

connect con = new connect();
int incnum = ra.nextInt(3);
int jobnum = ra.nextInt(3);
int sexnum = ra.nextInt(2);
int agenum = ra.nextInt(3);
int edunum = ra.nextInt(3);
if (incnum == 0) rank = ra.nextInt(5);
	else if (incnum == 1) rank = ra.nextInt(5)+5;
	else rank = ra.nextInt(5)+10;
pt = con.getplanelist(from,to,rank,max);
ht = con.gethotellist(to,rank,max);
int modelnum = ra.nextInt(4);

String[] modellist1 = {"豪华商务型","舒适游客型","豪华度假型","舒适休闲型"};
String[] modellist2 = {"经济商务型","经济游客型","经济度假型","经济休闲型"};
String[] sexlist = {"0(男)","1(女)"};
String[] agelist = {"-1(年轻)","0(中年)","1(年长)"};
String[] edulist = {"-1(本科以下)","0(大学本科)","1(本科以上)"};
String[] joblist = {"-1(一般职员以下)","0(一般职员)","1(一般职员以上)"};
String[] inclist = {"-1(5000元以下)","0(5000-12000元)","1(12000以上)"};
String modelinginfo;
String modelinfo = "";
if (rank > 5) modelinginfo = modellist1[modelnum];
	else	  modelinginfo = modellist2[modelnum];
modelinfo += "用户的行为向量：\\n";
modelinfo += "随机分配\\n";
modelinfo += "\\n";
modelinfo += "用户的建模结果：\\n";
modelinfo += "Sex:"+sexlist[sexnum]+"\\n";
modelinfo += "Age:"+agelist[agenum]+"\\n";
modelinfo += "Edu:"+edulist[edunum]+"\\n";
modelinfo += "Job:"+joblist[jobnum]+"\\n";
modelinfo += "Inc:"+inclist[incnum]+"\\n";
modelinfo += "\\n";
modelinfo += "根据用户的建模结果，结合数据库中与用户建模结果相似的用户进行统计，得到用户的匹配主题：\\n";
modelinfo += modelinginfo+"\\n";

String[] pic = {"image/room"+rank+".png",
				"image/room"+(rank+1)+".png",
				"image/room"+(rank+2)+".png",
				"image/room"+(rank+3)+".png",
				"image/room"+(rank+4)+".png"};
int[] comnum = {ra.nextInt(6),ra.nextInt(6),ra.nextInt(6),ra.nextInt(6),ra.nextInt(6)};
int[] ticnum = {ra.nextInt(5),ra.nextInt(5),ra.nextInt(5),ra.nextInt(5),ra.nextInt(5)};
String[][] tic = {{"MU1414","MU4854","MU5735","MU5422","MU7861"},
				 {"HU2815","HU2485","HU5545","HU5485","HU5755"},
				 {"CA2545","CA4855","CA5986","CA5653","CA2148"},
				 {"3U5339","3U2876","3U7515","3U9623","3U7412"},
				 {"ZH3214","ZH7532","ZH6547","ZH9512","ZH3574"},
				 {"OQ9567","OQ6599","OQ2214","OQ3661","OQ2564"}};
String[] company = {"东方航空","海南航空","中国国际航空","四川航空","深圳航空","重庆航空"};
String[] pic0 = {"image/comp"+(comnum[0]+1)+".png",
				"image/comp"+(comnum[1]+1)+".png",
				"image/comp"+(comnum[2]+1)+".png",
				"image/comp"+(comnum[3]+1)+".png",
				"image/comp"+(comnum[4]+1)+".png"};
%>

 
<!DOCTYPE HTML>
<html style="overflow:auto;overflow-x:hidden">
  <head>
    <base href="<%=basePath%>">
    
    <title>推荐列表</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	  <script src="js/jquery.js"></script>

	<script type="text/javascript">
		function showmodel(modelinfo){
			alert(modelinfo);
		}
	</script>
  </head>
  
  <body onload="indexerinit(<%=pagenum%>)">
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<jsp:include page="include/indexer.jsp" />
			

			
			<div class="row-fluid" style="height:100%;background-color:#856363;">
				<h3 class="text-center" style="font-size:20px;color:white;font-family: 微软雅黑;">
					用户 <font style="font-family:微软雅黑;font-size:20px;color:red;">未登录</font> 的推荐列表
				</h3>
				<div class="row-fluid" style="background-color:white">
					<div class="span6" style="font-family: 微软雅黑;">
		
						<img style="margin-top:20px;margin-left:45%" src="image/plane.png" />
						
						<table class="table table-hover table-striped" style="margin-left:10px">
						<thead>
							<tr>
								<th></th><th></th><th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img style="margin-left:20px" src=<%=pic0[0]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:15px"><Strong><%=pt[0].name%></Strong></div>
									<div style="margin-top:10px">舱位：<%=pt[0].cls%></div>
								</td>
								<td>
									<div style="margin-top:5px"><%=company[comnum[0]]%> 航班号：<%=tic[comnum[0]][ticnum[0]]%></div>
									<div style="margin-top:5px">起飞时间：<%=pt[0].time%></div>
									<div style="margin-top:5px">航程：<%=pt[0].distance%>KM</div>
								</td>
								
							</tr>
							<tr class="success">
								<td>
									<img style="margin-left:20px" src=<%=pic0[1]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:15px"><Strong><%=pt[1].name%></Strong></div>
									<div style="margin-top:10px">舱位：<%=pt[1].cls%></div>
								</td>
								<td>
									<div style="margin-top:5px"><%=company[comnum[1]]%> 航班号：<%=tic[comnum[1]][ticnum[1]]%></div>
									<div style="margin-top:5px">起飞时间：<%=pt[1].time%></div>
									<div style="margin-top:5px">航程：<%=pt[1].distance%>KM</div>
								</td>
								
							</tr>
							<tr class="error">
								<td>
									<img style="margin-left:20px" src=<%=pic0[2]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:15px"><Strong><%=pt[2].name%></Strong></div>
									<div style="margin-top:10px">舱位：<%=pt[2].cls%></div>
								</td>
								<td>
									<div style="margin-top:5px"><%=company[comnum[2]]%> 航班号：<%=tic[comnum[2]][ticnum[2]]%></div>
									<div style="margin-top:5px">起飞时间：<%=pt[2].time%></div>
									<div style="margin-top:5px">航程：<%=pt[2].distance%>KM</div>
								</td>
								
							</tr>
							<tr class="warning">
								<td>
									<img style="margin-left:20px" src=<%=pic0[3]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:15px"><Strong><%=pt[3].name%></Strong></div>
									<div style="margin-top:10px">舱位：<%=pt[3].cls%></div>
								</td>
								<td>
									<div style="margin-top:5px"><%=company[comnum[3]]%> 航班号：<%=tic[comnum[3]][ticnum[3]]%></div>
									<div style="margin-top:5px">起飞时间：<%=pt[3].time%></div>
									<div style="margin-top:5px">航程：<%=pt[3].distance%>KM</div>
								</td>
								
							</tr>
							<tr class="info">
								<td>
									<img style="margin-left:20px" src=<%=pic0[4]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:15px"><Strong><%=pt[4].name%></Strong></div>
									<div style="margin-top:10px">舱位：<%=pt[4].cls%></div>
								</td>
								<td>
									<div style="margin-top:5px"><%=company[comnum[4]]%> 航班号：<%=tic[comnum[4]][ticnum[4]]%></div>
									<div style="margin-top:5px">起飞时间：<%=pt[4].time%></div>
									<div style="margin-top:5px">航程：<%=pt[4].distance%>KM</div>
								</td>
								
							</tr>
						</tbody>
					</table>			
						
					</div>
					<div class="span6" style="font-family: 微软雅黑;" >
				
						<img style="margin-top:20px;margin-left:45%" src="image/hotel.png" />
						<table class="table table-hover table-striped" style="margin-left:5px;">
						<thead>
							<tr>
								<th></th><th></th><th></th><th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img style="margin-left:20px" src=<%=pic[0]%> />
								</td>
								<td>
									<div style="font-size:20px;margin-top:30px;text-align:center;"><Strong><%=ht[0].name%></Strong></div>
								</td>
								<td>
									<div style="margin-top:10px">地址：<%=ht[0].address%></div>
									<div style="margin-top:10px">平均价位：<%=ht[0].price%></div>
								</td>
								
							</tr>
							<tr class="success">
								<td>
									<img style="margin-left:20px" src=<%=pic[1]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:30px;text-align:center;"><Strong><%=ht[1].name%></Strong></div>
								</td>
								<td>
									<div style="margin-top:10px">地址：<%=ht[1].address%></div>
									<div style="margin-top:10px">平均价位：<%=ht[1].price%></div>
								</td>
								
							</tr>
							<tr class="error">
								<td>
									<img style="margin-left:20px" src=<%=pic[2]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:30px;text-align:center;"><Strong><%=ht[2].name%></Strong></div>
								</td>
								<td>
									<div style="margin-top:10px">地址：<%=ht[2].address%></div>
									<div style="margin-top:10px">平均价位：<%=ht[2].price%></div>
								</td>
								
							</tr>
							<tr class="warning">
								<td>
									<img style="margin-left:20px" src=<%=pic[3]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:30px;text-align:center;"><Strong><%=ht[3].name%></Strong></div>
								</td>
								<td>
									<div style="margin-top:10px">地址：<%=ht[3].address%></div>
									<div style="margin-top:10px">平均价位：<%=ht[3].price%></div>
								</td>
								
							</tr>
							<tr class="info">
								<td>
									<img style="margin-left:20px" src=<%=pic[4]%> />
								</td>
								<td >
									<div style="font-size:20px;margin-top:30px;text-align:center;"><Strong><%=ht[4].name%></Strong></div>
								</td>
								<td>
									<div style="margin-top:10px">地址：<%=ht[4].address%></div>
									<div style="margin-top:10px">平均价位：<%=ht[4].price%></div>
								</td>
								
							</tr>
						</tbody>
					</table>
					<button class="btn btn-small btn-inverse" type="button"  style="float:right;margin-top:5%;margin-right:0px;width:120px;height:40px;font-family: 微软雅黑;" onclick="showmodel('<%=modelinfo%>')">查看用户建模信息</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

  </body>
</html>
