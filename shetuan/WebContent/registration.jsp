<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>注册</title>
</head>
<body>
<% 
	String Count=request.getParameter("input_count");
	String Password=request.getParameter("input_pw2");
%>
<%
	String sql_insert="INSERT INTO 用户(id,password) VALUES('"+Count+"','"+Password+"')";
    out.println("sql语句是"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // 执行插入操作的sql语句，并返回插入数据的个数   
	if(count>0)
	{
		application.setAttribute("id",Count);
		response.sendRedirect("finishself.html");
	}          
	
	statement.close();         
	connection.close(); 
%>

</body>
</html>