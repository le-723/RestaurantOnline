<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.mvc.dao.OrderDao" %>
<%@ page import="com.mvc.bean.OrderBean" %>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.util.ChStr"%>

<html>
<%
Collection coll=(Collection)request.getAttribute("OrderifQuery");
ChStr chStr=new ChStr();
%>
<head>
<title>订单查询</title>
<%--<link href="CSS/style.css" rel="stylesheet">--%>
</head>
<body >
<table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      
      
      <tr>
      
        <td align="center" valign="top">
          <% 
          if(coll==null || coll.isEmpty()){ 
          %> 
           <table width="100%" height="30" border="0" cellpadding="0"
											cellspacing="0">
            <tr>
              <td height="36" align="center">暂无订单信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
</table><%

 }else{
  //通过迭代方式显示数据
  Iterator it=coll.iterator();
  int OID=0;
  String time="";
  String uname="";
  String uadress="";
  String uphone="";
  String fname="";
  int count=0;
  double payall=0.0;
  %>
  <table width="95%"  border="1" cellpadding="0" cellspacing="0" class="table">
  <tr align="center" >
    <td width="13%" height="35px">订单编号</td>  
    <td width="15%" >预定时间</td>
    <td width="15%" >姓名</td>
    <td width="22%" >地址</td>
    <td width="10%">电话</td>
    <td width="10%" >数量</td>
    <td width="12%" >总价</td>
  </tr>
  <%
  while(it.hasNext()){
    OrderBean orderBean=(OrderBean)it.next();
	OID=orderBean.getOid().intValue();
	time=orderBean.getTime();
	uname=orderBean.getUname();
	uadress=orderBean.getUadress();
    uphone=orderBean.getUphone();
    count=orderBean.getCount();
    payall=orderBean.getPayall();
	%>
	<tr>
												<td style="padding: 5px;"><%=OID%></td>
												<td style="padding: 5px;"><%=time%></td>
												<td style="padding: 5px;"><%=uname%></td>
												<td align="center"><%=uadress%></td>
												<td align="center"><%=uphone%></td>
												<td align="center"><%=count%></td>
												<td align="center"><%=payall%></td>
												
											</tr>
<%
  }
}
%>
</table></td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>
