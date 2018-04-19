<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<!--header start-->
	<header class="header white-bg">
				<div class="sidebar-toggle-box">
					<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
				</div>
				<!--logo start-->
				<a href="index1.jsp" class="logo">CM<span>S</span></a>
				<!--logo end-->
				<div class="nav notify-row" id="top_menu">

				</div>
				<div class="top-nav ">
					<!--search & user info start-->
					<ul class="nav pull-right top-menu">

						<!-- user login dropdown start-->
						<li class="dropdown">
								<%	String name=(String)application.getAttribute("name");
															
															if(name==null)
															{
																%>
																<a href="login.html">登录</a>
																<% 
															}
															
															else
															{
																%><a data-toggle="dropdown" class="dropdown-toggle" href="#">
																<img alt="" src="img/avatar1_small.jpg">
																<span class="username"><%out.print(name); %></span></a><% 
																
															}
														       %>				       
								<b class="caret"></b>
							<ul class="dropdown-menu extended logout">
								<div class="log-arrow-up"></div>
								<li>
									<a href="#"><i class=" fa fa-suitcase"></i>Profile</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-cog"></i> Settings</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-bell-o"></i> Notification</a>
								</li>
								<li>
									<a href="logout.jsp"><i class="fa fa-key"></i>LOGOUT</a>
								</li>
							</ul>
						</li>
						<li class="sb-toggle-right">
							<i class="fa  fa-align-right"></i>
						</li>
						<!-- user login dropdown end -->
					</ul>
				</div>
			</header>
	<!--header end-->
	<!--sidebar start-->
	
</body>
</html>