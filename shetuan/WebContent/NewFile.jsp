<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>各活动人数</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>
	<%
	String sql="select * from 发布新闻  group by time";
	ResultSet rs = statement.executeQuery(sql);
	for(int i=0;i<3;i++)
	{
		rs.next();
		String a=rs.getString("time");
		String b=a.substring(0,16);
		out.println(b);
		
	}
	rs.last();
	//out.println("一共"+rs.getRow()+"条记录");
	rs.close(); 
	statement.close();          
	connection.close();
	
	%>

</body>
</html>