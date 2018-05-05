<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
<% 
	String Count=request.getParameter("input_count");
	String Password=request.getParameter("input_pw2");
%>
<%
	String sql="select * from 用户  where id='"+Count+"'";
	ResultSet rs = statement.executeQuery(sql);
	rs.last();
	int rowCount = rs.getRow();  //获得ResultSet的总行数
	if(rowCount==0)
	{
		String sql_insert="INSERT INTO 用户(id,password) VALUES('"+Count+"','"+Password+"')";
	    out.println("sql语句是"+sql_insert);
	    int count = statement.executeUpdate(sql_insert);  // 执行插入操作的sql语句，并返回插入数据的个数   
		if(count>0)
		{
			application.setAttribute("id",Count);
			response.sendRedirect("finishself.html");
		}          
	}
	else
	{
		
		out.print("<script>alert('此用户已经存在！！！'); window.location='registration.html' </script>");
		
	}
	statement.close();         
	connection.close(); 
%>

</body>
</html>