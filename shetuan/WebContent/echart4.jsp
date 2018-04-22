<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>环形饼状图</title>
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
		if(rs.getString("grade").equals("1"))
		{
			a++;
		}
		if(rs.getString("grade").equals("2"))
		{
			b++;
		}
		if(rs.getString("grade").equals("3"))
		{
			c++;
		}
		if(rs.getString("grade").equals("4"))
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
        // 指定图表的配置项和数据
        var option = {
        		title: {
        			x: 'center',
                    text: '各年级在团人员分布图'
                },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',//布局方式： 垂直
        x: 'left',
        data:['大一学生','大二学生','大三学生','大四学生']
    },
    series: [
        {
            name:'访问来源',
            type:'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
            /*是否启用防止标签重叠策略，默认开启，在标签拥挤重叠的情况下会挪动各个标签的位置，防止标签间的重叠。
			如果不需要开启该策略，例如圆环图这个例子中需要强制所有标签放在中心位置，可以将该值设为 false。*/
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,//圈里显示文字
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: true
                }
            },
            data:[
            	 {value:<%out.print(a);%>, name:'大一学生'},//各部分布局大小
                 {value:<%out.print(b);%>, name:'大二学生'},
                 {value:<%out.print(c);%>, name:'大三学生'},
                 {value:<%out.print(d);%>, name:'大四学生'}  
            ]
        }
    ]
};
        myChart.setOption(option);
        </script>
</body>
</html>