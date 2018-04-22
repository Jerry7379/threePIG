<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>学生各项成绩分布图</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>
 
	<% 
	String sql_select="SELECT * from 评分表";
	ResultSet rs = statement.executeQuery(sql_select);
	ResultSetMetaData rmeta = rs.getMetaData();
	//确定数据集的列数，亦字段数
	int numColumns=rmeta.getColumnCount();
	// 输出每条记录 
	int[] a=new int[5];//出勤
	int[] b=new int[5];//音色
	int[] c=new int[5];//音准
	int[] d=new int[5];//音量
	String[] e =new String[5];
	for(int i=0;i<5;i++)
	{
		rs.next();
		a[i]=Integer.parseInt(rs.getString("chuqin").toString);
		//b[i]=Integer.parseInt(rs.getString("yinse"));
		//c[i]=Integer.parseInt(rs.getString("yinzhun"));
		//d[i]=Integer.parseInt(rs.getString("yinliang"));
		//e[i]=rs.getString("id");
	}
	rs.close(); 
	statement.close();          
	connection.close();
	
%> 
<body>
	<!-- <div id="main" style="width: 600px;height:400px;"></div>
    	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
		var option = {
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['','联盟广告','视频广告','直接访问','搜索引擎']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'邮件营销',
            type:'line',
            stack: '总量',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'联盟广告',
            type:'line',
            stack: '总量',
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'视频广告',
            type:'line',
            stack: '总量',
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'直接访问',
            type:'line',
            stack: '总量',
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'搜索引擎',
            type:'line',
            stack: '总量',
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
}; -->

   <div id="main" style="width: 600px;height:400px;"></div>
   <script type="text/javascript">
       // 基于准备好的dom，初始化echarts实例
       var myChart = echarts.init(document.getElementById('main'));

       // 指定图表的配置项和数据
       var option = {
    title: {
        text: '成绩堆叠图'
    },
    tooltip : {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            label: {
                backgroundColor: '#6a7985'
            }
        }
    },
    legend: {
        data:['出勤','音色','音准','音量']
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data:['<%out.print(e[0]);%>','<%out.print(e[1]);%>','<%out.print(e[2]);%>','<%out.print(e[3]);%>','<%out.print(e[4]);%>']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'出勤',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:['<%out.print(a[0]);%>','<%out.print(a[1]);%>','<%out.print(a[2]);%>','<%out.print(a[3]);%>','<%out.print(a[4]);%>']
        },
        {
            name:'音色',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:['<%out.print(b[0]);%>','<%out.print(b[1]);%>','<%out.print(b[2]);%>','<%out.print(b[3]);%>','<%out.print(b[4]);%>']
        },
        {
            name:'音准',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:['<%out.print(c[0]);%>','<%out.print(c[1]);%>','<%out.print(c[2]);%>','<%out.print(c[3]);%>','<%out.print(c[4]);%>']
        },
        {
            name:'音量',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:['<%out.print(d[0]);%>','<%out.print(d[1]);%>','<%out.print(d[2]);%>','<%out.print(d[3]);%>','<%out.print(d[4]);%>']
        },
       
    ]
};  

	
     </script>
     myChart.setOption(option);
     
</body>
</html>