<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ÿ����������</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>
<% 

String sql_select="SELECT* from �û�";
ResultSet rs = statement.executeQuery(sql_select);
ResultSetMetaData rmeta = rs.getMetaData();
//ȷ�����ݼ������������ֶ���
int numColumns=rmeta.getColumnCount();
// ���ÿ����¼ 
int a=0,b=0,c=0,d=0;
for(;rs.next();)
{
	if(rs.getString("grade").equals("��һ"))
	{
		a++;
	}
	if(rs.getString("grade").equals("���"))
	{
		b++;
	}
	if(rs.getString("grade").equals("����"))
	{
		c++;
	}
	if(rs.getString("grade").equals("����"))
	{
		d++;
	}
	
}
rs.close(); 
statement.close();          
connection.close();

%>

	<div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // ����׼���õ�dom����ʼ��echartsʵ��
        var myChart = echarts.init(document.getElementById('main'));
        var option = {
        		title:{
        			text:'�����������꼶�������'
        		},
        	    xAxis: {
        	        type: 'category',
        	        data: ['2017��', '2016��', '2015��', '2014��']
        	    },
        	    yAxis: {
        	        type: 'value'
        	    },
        	    series: [{
        	        data: [<%out.print(a+","+b+","+c+","+d);%>],
        	        type: 'line',
        	        smooth:true
        	    }]
        	};
        myChart.setOption(option);
</script>
		
</body>
</html>