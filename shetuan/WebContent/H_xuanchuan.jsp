<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���ŷ���</title>
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
   //out.println("��ǰʱ��Ϊ��"+time);
%>
<%
	String sql_insert="INSERT INTO ��������(title,time,zhengwen) VALUES('"+Title+"','"+Time+"','"+Zhengwen+"')";
    //out.println("sql�����"+sql_insert);
    int count = statement.executeUpdate(sql_insert);  // ִ�в��������sql��䣬�����ز������ݵĸ���   
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