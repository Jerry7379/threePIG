<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>人员管理表</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />

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

	<%@ include file="header.jsp" %>
	<%@include file="aside.jsp" %>

	
	<!--main content start-->
    <section id="main-content">
    	<section class="wrapper site-min-height">
          	<!-- page start-->
            <section class="panel">
                <header class="panel-heading">
                   	办公室-人员管理
                </header>
                <div class="panel-body">
                    <div class="adv-table editable-table ">
                        <div class="space15"></div>

                        <div class="table-responsive">
							<form action="H_bangongshi3.jsp" method="post">
		                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
		                            <thead>
			                      	  	<tr>
			                                <th style="width: 7.15%;">姓名</th>          
					                        <th style="width: 7.15%;">性别</th>
					                        <th style="width: 7.15%;">年级</th>
					                        <th style="width: 14%;">学号</th>
					                        <th style="width: 7.15%;">部门</th>
					                        <th style="width: 7.15%;">学院</th>
					                        <th style="width: 7.15%;">声部</th>
					                        <th style="width: 14.4%;">邮箱</th>
					                        <th style="width: 12.4%;">密码</th>
					                        <th style="width: 7.15%;">权限</th>
			                            </tr>
		                            </thead>
		                            <%
		                            	String id=request.getParameter("id");
				                     	String sql=" select * from 用户 where id="+id;
				                        ResultSet rs = statement.executeQuery(sql); 
				                        ResultSetMetaData rmeta = rs.getMetaData();  
				                    	//确定数据集的列数，亦字段数
				                    	int numColumns=rmeta.getColumnCount();
				                    	// 输出每条记录
				                    	//rs.next();
				                    	rs.next();
					                    	%>
					                    	<tbody>
					                    		<tr class="">
							                    	<td><input type="text" style="width: 100%;" name="0" class="form-control small" value="<% out.print(rs.getString("name").toString()); %>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="1" class="form-control small" value="<% out.print(rs.getString("sex").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="2" class="form-control small" value="<% out.print(rs.getString("grade").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="3" class="form-control small" value="<% out.print(rs.getString("id").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="4" class="form-control small" value="<% out.print(rs.getString("department").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="5" class="form-control small" value="<% out.print(rs.getString("college").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="6" class="form-control small" value="<% out.print(rs.getString("shengbu").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="7" class="form-control small" value="<% out.print(rs.getString("Email").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="8" class="form-control small" value="<% out.print(rs.getString("password").toString());%>"/></td>
							                    	<td><input type="text" style="width: 100%;" name="9" class="form-control small" value="<% out.print(rs.getString("quanxian").toString());%>"/></td>
					                       		</tr>
					                       	</tbody>
					                       		<% 
							                    	rs.last();
							                    	//out.println("一共"+rs.getRow()+"条记录");
							                    	rs.close(); 
							                    	
							                    	 
			                       				%> 	
					                       		<thead>
						                      	  	<tr>
						                                <th style="width: 7.15%;">缺勤</th>          
								                        <th style="width: 7.15%;">音准</th>
								                        <th style="width: 7.15%;">音色</th>
								                        <th style="width: 14%;">音乐表现力</th>
								                        <th style="width: 7.15%;">期末成绩</th>
								                        <th style="width: 7.15%;">修改</th>   
						                            </tr>
					                            </thead>
					                            <%
					                            	String sql1="select * from 评分表  where id="+id;
						                            rs = statement.executeQuery(sql1); 
							                        //rs.next();
							                        int a=0;
							                        rs.last(); 
							                        int rowCount = rs.getRow();
							                        rs.first();
							                       
							                        if(rowCount!=0)
							                        {
							                        	application.setAttribute("a","1");
							                        	
										             %>
										                     <tbody>
											                     <tr class="">
											                        	<td><input type="text" style="width: 100%;" name="chuqin" class="form-control small" value="<% out.print(rs.getString("chuqin").toString());%>"/></td>
												                    	<td><input type="text" style="width: 100%;" name="yinzhun"class="form-control small" value="<% out.print(rs.getString("yinzhun").toString());%>"/></td>
												                    	<td><input type="text" style="width: 100%;" name="yinse" class="form-control small" value="<% out.print(rs.getString("yinse").toString());%>"/></td>
												                    	<td><input type="text" style="width: 100%;" name="yinliang" class="form-control small" value="<% out.print(rs.getString("yinliang").toString());%>"/></td>
												                    	<td><input type="text" style="width: 100%;" name="qimo" class="form-control small" value="<% out.print(rs.getString("qimo").toString());%>"readonly="true"/></td>
												                    	<td><input type="submit" class="btn btn-success" value="确认修改" /></td>
												                 </tr>    	
											                 </tbody>   	
										                        	
										           	<%	
							                        }
							                        else
							                        {
							                        	application.setAttribute("a","2");
							                        %>
							                        	 <tbody>
									                     <tr class="">
									                        	<td><input type="text" style="width: 100%;"  name="chuqin" class="form-control small" /></td>
										                    	<td><input type="text" style="width: 100%;"  name="yinzhun"class="form-control small" /></td>
										                    	<td><input type="text" style="width: 100%;"  name="yinse"class="form-control small" /></td>
										                    	<td><input type="text" style="width: 100%;"  name="yinliang"class="form-control small" /></td>
										                    	<td><input type="text" style="width: 100%;"  name="qimo"class="form-control small" readonly="true"/></td>
										                    	<td><input type="submit" class="btn btn-success" value="确认修改" /></td>
										                 </tr>    	
									                 </tbody>   	
								                        	
							                        	
							                       <%}
							                        	
							                     
							                    	rs.last();
							                    	//out.println("一共"+rs.getRow()+"条记录");
							                    	rs.close(); 
							                    	statement.close();          
							                    	connection.close(); 
							                    	
			                       					%> 
	                            </table>
	                     	</form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- page end-->
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
				2018 &copy; FlatLab by VectorLab.
				<a href="#" class="go-top">
					<i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
  	</section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
    <script src="js/respond.min.js" ></script>

  	<!--right slidebar-->
  	<script src="js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

     <!--script for this page only-->
     <script src="js/editable-table.js"></script>

     <!-- END JAVASCRIPTS -->



</body>
</html>