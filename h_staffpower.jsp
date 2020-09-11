<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mvc.dao.StaffGrantDao" %>
<%@ page import="com.mvc.bean.StaffGrantBean" %>
<%@ page import="com.mvc.util.ChStr"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<%
int flag=1;
Collection coll=(Collection)request.getAttribute("staffgrantQuery");  //setAttribute("vip")由vip.java中的vipQurey设置
ChStr chStr=new ChStr();
%>

<head>
<meta charset="UTF-8">
<title>员工权限管理</title>
<link href="CSS/h_style.css" rel="stylesheet">


</head>
<body  onLoad="clockon(bgclock)">


<table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center" >
  <tr>
    <td valign="top" >
    <table width="99%" height="510" border="0" cellspacing="0" cellpadding="0" border="0" align="center">
  <tr>
    <td height="510" valign="top" style="padding:5px;">
    	<table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
     	 <tr>
       	 <td height="22" valign="top">当前位置：人员管理 &gt; 员工权限管理 &gt;&gt;</td>
    	 </tr>
      <tr>
        <td align="center" valign="top"><%
if(coll==null || coll.isEmpty()){
%>
 <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无员工权限信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="#" onClick="window.open('h_staffadd.jsp','','width=452,height=175')">添加员工信息</a> </td>
  </tr>
</table>
 <%
}else{
  //通过迭代方式显示数据
  Iterator it=coll.iterator();
  int ID=0;
  int resset=0;
  int userset=0;
  int foodset=0;
  int orderset=0;
  %>

  <table id="viptable" width=97%  border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse;" class="Tab" >
  <tr align="center">
    <td border="1" width="10%" >员工ID</td>  
    <td width="12%">餐厅信息管理</td>
    <td width="12%">订单管理</td>
    <td width="12%">菜品管理</td>
    <td width="12%">会员管理</td>
    <td width="10%">权限修改</td>
  </tr>
  <%
  while(it.hasNext()){

    StaffGrantBean staffgrantbean=(StaffGrantBean)it.next();
	ID=staffgrantbean.getSid().intValue();
	resset=staffgrantbean.getResset().intValue();
	orderset=staffgrantbean.getOrderset().intValue();
	foodset=staffgrantbean.getFoodset().intValue();
	userset=staffgrantbean.getUserset().intValue();
	%> 
 <tr>
	<td align="center"><%=ID%></td>  
    
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled="disabled" <%if(resset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(orderset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(foodset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(userset==1){out.println("checked");}%>></td>
   <td align="center"><%if(ID!=flag){ %><a href="#" onClick="window.open('staffgrantServlet?action=staffgrantModifyQuery&id=<%=ID%>','','width=452,height=185')">权限设置</a><%}else{%>&nbsp;<%}%></td>
    </tr>
<%
  }
}
%>  
</table>
	</td>
    </tr>
    </table>
</td>
  </tr>
</table>
  <%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>