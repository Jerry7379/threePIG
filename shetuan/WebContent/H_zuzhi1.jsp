<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��֯��</title>
</head>
<body>
<% 
	String ACTID=request.getParameter("actid");
	String STNAME=request.getParameter("stname");
	String ACTNAME=request.getParameter("actname");
	String ACTLOCAL=request.getParameter("actlocal");
	String ACTTIME=request.getParameter("acttime");
	String ACTLEADER=request.getParameter("actleader");
%>
<%
	String sql_insert="INSERT INTO �����(actid,stname,actname,actlocal,acttime,ackeader) VALUES('"+ACTID+"','"+STNAME+"','"+ACTNAME+"','"+ACTLOCAL+"','"+ACTTIME+"','"+ACTLEADER+"')";
   // out.println("sql�����"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // ִ�в��������sql��䣬�����ز������ݵĸ���   
	if(count>0)
	{
		//application.setAttribute("actid",ACTID);
		response.sendRedirect("H_zuzhi.jsp");
	}          
	
	statement.close();         
	connection.close(); 
%>

</body>
</html>