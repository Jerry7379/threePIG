<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body >


<%	





	/*
	��ҳ���ǵ�½�������м�ҳ�棬����request.getParameter()�����õ����ݹ�����
	�������ں����ݿ��е��û���Ϣ���бȶԣ�����reponse��sendRedirect������������ҳ���
	��ת��
	
	//  ��δʵ�ֵĹ��ܣ������벻�Ե������ ����ת��ȥû����ʾ��Ϣ�����磺������� ���û�������
	
	*/
	
	
	

	
	
	

	//�õ����ݵĲ���
	String userId=request.getParameter("UserId");
	//out.print("�û���"+userId+".<br>");
	String password=request.getParameter("password");
	//out.print("����"+password+".<br>");
	
	
	if(userId.equals("")||password.equals(""))
	{
		response.sendRedirect("login.html");
	}
	
	
	
	if((!userId.equals(""))&&(!password.equals("")))
	{
		//�������ݿ�
		String sql_select="SELECT* from �û� where id="+userId;
		//out.print(sql_select);
		ResultSet rs = statement.executeQuery(sql_select); 
		//������ݽ������
		//rs.next();
		if(rs.equals(null))
		{
			response.sendRedirect("login.html");
		}
		else
		{
			ResultSetMetaData rmeta = rs.getMetaData();
			//ȷ�����ݼ������������ֶ���
			int numColumns=rmeta.getColumnCount();
			// ���ÿ����¼
			rs.next();
			
			
			//����ҳ����ת
			
			
			
			
			if(rs.getString("id").equals(userId))
			{
				if(rs.getString("password").equals(password))
				{
					application.setAttribute("name",rs.getString("name"));
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
		//out.println("һ��"+rs.getRow()+"����¼");
		rs.close(); 
		statement.close();          
		connection.close(); 
	}
	
%>
</body>
</html>