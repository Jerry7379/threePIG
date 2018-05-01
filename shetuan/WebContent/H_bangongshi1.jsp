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
	//从前端获取成员学号
	String SHENGBU=request.getParameter("shenbu");
	//从前端获取成员所在声部
	String CHUQIN=request.getParameter("chuqin");
	//获取成员的出勤信息
	String YINLIANG=request.getParameter("yinliang");
	//获取成员的音量信息
	String YINSE=request.getParameter("yinse");
	//获取成员的音色信息
	String YINZHUN=request.getParameter("yinzhun");
	//获取成员的音准信息
%>
<%
	String sql_insert="INSERT INTO 评分表(Id,shengbu,chuqin,yinliang,yinse,yinzhun) VALUES('"+ID+"','"+SHENGBU+"','"+CHUQIN+"','"+YINLIANG+"','"+YINSE+"','"+YINZHUN+"')";
   // 把sql语句存到sql_insert变量
    int count = statement.executeUpdate(sql_insert);  
   // 执行插入操作的sql语句，并返回插入数据的个数   
	if(count>0)     //如果插入成功，count>0表示插入插入成功
	{
		response.sendRedirect("H_bangongshi.jsp");
		//跳转到H_bangongshi.jsp页面
	}          
	
	statement.close();         
	connection.close();
	//这两句断开数据库连接
	
%>

</body>
</html>