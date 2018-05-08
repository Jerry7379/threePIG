<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在团人员各学院人数</title>
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
	int a=0,b=0,c=0,d=0,e=0,f=0;
	for(;rs.next();)
	{
		if(rs.getString("college").equals("信息学院"))
		{
			a++;
		}
		if(rs.getString("college").equals("经济学院"))
		{
			b++;
		}
		if(rs.getString("college").equals("法学院"))
		{
			c++;
		}
		if(rs.getString("college").equals("物流学院"))
		{
			d++;
		}
		if(rs.getString("college").equals("商学院"))
		{
			e++;
		}
		if(rs.getString("college").equals("外语学院"))
		{
			f++;
		}
		
	}
	rs.close(); 
	statement.close();          
	connection.close();

%>
	<div id="main" style="width: 30px;height:30px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '在团人员各学院人数'
            },
            tooltip: {},
            legend: {
                data:['各学院学生在团人数']
            },
            xAxis: {
                data: ["信息","经济","法","物流","商","外语"]
            },
            yAxis: {},
            series: [{
                name: '各学院学生在团人数',
                type: 'bar',
                data: [<%out.print(a+","+b+","+c+","+d+","+e+","+f);%>]
            }]
        };
  // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</body>
</html>