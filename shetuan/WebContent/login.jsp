<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body >


<%	





	/*
	此页面是登陆界面后的中间页面，先用request.getParameter()方法得到传递过来的
	参数，在和数据库中的用户信息进行比对，再用reponse。sendRedirect（）方法进行页面的
	跳转。
	
	//  尚未实现的功能：在输入不对的情况下 ，跳转回去没有提示信息，例如：密码错误 ，用户不存在
	
	*/
	
	
	

	
	
	

	//得到传递的参数
	String userId=request.getParameter("UserId");
	//out.print("用户名"+userId+".<br>");
	String password=request.getParameter("password");
	//out.print("密码"+password+".<br>");
	
	
	if(userId.equals("")||password.equals(""))
	{
		out.print("<script>alert('用户名和密码不能为空！'); window.location='login.html' </script>");
	}
	
	
	
	if((!userId.equals(""))&&(!password.equals("")))
	{
		//连接数据库
		String sql_select="SELECT* from 用户 where id="+userId;
		//out.print(sql_select);
		ResultSet rs = statement.executeQuery(sql_select); 
		//获得数据结果集合
		//
		if(!rs.next())
		{
			out.print("<script>alert('用户不存在！！'); window.location='login.html' </script>");
		}
		else
		{
			ResultSetMetaData rmeta = rs.getMetaData();
			//确定数据集的列数，亦字段数
			int numColumns=rmeta.getColumnCount();
			// 输出每条记录
			rs.next();
			
			
			//进行页面跳转
			
			
			
			
			if(rs.getString("id").equals(userId))
			{
				if(rs.getString("password").equals(password))
				{
					application.setAttribute("name",rs.getString("name"));
					application.setAttribute("rank",rs.getString("quanxian"));
					response.sendRedirect("index.jsp");
					//out.print(rs.getString("Sid"));
					
				}
				else
				{
					response.sendRedirect("login.html");
				}
			}
			else 
			{
				response.sendRedirect("login.html");
			}
		}
	
	
	
		rs.last();
		//out.println("一共"+rs.getRow()+"条记录");
		rs.close(); 
		statement.close();          
		connection.close(); 
	}
	
%>
</body>
</html>