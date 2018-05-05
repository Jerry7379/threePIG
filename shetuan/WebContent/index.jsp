<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@  page import="java.util.*" %>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	                                        <h3>------------------------------------</h3>
	                                        <p>大艺团由礼仪团、舞团、合唱团、戏剧团、管乐团五个分团组成。礼仪团隶属于大学生艺术团，礼仪团的活动就是出礼仪，上台颁奖、引领老师、迎宾等等。</p>
                                    	</div>
                       				</div>
                              	</div>
                          	</aside>
                          	<aside class="post-highlight yellow v-align">
                              	<div class="panel-body text-center">
                                  	<div class="pro-thumb">
                                      	<img src="img/photos/微信图片_20180323204139.jpg" alt="">
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
								</ol>   
								<!-- 轮播（Carousel）项目 -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/404_icon.png" alt="First slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_20180323204032.jpg" alt="Second slide">
									</div>
									<div class="item">
										<img src="img/photos/微信图片_20180323204139.jpg" alt="Third slide">
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
						<aside class="col-lg-6">
                      		<section class="panel">
                          		<div class="panel-body">
                              		<div id="calendar" class="has-toolbar"></div>
                          		</div>
                      		</section>
                  		</aside>
						<aside class="col-lg-6">
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
	                       		ResultSet rs = statement.executeQuery(sql);
    							ResultSetMetaData rmeta = rs.getMetaData();
    							//确定数据集的列数，亦字段数
    							int numColumns=rmeta.getColumnCount();
		                    	for(int i=0;i<3;i++)
		                    	{%>
			                        <div class="panel panel-default">
			                            <div class="panel-heading">
			                                <h4 class="panel-title">
			                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#<% out.print(id[i]); %>">
			                                   		<%    
			                                   		
			                                   	
			                                   			rs.next();
			                                   			String c=rs.getString("title");
			                                   			String a=rs.getString("time");
			                                   			a=a.substring(0,16);
			                                   			out.println(c+"      "+a+"");
			                                   			
			                                   		
			                                 
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