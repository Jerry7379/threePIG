<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>办公室人员管理</title>
</head>
<body>
<% 
	String ID=request.getParameter("id");
	//out.println(ID);
	String SHENGBU=request.getParameter("shenbu");
	//out.println(SHENGBU);
	String CHUQIN=request.getParameter("chuqin");
	//out.println("CHUQIN");
	String YINLIANG=request.getParameter("yinliang");
	//out.println(YINLIANG);
	String YINSE=request.getParameter("yinse");
	String YINZHUN=request.getParameter("yinzhun");
%>
<%
	String sql_insert="INSERT INTO 评分表(Id,shengbu,chuqin,yinliang,yinse,yinzhun) VALUES('"+ID+"','"+SHENGBU+"','"+CHUQIN+"','"+YINLIANG+"','"+YINSE+"','"+YINZHUN+"')";
   // out.println("sql语句是"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // 执行插入操作的sql语句，并返回插入数据的个数   
	if(count>0)
	{
		//application.setAttribute("id",ID);
		response.sendRedirect("H_bangongshi.jsp");
	}          
	
	statement.close();         
	connection.close(); 
	
%>

</body>
</html>