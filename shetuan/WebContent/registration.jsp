<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ע��</title>
</head>
<body>
<% 
	String Count=request.getParameter("input_count");
	String Password=request.getParameter("input_pw2");
%>
<%
	String sql_insert="INSERT INTO �û�(id,password) VALUES('"+Count+"','"+Password+"')";
    out.println("sql�����"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // ִ�в��������sql��䣬�����ز������ݵĸ���   
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