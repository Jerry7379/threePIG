<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>������Ա��ѧԺ����</title>
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
	int a=0,b=0,c=0,d=0,e=0,f=0;
	for(;rs.next();)
	{
		if(rs.getString("college").equals("��ϢѧԺ"))
		{
			a++;
		}
		if(rs.getString("college").equals("����ѧԺ"))
		{
			b++;
		}
		if(rs.getString("college").equals("��ѧԺ"))
		{
			c++;
		}
		if(rs.getString("college").equals("����ѧԺ"))
		{
			d++;
		}
		if(rs.getString("college").equals("��ѧԺ"))
		{
			e++;
		}
		if(rs.getString("college").equals("����ѧԺ"))
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
        // ����׼���õ�dom����ʼ��echartsʵ��
        var myChart = echarts.init(document.getElementById('main'));

        // ָ��ͼ��������������
        var option = {
            title: {
                text: '������Ա��ѧԺ����'
            },
            tooltip: {},
            legend: {
                data:['��ѧԺѧ����������']
            },
            xAxis: {
                data: ["��Ϣ","����","��","����","��","����"]
            },
            yAxis: {},
            series: [{
                name: '��ѧԺѧ����������',
                type: 'bar',
                data: [<%out.print(a+","+b+","+c+","+d+","+e+","+f);%>]
            }]
        };
  // ʹ�ø�ָ�����������������ʾͼ��
        myChart.setOption(option);
    </script>

</body>
</html>