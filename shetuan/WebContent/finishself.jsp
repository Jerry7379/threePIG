<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>���Ƹ�����Ϣ</title>
</head>
<body>
<%
String ����=request.getParameter("user_name");
out.println(����);
String �Ա�=request.getParameter("sample-radio");
out.println(�Ա�);
String ����=request.getParameter("user_email");
out.println(����);
String ѧԺ=request.getParameter("xy");
out.println(ѧԺ);
String �꼶=request.getParameter("nj");
out.println(�꼶);

%>

<%
	
	String a=(String)application.getAttribute("id");
	String sql_modify="update �û� set name='"+����+
	"' ,grade=' "+�꼶+
	"' ,Email='"+����+
	"' ,college='"+ѧԺ+
	"' ,sex='"+�Ա�+
	"'  where id= "+a;
	//String sql_insert="INSERT INTO ע��(����,�꼶,Email,����,�Ա�) VALUES('"+����+"','"+�꼶+"','"+����+"','"+ѧԺ+"','"+�Ա�+"')";
    //out.println("sql�����"+sql_modify);
    int count = statement.executeUpdate(sql_modify);  // ִ�в��������sql��䣬�����ز������ݵĸ���   
	if(count>0)
	{
		response.sendRedirect("login.html");
	}         
	
	statement.close();         
	connection.close(); 
	%>


</body>
</html>