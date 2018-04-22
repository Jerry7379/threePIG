<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>各活动人数</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>

<% 
	String sql_select="SELECT* from user1";
	ResultSet rs = statement.executeQuery(sql_select);
	ResultSetMetaData rmeta = rs.getMetaData();
	//确定数据集的列数，亦字段数
	int numColumns=rmeta.getColumnCount();
	// 输出每条记录 
	int a=0,b=0,c=0,d=0,e=0,f=0;
	for(;rs.next();)
	{
		if(rs.getString("huodong").equals("活动1"))
		{
			a++;
		}
		if(rs.getString("huodong").equals("活动2"))
		{
			b++;
		}
		if(rs.getString("huodong").equals("活动3"))
		{
			c++;
		}
		if(rs.getString("huodong").equals("活动4"))
		{
			d++;
		}
		if(rs.getString("huodong").equals("活动5"))
		{
			e++;
		}
		if(rs.getString("huodong").equals("活动6"))
		{
			f++;
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

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '在团人员各活动人数'
            },
            tooltip: {},
            legend: {
                data:['学生各活动人数']
            },
            xAxis: {
                data: ["活动1","活动2","活动3","活动4","活动5","活动6"]
            },
            yAxis: {},
            series: [{
                name: '学生各活动人数',
                type: 'bar',
                data: [<%out.print(a+","+b+","+c+","+d+","+e+","+f);%>]
            }]
        };
  // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</body>
</html>