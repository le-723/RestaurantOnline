<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mvc.dao.UserDao" %>
<%@ page import="com.mvc.bean.UserBean" %>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.util.ChStr"%>

<!DOCTYPE html>
<html>
<%
Collection coll=(Collection)request.getAttribute("user");
ChStr chStr=new ChStr();
%>

<head>
<meta charset="UTF-8">
<title>会员管理</title>
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
       	 <td height="22" valign="top">当前位置：人员管理 &gt; 会员管理 &gt;&gt;</td>
    	 </tr>
      <tr>
        <td align="center" valign="top">

<%

if(coll==null || coll.isEmpty()){

%>
    <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无用户信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="h_vipadd.jsp">添加用户信息</a> </td>
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
  String adress="";
  %>
  
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="87%">&nbsp;      </td>
<td width="13%">
      <a href="h_vipadd.jsp">添加会员</a></td>	  
  </tr>
</table>  
  <table id="usertable" width=97%  border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse;" class="Tab" >
  <tr align="center">
    <td border="1" width="10%" >会员ID</td>  
    <td width="10%">登陆账号</td>
    <td width="10%">登陆密码</td>
    <td width="7%" >性别</td>
    <td width="12%">电话</td>
    <td width="19%">收货地址</td>
    <td width="6%">修改</td>
    <td width="6%">删除</td>
  </tr>
  
<%
 
   while(it.hasNext()){
	UserBean userbean=(UserBean)it.next();
	ID=userbean.getId().intValue();
	name=userbean.getUsername();
	pwd=userbean.getPwd();
	sex=userbean.getSex();
	phone=chStr.nullToString(userbean.getPhone(),"&nbsp;");
	adress=chStr.nullToString(userbean.getAddress(),"&nbsp;");
%> 
 <tr>  
 	<td style="padding:5px;"><%=ID%></td>
    <td style="padding:5px;"><%=name%></td>
    <td style="padding:5px;"><%=pwd%></td>
    <td style="padding:5px;"><%=sex%></td>
    <td align="center"><%=phone%></td>
    <td align="center"><%=adress%></td>
    <td align="center"><a href="userServlet?action=userModifyQuery&UID=<%=ID%>">修改</a></td>
    <td align="center"><a href="userServlet?action=userDel&UID=<%=ID%>">删除</a></td>
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