<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.dao.FoodDao" %>
<%@ page import="com.mvc.bean.FoodBean" %>
<!DOCTYPE html>
<html>
<%
String str=null;
FoodBean foodbean=(FoodBean)request.getAttribute("foodmodifyquery");
%>

<head>
<meta charset="UTF-8">
<title>会员注册</title>

<style>
	*{
		margin: 0;
		padding: 0;
	}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


input[name=Submit] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[name=Submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body onLoad="clockon(bgclock)">
<link href="CSS/style.css" rel="stylesheet">
</body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td valign="top" bgcolor="#FFFFFF">
  	<table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  	<tr>
    <td height="510" valign="top" style="padding:5px;">
    	<table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
     	<tr>
        <td height="22" valign="top">当前位置:菜品管理 &gt; 修改菜品信息&gt;&gt;&gt;</td>
        </tr>
  <% 
  
 
  String b_name=foodbean.getB_name(); 
  int new_price=foodbean.getNew_price();
  int old_price=foodbean.getOld_price();  
  String author=foodbean.getAuthor(); 
  String detail=foodbean.getDetail();
  int b_id=foodbean.getB_id();
  int id=foodbean.getId();
  %>
        
        
        <tr>
        <td align="center" valign="top">
        <table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<form name="form1" method="post" action="foodServlet?action=foodModify&id=<%=id %>">
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	  <tr>
        <td width="173" align="center">菜名</td>
        <td width="427" height="39">
          <input name="b_name" type="text" value="<%=b_name%>" >
                   </td>
      </tr>
      <tr>
        <td width="173" align="center">现价</td>
        <td width="427" height="39">
          <input name="new_price" type="text" value="<%=new_price%>" >
                   </td>
      </tr>
      <tr>
        <td width="173" align="center">原价</td>
        <td width="427" height="39">
          <input name="old_price" type="text" value="<%=old_price%>" >
   </td>
      </tr>
         <tr>
        <td width="173" align="center">产地</td>
        <td width="427" height="39">
          <input name="author" type="text" value="<%=author%>" >
                   </td>
      </tr>
         <tr>
        <td width="173" align="center">简介</td>
        <td width="427" height="39">
          <input name="detail" type="text" value="<%=detail%>" >
                   </td>
      </tr>
       <tr>
        <td width="173" align="center">类型</td>
        <td width="427" height="39">
          <input name="b_id" type="text" value="<%=b_id%>" >
                   </td>
      </tr>
      
      <tr>
        <td >&nbsp;</td>
        <td align="center"><input name="Submit" type="submit" value="保存" onClick="return check(form1)">
&nbsp;&nbsp;
		<input name="Submit" type="back" value="返回" onClick="history.back()"></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
        
</table>
<br>
<p><%@ include file="copyright.jsp"%>
</p>

</html>