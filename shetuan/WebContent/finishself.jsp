<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>完善个人信息</title>
</head>
<body>
<%
String 姓名=request.getParameter("user_name");
out.println(姓名);
String 性别=request.getParameter("sample-radio");
out.println(性别);
String 邮箱=request.getParameter("user_email");
out.println(邮箱);
String 学院=request.getParameter("xy");
out.println(学院);
String 年级=request.getParameter("nj");
out.println(年级);

%>

<%
	
	String a=(String)application.getAttribute("id");
	String sql_modify="update 用户 set name='"+姓名+
	"' ,grade=' "+年级+
	"' ,Email='"+邮箱+
	"' ,college='"+学院+
	"' ,sex='"+性别+
	"'  where id= "+a;
	//String sql_insert="INSERT INTO 注册(姓名,年级,Email,部门,性别) VALUES('"+姓名+"','"+年级+"','"+邮箱+"','"+学院+"','"+性别+"')";
    //out.println("sql语句是"+sql_modify);
    int count = statement.executeUpdate(sql_modify);  // 执行插入操作的sql语句，并返回插入数据的个数   
	if(count>0)
	{
		response.sendRedirect("login.html");
	}         
	
	statement.close();         
	connection.close(); 
	%>


</body>
</html>