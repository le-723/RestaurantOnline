<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mvc.dao.OrderDao" %>
<%@ page import="com.mvc.bean.OrderBean" %>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.util.ChStr"%>
<html>
<%
Collection coll=(Collection)request.getAttribute("order");
ChStr chStr=new ChStr();
%>
<head>
<head>
<meta charset="UTF-8">
<title>员工管理</title>
<link href="CSS/h_style.css" rel="stylesheet">
</head>

<body onLoad="clockon(bgclock)">
<%--@include file="banner.jsp"--%>
<%--@include file="navigation.jsp"--%>
<table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
    <table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">当前位置：订单管理 &gt; <%--读者档案管理--%>订单 &gt;&gt;&gt;</td>
      </tr>
      
      <tr>
      
        <td align="center" valign="top">
<% 
if(coll==null || coll.isEmpty()){
%>
          <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无订单信息！</td>
            </tr>
          </table>
         <table width="100%"  border="0" cellspacing="0" cellpadding="0">
</table>
<%
}else{
  //通过迭代方式显示数据
  Iterator it=coll.iterator();
  int OID=0;
  int UID=0;
  int count=0;
  double payall=0.0;
  int FID=0;
  String time="";
  String uadress="";
  String uphone="";
  String uname="";
  String fname="";
  %>
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
</table>  
  <table width="95%"  border="1" cellpadding="0" cellspacing="0" class="table">
  <tr align="center">
  <td width="13%" >订单人编号</td> 
    <td width="13%" >订单编号</td>  
    <td width="15%" >预定时间</td>
    <td width="10%" >姓名</td>
    <td width="20%" >地址</td>
    <td width="10%" >电话</td>
    <td width="5%" >数量</td>
    <td width="12%" >总价</td>
    <td width="6%"  >删除</td>
  </tr>
<%
  while(it.hasNext()){
    OrderBean orderbean=(OrderBean)it.next();
    OID=orderbean.getOid().intValue();
    UID=orderbean.getUid().intValue();
    count=orderbean.getCount();
    payall=orderbean.getPayall();
    time=orderbean.getTime();
    uadress=orderbean.getUadress();
    uphone=orderbean.getUphone();
    uname=orderbean.getUname();
    
	/*
	typename=chStr.nullToString(readerForm.getTypename(),"&nbsp;");
	paperType=readerForm.getPaperType();
	paperNO=chStr.nullToString(readerForm.getPaperNO(),"&nbsp;");
	tel=chStr.nullToString(readerForm.getTel(),"&nbsp;");
	email=chStr.nullToString(readerForm.getEmail(),"&nbsp;");*/
	%> 
  <tr>
    <td style="padding:20px;"><%=UID%></td>  
    <td style="padding:20px;"><%=OID%></a></td>
    <td style="padding:20px;"><%=time%></td>
    <td align="center"><%=uname%></td>
    <td align="center"><%=uadress%></td>
    <td align="center"><%=uphone%></td>
    <td align="center"><%=count%></td>
    <td align="center"><%=payall%></td>
    <td align="center"><a href="orderServlet?action=OrderDel&oid=<%=OID%>">删除</a></td>
    
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
