<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>每年招新人数</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>
<% 

String sql_select="SELECT* from 用户";
ResultSet rs = statement.executeQuery(sql_select);
ResultSetMetaData rmeta = rs.getMetaData();
//确定数据集的列数，亦字段数
int numColumns=rmeta.getColumnCount();
// 输出每条记录 
int a=0,b=0,c=0,d=0;
for(;rs.next();)
{
	if(rs.getString("grade").equals("大一"))
	{
		a++;
	}
	if(rs.getString("grade").equals("大二"))
	{
		b++;
	}
	if(rs.getString("grade").equals("大三"))
	{
		c++;
	}
	if(rs.getString("grade").equals("大四"))
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
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var option = {
        		title:{
        			text:'近四年来各年级招新情况'
        		},
        	    xAxis: {
        	        type: 'category',
        	        data: ['2017年', '2016年', '2015年', '2014年']
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