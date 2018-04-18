<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Mosaddek">
		<meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
		<link rel="shortcut icon" href="img/favicon.png">

		<title>��ҳ</title>

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
	<aside>
		<div id="sidebar" class="nav-collapse ">
			<!-- sidebar menu start-->
			<ul class="sidebar-menu" id="nav-accordion">
				<li>
					<a class="active" href="index.jsp">
						<i class="glyphicon glyphicon-home"></i>
						<span>��ҳ</span>
					</a>
				</li>

				<li class="sub-menu">
					<a href="H_bangongshi.jsp">
						<i class="glyphicon glyphicon-folder-open"></i>
						<span>�칫��</span>
					</a>
				</li>

				<li class="sub-menu">
					<a href="H_xuanchuan.jsp">
						<i class="glyphicon glyphicon-bullhorn"></i>
						<span>������</span>
					</a>
				</li>
						
					<li class="sub-menu">
						<a href="H_zuzhi.jsp">
							<i class="glyphicon glyphicon-flag"></i>
							<span>��֯��</span>
						</a>
					</li>

					<li class="sub-menu">
						<a href="member11.html">	
							<i class="glyphicon glyphicon-stats"></i>
							<span>��������</span>
						</a>
					</li>
				</ul>
			</div>
		</aside>
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
                                    	<h1><strong>��ѧ��������</strong> <br>��������ѧԺ</h1>
                                    	<div class="desk yellow">
	                                        <h3>------------------------------------</h3>
	                                        <p>�������������š����š��ϳ��š�Ϸ���š����������������ɡ������������ڴ�ѧ�������ţ������ŵĻ���ǳ����ǣ���̨�佱��������ʦ��ӭ���ȵȡ�</p>
                                    	</div>
                       				</div>
                              	</div>
                          	</aside>
                          	<aside class="post-highlight yellow v-align">
                              	<div class="panel-body text-center">
                                  	<div class="pro-thumb">
                                      	<img src="img/photos/΢��ͼƬ_20180323204139.jpg" alt="">
                                  	</div>
                              	</div>
                          	</aside>
                      		</section>
						</aside>
						<aside class="col-lg-6">
							<div id="myCarousel" class="carousel slide">
								<!-- �ֲ���Carousel��ָ�� -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
								</ol>   
								<!-- �ֲ���Carousel����Ŀ -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/404_icon.png" alt="First slide">
									</div>
									<div class="item">
										<img src="img/photos/΢��ͼƬ_20180323204032.jpg" alt="Second slide">
									</div>
									<div class="item">
										<img src="img/photos/΢��ͼƬ_20180323204139.jpg" alt="Third slide">
									</div>
								</div>
								<!-- �ֲ���Carousel������ -->
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
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title">
		                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
		                                                                                ����1  	2018.3.22
		                                    </a>
		                                </h4>
		                            </div>
		                            <div id="collapseOne" class="panel-collapse collapse in">
		                              	<div class="panel-body">
		                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
		                                </div>
		                            </div>
		                        </div>
	                            <div class="panel panel-default">
	                                <div class="panel-heading">
	                                    <h4 class="panel-title">
	                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
	                                                                                        ����2	2018.3.23
	                                        </a>
	                                    </h4>
	                                </div>
                                	<div id="collapseTwo" class="panel-collapse collapse">
                                		<div class="panel-body">
                                	    	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                		</div>
                            		</div>
                        		</div>
	                         	<div class="panel panel-default">
	                              	<div class="panel-heading">
	                                  	<h4 class="panel-title">
	                                      	<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
	                                          	����3 	2018.3.23
	                                      	</a>
	                                  	</h4>
	                              	</div>
	                            	<div id="collapseThree" class="panel-collapse collapse">
	                                	<div class="panel-body">
	                                    	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
	                                	</div>
	                            	</div>
	                          	</div>
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

	</body>
</html>