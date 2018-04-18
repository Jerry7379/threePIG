<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>新闻发布</title>
</head>
<body>
<% 
	String Title=request.getParameter("title");
	//byte c1[]=Title.getBytes("ISO-8859-1");
	//String TITLE=new String(c1);
	//out.print(TITLE+"d");
	String Zhengwen=request.getParameter("zhengwen");
	//byte c2[]=Zhengwen.getBytes("ISO-8859-1");
	//String zhengwen=new String(c2);
	//out.print(zhengwen);
	java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    
    java.util.Date currentTime = new java.util.Date();    
    String Time = simpleDateFormat.format(currentTime).toString();  
   //out.println("当前时间为："+time);
%>
<%
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
%>

</body>
</html>