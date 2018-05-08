<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@  page import="java.util.*" %>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <!-- 引入 ECharts 文件 -->
    <script src="echarts/echarts.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Mosaddek">
		<meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
		<link rel="shortcut icon" href="img/favicon.png">

		<title>首页</title>

		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
   		<link href="css/bootstrap-reset.css" rel="stylesheet">
    	<!--external css-->
    	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    	<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
     	<!--right slidebar-->
      	<link href="css/slidebars.css" rel="stylesheet">
    	<!-- Custom styles for this template -->
    	<link href="css/style.css" rel="stylesheet">
    	<link href="css/style-responsive.css" rel="stylesheet" />
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
		<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

		<section id="container">
			<%@include file="header.jsp" %>
	<!--sidebar start-->
	<%@include file="aside.jsp" %>
	<!--sidebar end-->
			<!--main content start-->
			<section id="main-content">
				<section class="wrapper">
					<div class="row">
						<aside class="col-lg-6">
							<section class="panel post-wrap pro-box">
                          	<aside>
                              	<div class="post-info">
                                 	<span class="arrow-pro right"></span>
                                  	<div class="panel-body">
                                    	<h1><strong>大学生艺术团</strong> <br>北京物资学院</h1>
                                    	<div class="desk yellow">
	                                        <h3>-------------------------------</h3>
	                                        <p>北京物资学院大学生艺术团是隶属于校团委的学生艺术团体,它以弘扬先进文化为宗旨，以繁荣校园文化、服务青年学生成长成材为根本。为北京物资学院的莘莘学子提供了广阔的艺术空间和展示自己才华的舞台，培养了大批艺术人才，成为美丽象牙塔里一道清新亮丽的风景线。
	                                        大艺团由礼仪团、舞团、合唱团、戏剧团、管乐团五个分团组成。礼仪团隶属于大学生艺术团，礼仪团的活动就是出礼仪，上台颁奖、引领老师、迎宾等等。</p>
                                    	</div>
                       				</div>
                              	</div>
                          	</aside>
                          	<aside class="post-highlight yellow v-align">
                              	<div class="panel-body text-center">
                                  	<div class="pro-thumb">
                                      	<img src="img/photos/艺术.PNG" alt="">
                                  	</div>
                              	</div>
                          	</aside>
                      		</section>
						</aside>
						<aside class="col-lg-6">
							<div id="myCarousel" class="carousel slide">
								<!-- 轮播（Carousel）指标 -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
									<li data-target="#myCarousel" data-slide-to="3"></li>
									<li data-target="#myCarousel" data-slide-to="4"></li>
								</ol>   
								<!-- 轮播（Carousel）项目 -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/photos/微信图片_201805041056105.jpg" alt="First slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_20180323204032.jpg" alt="Second slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_201805041056104.jpg" alt="Third slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_201805041056102.jpg" alt="Fourth slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_20180504105610.jpg" alt="Fifth slide">
									</div>
								</div>
								<!-- 轮播（Carousel）导航 -->
								<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div> 
						</aside>
					</div>
					<div class="row">
						<aside class="col-lg-12">
                      			<% 
									String sql_select="SELECT* from 用户";
									ResultSet rs = statement.executeQuery(sql_select);
									ResultSetMetaData rmeta = rs.getMetaData();
									//确定数据集的列数，亦字段数
									int numColumns=rmeta.getColumnCount();
									// 输出每条记录 
									int a=0,b=0,c=0,d=0,e=0,f=0;
									for(;rs.next();)
									{
										if(rs.getString("college").equals("信息学院"))
										{
											a++;
										}
										if(rs.getString("college").equals("经济学院"))
										{
											b++;
										}
										if(rs.getString("college").equals("法学院"))
										{
											c++;
										}
										if(rs.getString("college").equals("物流学院"))
										{
											d++;
										}
										if(rs.getString("college").equals("商学院"))
										{
											e++;
										}
										if(rs.getString("college").equals("外语学院"))
										{
											f++;
										}
										
									}
									rs.close(); 
									
								
								%>
								<div id="main" style="width: 1000px;height:500px;"></div>
							    <script type="text/javascript">
							        // 基于准备好的dom，初始化echarts实例
							        var myChart = echarts.init(document.getElementById('main'));
							
							        // 指定图表的配置项和数据
							        var option = {
							            title: {
							                text: '在团人员各学院人数'
							            },
							            tooltip: {},
							            legend: {
							                data:['各学院学生在团人数']
							            },
							            xAxis: {
							                data: ["信息","经济","法","物流","商","外语"]
							            },
							            yAxis: {},
							            series: [{
							                name: '各学院学生在团人数',
							                type: 'bar',
							                data: [<%out.print(a+","+b+","+c+","+d+","+e+","+f);%>]
							            }]
							        };
							  // 使用刚指定的配置项和数据显示图表。
							        myChart.setOption(option);
							    </script>		
                  		</aside>

                 <div class="row">                  		
						<aside class="col-lg-12">
                      		<!--collapse start-->
		                    <div class="panel-group m-bot20" id="accordion">
		                    <% 
		                    String[] id=new String[3];String[] clas=new String[3];
    						id[0]="collapseOne";
    						id[1]="collapseTwo";
    						id[2]="collapseThree";
		                    clas[0]="panel-collapse collapse in";
		                    clas[1]="panel-collapse collapse";
		                    clas[2]="panel-collapse collapse";
		                    	
			                    String sql="select * from 发布新闻  group by time";
	                       		 rs = statement.executeQuery(sql);
    							//ResultSetMetaData rmeta = rs1.getMetaData();
    							//确定数据集的列数，亦字段数
    							//int numColumns=rmeta.getColumnCount();
		                    	for(int i=0;i<3;i++)
		                    	{%>
			                        <div class="panel panel-default">
			                            <div class="panel-heading">
			                                <h4 class="panel-title">
			                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#<% out.print(id[i]); %>">
			                                   		<%    
			                                   		
			                                   	
			                                   			rs.next();
			                                   			String title=rs.getString("title");
			                                   			String z=rs.getString("time");
			                                   			z=z.substring(0,16);
			                                   			out.println(title+"      "+z+"");
			                                   			
			                                   		
			                                 
			                                   		%>
			                                    </a>
			                                </h4>
			                            </div>
			                            <div id="<% out.print(id[i]); %>" class="<% out.print(clas[i]);%>">
			                              	<div class="panel-body">
			                                   <% 
			                                   out.print(rs.getString("zhengwen"));
			                                   	%>
			                                </div>
			                            </div>
			                        </div>
		                    	<% }
		                    	rs.last();
		                    	//out.println("一共"+rs.getRow()+"条记录");
		                    	rs.close(); 
		                    	statement.close();          
		                    	connection.close();

		                    	%>
	                            
	                         	
                      		</div>
                     		<!--collapse end-->
                  		</aside>
					</div>
				</section>
			</section>
			<!--main content end-->
			<!-- Right Slidebar start -->
			<div class="sb-slidebar sb-right sb-style-overlay">
				<h5 class="side-title">Online Customers</h5>

			</div>
			<!-- Right Slidebar end -->

			<!--footer start-->
			<footer class="site-footer">
				<div class="text-center">
					2018 &copy; CMS by BUWGROUP.
					<a href="#" class="go-top">
						<i class="fa fa-angle-up"></i>
					</a>
				</div>
			</footer>
			<!--footer end-->
		</section>
		<!-- js placed at the end of the document so the pages load faster -->
	    <script src="js/jquery.js"></script>
	  	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
	  	<script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
	  	<script src="js/bootstrap.min.js"></script>
	  	<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="js/jquery.scrollTo.min.js"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/respond.min.js" ></script>
	  	<!--right slidebar-->
	  	<script src="js/slidebars.min.js"></script>
	    <!--common script for all pages-->
	    <script src="js/common-scripts.js"></script>
	    <!--script for this page only-->
	    <script src="js/external-dragging-calendar.js"></script>
	    
	    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
      	<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
      	<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       	<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       	<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
        <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
        <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
        <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>


	</body>
</html>