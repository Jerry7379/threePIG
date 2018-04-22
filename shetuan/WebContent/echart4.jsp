<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>���α�״ͼ</title>
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
        // ����׼���õ�dom����ʼ��echartsʵ��
        var myChart = echarts.init(document.getElementById('main'));
        // ָ��ͼ��������������
        var option = {
        		title: {
        			x: 'center',
                    text: '���꼶������Ա�ֲ�ͼ'
                },
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',//���ַ�ʽ�� ��ֱ
        x: 'left',
        data:['��һѧ��','���ѧ��','����ѧ��','����ѧ��']
    },
    series: [
        {
            name:'������Դ',
            type:'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
            /*�Ƿ����÷�ֹ��ǩ�ص����ԣ�Ĭ�Ͽ������ڱ�ǩӵ���ص�������»�Ų��������ǩ��λ�ã���ֹ��ǩ����ص���
			�������Ҫ�����ò��ԣ�����Բ��ͼ�����������Ҫǿ�����б�ǩ��������λ�ã����Խ���ֵ��Ϊ false��*/
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,//Ȧ����ʾ����
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
            	 {value:<%out.print(a);%>, name:'��һѧ��'},//�����ֲ��ִ�С
                 {value:<%out.print(b);%>, name:'���ѧ��'},
                 {value:<%out.print(c);%>, name:'����ѧ��'},
                 {value:<%out.print(d);%>, name:'����ѧ��'}  
            ]
        }
    ]
};
        myChart.setOption(option);
        </script>
</body>
</html>