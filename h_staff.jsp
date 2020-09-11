<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.dao.StaffDao" %>
<%@ page import="com.mvc.bean.StaffBean" %>
<%@ page import="com.mvc.util.ChStr"%>
<!DOCTYPE html>
<html>
<%
Collection coll=(Collection)request.getAttribute("staff");  //setAttribute("vip")由vip.java中的vipQurey设置
ChStr chStr=new ChStr();
%>

<head>
<meta charset="UTF-8">
<title>员工管理</title>
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
       	 <td height="22" valign="top">当前位置：人员管理 &gt; 员工管理 &gt;&gt;</td>
    	 </tr>
      <tr>
        <td align="center" valign="top">

<%
if(coll==null || coll.isEmpty()){
%>
    <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无读者信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="h_staffadd.jsp">添加读者信息</a> </td>
  </tr>
		  </table>

 <%

}else{
  //通过迭代方式显示数据
  
   Iterator it=coll.iterator();
  int ID=0;
  String name="";
  String pwd="";
  String sex="";
  String phone="";
  
  %>
  
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="87%">&nbsp;      </td>
<td width="13%">
      <a href="h_staffadd.jsp">添加员工</a></td>	  
  </tr>
</table>  
  <table id="stafftable" width=97%  border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse;" class="Tab" >
  <tr align="center">
    <td border="1" width="10%" >员工ID</td>  
    <td width="10%">登陆账号</td>
    <td width="10%">登陆密码</td>
    <td width="7%" >性别</td>
    <td width="12%">电话</td>
    <td width="6%">修改</td>
    <td width="6%">删除</td>
  </tr>
  
 <%
 
   while(it.hasNext()){
	StaffBean staffbean=(StaffBean)it.next();
	ID=staffbean.getSid().intValue();
	name=staffbean.getName();
	pwd=staffbean.getPwd();
	sex=staffbean.getSex();
	phone=chStr.nullToString(staffbean.getPhone(),"&nbsp;");
%>
  <tr align="center">
  	<td><%=ID%></td>  
    <td><%=name%></td>
    <td><%=pwd%></td>
    <td><%=sex%></td>
    <td><%=phone%></td>
    <td><a href="staffServlet?action=staffModifyQuery&ID=<%=ID%>">修改</a></td>
    <td align="center"><a href="staffServlet?action=staffDel&ID=<%=ID%>">删除</a></td>
    
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