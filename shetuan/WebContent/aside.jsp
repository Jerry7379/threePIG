<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<aside>
		<div id="sidebar" class="nav-collapse ">
			<!-- sidebar menu start-->
			<ul class="sidebar-menu" id="nav-accordion">
				<li>
					<a class="active" href="index.jsp">
						<i class="glyphicon glyphicon-home"></i>
						<span>主页</span>
					</a>
				</li>
				<%	
					
					String rank=(String)application.getAttribute("rank");
    				
    				if(rank==null)
    				{
    					rank="0";
    				}
    				
					if(rank.equals("2") || rank.equals("4"))
					{
						%>
						<li class="sub-menu">
							<a href="H_bangongshi.jsp">
								<i class="glyphicon glyphicon-folder-open"></i>
								<span>办公室</span>
							</a>
						</li>
						<% 
					} 
					else
					{%>
						<li class="sub-menu">
							<a href="500.html">	
								<i class="glyphicon glyphicon-lock"></i>
								<span>办公室</span>
							</a>
						</li>
						<%
					}
					if(rank.equals("3") || rank.equals("4"))
					{%>
						<li class="sub-menu">
							<a href="H_xuanchuan1.jsp">
								<i class="glyphicon glyphicon-bullhorn"></i>
								<span>宣传部</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="H_zuzhi.jsp">
								<i class="glyphicon glyphicon-flag"></i>
								<span>组织部</span>
							</a>
						</li>
					<%}
					%><% 
					else{ %>
						<li class="sub-menu">
							<a href="500.html">	
								<i class="glyphicon glyphicon-lock"></i>
								<span>宣传部</span>
							</a>
						</li>
						<li class="sub-menu">
							<a href="500.html">	
								<i class="glyphicon glyphicon-lock"></i>
								<span>组织部</span>
							</a>
						</li>
					<%}
					%>
				<li class="sub-menu">
					<a href="joinus.jsp">	
						<i class="glyphicon glyphicon-stats"></i>
						<span>加入我们</span>
					</a>
				</li>
				
				</ul>
			</div>
		</aside>

</body>
</html>