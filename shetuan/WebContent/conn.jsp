<%@ page language="java" %> 
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<% 
	String driverName="com.mysql.jdbc.Driver";	 
	String userName="root";
	String userPasswd="123456";
	String dbName="test";
	String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection=DriverManager.getConnection(url);
	Statement statement = connection.createStatement();
%>