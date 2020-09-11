<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mvc.dao.UserDao" %>
<%@ page import="com.mvc.bean.UserBean" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<script language="jscript">
function check(form){
	if(form.name.value==""){
		alert("请输入用户姓名!");form.name.focus();return false;
	}
	if(form.pwd.value==""){
		alert("请输入密码!");form.pwd.focus();return false;
	}
	if(form.adress.value==""){
		alert("请输入地址!");form.adress.focus();return false;
	}
}
</script>
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
        <td height="22" valign="top">当前位置：会员管理 &gt; 会员档案管理  &gt; 会员注册 &gt;&gt;&gt;</td>
        </tr>
        
        
        
        <tr>
        <td align="center" valign="top">
        <table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<form name="form1" method="post" action="userServlet?action=userAdd">
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td width="173" align="center">登陆账号:</td>
        <td width="427" height="39">
          <input name="name" type="text"> 
                   </td>
      </tr>
      <tr>
        <td width="173" align="center">登陆密码:</td>
        <td width="427" height="39">
          <input name="pwd" type="password"> 
                   </td>
      </tr>
      
      <tr>
        <td width="173" align="center">性别：</td>
        <td height="35"><input name="sex" type="radio" id="radiobutton" value="男" checked>
          <label for="radiobutton">男 </label>&nbsp;&nbsp;&nbsp;
          <label>
          <input name="sex" type="radio" class="noborder" value="女">
          女</label></td>
      </tr>
      <tr>
        <td align="center">电话：</td>
        <td><input name="phone" type="text" id="phone"></td>
      </tr>
      <tr>
        <td align="center">有效地址：</td>
        <td><textarea name="adress" type="textarea" rows="4" cols="60">请输入有效地址</textarea>
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