<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ѧ������ɼ��ֲ�ͼ</title>
<script src="echarts/echarts.min.js"></script>
</head>
<body>
 
	<% 
	String sql_select="SELECT * from ���ֱ�";
	ResultSet rs = statement.executeQuery(sql_select);
	ResultSetMetaData rmeta = rs.getMetaData();
	//ȷ�����ݼ������������ֶ���
	int numColumns=rmeta.getColumnCount();
	// ���ÿ����¼ 
	int[] a=new int[5];//����
	int[] b=new int[5];//��ɫ
	int[] c=new int[5];//��׼
	int[] d=new int[5];//����
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
        // ����׼���õ�dom����ʼ��echartsʵ��
        var myChart = echarts.init(document.getElementById('main'));
        // ָ��ͼ��������������
		var option = {
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['','���˹��','��Ƶ���','ֱ�ӷ���','��������']
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
            data : ['��һ','�ܶ�','����','����','����','����','����']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'�ʼ�Ӫ��',
            type:'line',
            stack: '����',
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'���˹��',
            type:'line',
            stack: '����',
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'��Ƶ���',
            type:'line',
            stack: '����',
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'ֱ�ӷ���',
            type:'line',
            stack: '����',
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'��������',
            type:'line',
            stack: '����',
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
}; -->

   <div id="main" style="width: 600px;height:400px;"></div>
   <script type="text/javascript">
       // ����׼���õ�dom����ʼ��echartsʵ��
       var myChart = echarts.init(document.getElementById('main'));

       // ָ��ͼ��������������
       var option = {
    title: {
        text: '�ɼ��ѵ�ͼ'
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
        data:['����','��ɫ','��׼','����']
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
            name:'����',
            type:'line',
            stack: '����',
            areaStyle: {normal: {}},
            data:['<%out.print(a[0]);%>','<%out.print(a[1]);%>','<%out.print(a[2]);%>','<%out.print(a[3]);%>','<%out.print(a[4]);%>']
        },
        {
            name:'��ɫ',
            type:'line',
            stack: '����',
            areaStyle: {normal: {}},
            data:['<%out.print(b[0]);%>','<%out.print(b[1]);%>','<%out.print(b[2]);%>','<%out.print(b[3]);%>','<%out.print(b[4]);%>']
        },
        {
            name:'��׼',
            type:'line',
            stack: '����',
            areaStyle: {normal: {}},
            data:['<%out.print(c[0]);%>','<%out.print(c[1]);%>','<%out.print(c[2]);%>','<%out.print(c[3]);%>','<%out.print(c[4]);%>']
        },
        {
            name:'����',
            type:'line',
            stack: '����',
            areaStyle: {normal: {}},
            data:['<%out.print(d[0]);%>','<%out.print(d[1]);%>','<%out.print(d[2]);%>','<%out.print(d[3]);%>','<%out.print(d[4]);%>']
        },
       
    ]
};  

	
     </script>
     myChart.setOption(option);
     
</body>
</html>