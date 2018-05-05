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
	int chuqin=Integer.valueOf(CHUQIAN);
	//获取成员的出勤信息
	String YINLIANG=request.getParameter("yinliang");
	int yinliang=Integer.valueOf(YINLIANG);
	//获取成员的音量信息
	String YINSE=request.getParameter("yinse");
	int yinse=Integer.valueOf(YINSE);
	//获取成员的音色信息
	String YINZHUN=request.getParameter("yinzhun");
	int yinzhun=Integer.valueOf(YINZHUN);
	//获取成员的音准信息
	if(chuqin>50&&chuqin<15)
	{
		out.print("<script>alert('出勤成绩输入错误！！！'); window.location='H_bangongshi.jsp' </script>");
	}
	if(yingliang>10&&yingliang<0)
	{
		out.print("<script>alert('音乐表现力成绩输入错误！！！'); window.location='H_bangongshi.jsp' </script>");
	}
	if(yinse>10&&yinse<0)
	{
		out.print("<script>alert('音色成绩输入错误！！！'); window.location='H_bangongshi.jsp' </script>");
	}
	if(yinzhun>30&&yinzhun<0)
	{
		out.print("<script>alert('音准成绩输入错误！！！'); window.location='H_bangongshi.jsp' </script>");
	}

	
	else
	{
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
	}
	
%>

</body>
</html>