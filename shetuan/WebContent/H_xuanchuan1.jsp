<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>新闻发布</title>
    

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="assets/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-datetimepicker/css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/jquery-multi-select/css/multi-select.css" />

    <!--right slidebar-->
    <link href="css/slidebars.css" rel="stylesheet">

    <!--  summernote -->
    <link href="assets/summernote/dist/summernote.css" rel="stylesheet">

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
	<%@include file="header.jsp" %>
		<section id="container">
			
			<!--sidebar start-->
			<%@include file="aside.jsp" %>
			<!--sidebar end-->
			<!--main content start-->
			<section id="main-content">
				<section class="wrapper">
					<div class="row">
					<form class="" action="H_xuanchuan.jsp" name="form" onSubmit="return checkNews(this);">
						<div class="col-lg-12">
							<section class="panel">
								<header class="panel-heading">
									发布新闻
								</header>
								<div class="panel-body">
									<form class="form-horizontal tasi-form" method="get">
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label">标题</label>
											<div class="col-sm-10">
												<input type="text" name="title" class="form-control">
											</div>
										</div>
										              <!--wysihtml5 start-->
						             	<div class="row">
						                  	<div class="col-md-12">
						                      	<section class="panel">
						                          	<div class="panel-body">
						                              	<form action="#" class="form-horizontal tasi-form">
						                                  	<div class="form-group">
						                                    	<label class="control-label col-md-3">正文</label>
						                                       	<div class="col-md-15">
						                                            <textarea class="wysihtml5 form-control" name="zhengwen" rows="18"></textarea>
						                                        </div>
						                                    </div>
						                              	</form>
						                          	</div>
						                      	</section>
						                  	</div>
						              	</div>
						              	<!--wysihtml5 end-->
						              	<button class="btn btn-info btn-block" type="submit" name="fabu" class ="form-control">发布</button>
									</form>
								</div>
							</section>
						</div> 
					 </form>
						
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
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/respond.min.js" ></script>
  
    <!--this page plugins-->

  	<script type="text/javascript" src="assets/fuelux/js/spinner.min.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-daterangepicker/moment.min.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
  	<script type="text/javascript" src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  	<script type="text/javascript" src="assets/jquery-multi-select/js/jquery.multi-select.js"></script>
  	<script type="text/javascript" src="assets/jquery-multi-select/js/jquery.quicksearch.js"></script>


  	<!--summernote-->
  	<script src="assets/summernote/dist/summernote.min.js"></script>

  	<!--right slidebar-->
  	<script src="js/slidebars.min.js"></script>

  	<!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    <!--this page  script only-->
    <script src="js/advanced-form-components.js"></script>
    <script type="text/javascript" src="myjs/xuanchuan.js"></script>
  	<script>
		jQuery(document).ready(function(){
        	$('.summernote').summernote({
              	height: 200,                 // set editor height

              	minHeight: null,             // set minimum height of editor
              	maxHeight: null,             // set maximum height of editor

              	focus: true                 // set focus to editable area after initializing summernote
          	});
      	});

  	</script>

	</body>

</html>