<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻发布</title>
</head>
<body>
<% 
	String Title=request.getParameter("title");
	String Zhengwen=request.getParameter("zhengwen");
	java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    
<<<<<<< HEAD
    java.util.Date currentTime = new java.util.Date();    
    String Time = simpleDateFormat.format(currentTime).toString();  

%>
<%
	String sql_insert="INSERT INTO 发布新闻(title,time,zhengwen) VALUES('"+Title+"','"+Time+"','"+Zhengwen+"')";
    //out.println("sql语句是"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // 执行插入操作的sql语句，并返回插入数据的个数   
	if(count>0)
=======
	java.util.Date currentTime = new java.util.Date();    
	String Time = simpleDateFormat.format(currentTime).toString();  
	//out.println("当前时间为："+time);
	if(Title.equals("")||Zhengwen.equals(""))
	{
		response.sendRedirect("H_xuanchuan1.jsp");	
	}
	
	else
>>>>>>> d404933d4d043d9152f8c4b2bdc9f9cd8b77af11
	{
		
	
		String sql_insert="INSERT INTO 发布新闻(title,time,zhengwen) VALUES('"+Title+"','"+Time+"','"+Zhengwen+"')";
	    //out.println("sql语句是"+sql_insert);
	    int count = statement.executeUpdate(sql_insert);  // 执行插入操作的sql语句，并返回插入数据的个数   
		if(count>0)
		{
			//application.setAttribute("id",Count);
			response.sendRedirect("H_xuanchuan1.jsp");
		}          
		
		statement.close();         
		connection.close(); 
	}
%>

</body>
</html>