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

    <title>活动日期安排表</title>

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

  <section id="container" class="">
      		<!--header start-->
			<%@include file="header.jsp" %>
			<!--header end-->
      		<!--sidebar start-->
			<%@include file="aside.jsp" %>
			<!--sidebar end-->

		      <!--main content start-->
		      <section id="main-content">
		          <section class="wrapper site-min-height">
		              <!-- page start-->
		              <section class="panel">
		                  <header class="panel-heading">
		                      	活动日期
		                  </header>
		                  <div class="panel-body">
		                      <div class="adv-table editable-table ">
		                          <div class="clearfix">
		                              <div class="btn-group">
		                                  <a class="btn" href="NewActive.jsp">
		                                      	添加新活动日期 <i class="fa fa-plus"></i>
		                                  </a>
		                              </div>
		                          </div>
		                          <div style="height:10px;"></div>
		                          <div >
		                          <form>
		                          		<table class="table table-striped table-hover table-bordered" id="editable-sample">
			                           		<thead>
				                           		<tr>
					                          		<th>活动ID</th>
					                                <th>社团名称</th>
					                                <th>活动名称</th>
					                                <th>活动地点</th>
					                                <th>活动时间</th>
					                                <th>负责人</th>
					                                <th>编辑</th>
				                              	</tr>
			                           		</thead>
			                       			<tbody>
			                              	<%
				                       			String sql=" select * from 活动安排";
				                              	ResultSet rs = statement.executeQuery(sql); 
				                              	ResultSetMetaData rmeta = rs.getMetaData();
				                   			   	//确定数据集的列数，亦字段数
				                    			int numColumns=rmeta.getColumnCount();
				                    			// 输出每条记录
				                    			//rs.next();
				                    			for(;rs.next();)
				                    			{
				                    				%>
				                    				</tr>
				                    					<td><% out.print(rs.getString("actid").toString()); %></td>
				                    				 	<td><% out.print(rs.getString("stname").toString());%></td>
				                    				  	<td><% out.print(rs.getString("actname").toString());%></td>
				                    				  	<td><% out.print(rs.getString("actlocal").toString());%></td>
				                    				  	<td><% out.print(rs.getString("acttime").toString());%></td>
				                    				  	<td><% out.print(rs.getString("actleader").toString());%></td>
				                    				  	<td><a class="" href="zuzhi_edit.jsp?id=<%=rs.getString("actid")%>">修改信息</a></td>
				                    				</tr>
			                                        <% 
			                    				}
				                    			rs.last();
				                    			//out.println("一共"+rs.getRow()+"条记录");
				                    			rs.close(); 
				                    			statement.close();          
				                    			connection.close(); 
			                             	%> 
			                          	</tbody>
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
					2013 &copy; FlatLab by VectorLab.
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
      <script src="js/zuzhibu.js"></script>

      <!-- END JAVASCRIPTS -->
      <script>
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>


  </body>
</html>
