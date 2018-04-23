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
<aside>
				<div id="sidebar" class="nav-collapse ">
					<!-- sidebar menu start-->
					<ul class="sidebar-menu" id="nav-accordion">
						<li>
							<a href="index.jsp">
								<i class="glyphicon glyphicon-home"></i>
								<span>主页</span>
							</a>
						</li>
		
						<li class="sub-menu">
							<a class="active" href="H_bangongshi.jsp">
								<i class="glyphicon glyphicon-folder-open"></i>
								<span>办公室</span>
							</a>
						</li>
		
						<li class="sub-menu">
							<a  href="H_xuanchuan1.jsp">
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
		
							<li class="sub-menu">
								<a href="member11.html">	
									<i class="glyphicon glyphicon-stats"></i>
									<span>加入我们</span>
								</a>
							</li>
						</ul>
					</div>
				</aside>

	<%@ include file="header.jsp" %>
	 <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
              <!-- page start-->
              <section class="panel">
                  <header class="panel-heading">
                      	人员管理表
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                              <div class="btn-group">
                                  <button id="editable-sample_new" class="btn green">
                                      	添加新的成员信息<i class="fa fa-plus"></i>
                                  </button>
                              </div>
                          </div>
                          <div class="space15"></div>

                          <div >

                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                          <thead>
                              <tr>
                                  <th>姓名</th>
                                  <th>学号</th>
                                  <th>声部</th>
                                  <th>学院</th>
                                  <th>出勤</th>
                                  <th>音量</th>
                                  <th>音色</th>
                                  <th>音准</th>
                                  <th>邮箱</th>
                                  <th>编辑</th>
                                  <th>删除</th>
                              </tr>
                              </thead>
                              <tbody>
                              <%
                              
                          	  //String name=(String)application.getAttribute("name");
                            /*  
    						if(name.equals(""))
                              {
                              	//弹窗，告知没有权限。
                              }
                              else
                              {*/
	                              	String sql=" select 用户.name,用户.Email,用户.college,评分表.* from 用户,评分表  where 用户.id=评分表.id";
	                              	ResultSet rs = statement.executeQuery(sql); 
	                              	ResultSetMetaData rmeta = rs.getMetaData();
	                    			//确定数据集的列数，亦字段数
	                    			int numColumns=rmeta.getColumnCount();
	                    			// 输出每条记录
	                    			//rs.next();
	                    			for(;rs.next();)
	                    			{
	                    				%><td><% out.print(rs.getString("name").toString()); %></td>
	                    				  <td><% out.print(rs.getString("id").toString());%></td>
	                    				  <td><%  out.print(rs.getString("shengbu").toString());%></td>
	                    				  <td><%  out.print(rs.getString("college").toString());%></td>
	                    				  <td><%  out.print(rs.getString("chuqin").toString());%></td>
	                    				  <td><%  out.print(rs.getString("yinliang").toString());%></td>
	                    				  <td><%  out.print(rs.getString("yinse").toString());%></td>
	                    				  <td><%  out.print(rs.getString("yinzhun").toString());%></td>
	                    				  <td><%  out.print(rs.getString("Email").toString());%></td>
	                    				  <td><a class="edit" href="javascript:;">修改信息</a></td>
                                          <td><a class="delete" href="javascript:;">删除信息</a></td>
                                          <% 
                    				}
	                    			rs.last();
	                    			//out.println("一共"+rs.getRow()+"条记录");
	                    			rs.close(); 
	                    			statement.close();          
	                    			connection.close(); 
                             // }%>
                              
                              
                              </tbody>
                          </table>
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
      <script>
          jQuery(document).ready(function() {
              EditableTable.init();
          });
      </script>

	
</body>
</html>