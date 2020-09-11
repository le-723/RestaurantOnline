<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ page import="com.mvc.dao.UserDao" %>
<%@ page import="com.mvc.bean.UserBean" %>
<%@ page import="java.util.*"%>
<html>
<%
String str=null;
UserBean userbean=(UserBean)request.getAttribute("userDetail");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base >
<title>会员信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style1.css">
</head>
<body class="style-2">
<% 
int id=userbean.getId().intValue();
String name=userbean.getUsername();
String pwd=userbean.getPwd();  
String sex=userbean.getSex();  
String phone=userbean.getPhone();
String adress=userbean.getAddress();
  %>

<div class="container">

		<div class="row">
			<div class="col-md-4">
				<!-- Start Sign In Form -->
				<form action="SignUpServlet" class="fh5co-form animate-box"
					data-animate-effect="fadeInLeft" method="post">
					<label style="color: red;font-size: 20px;"></label>
					<h2>个人信息</h2>
				
					<div class="form-group1">
						<label for="name" class="sr-only">用户名</label> 
						<label style="color: red;font-size: 10px;"></label>
						<input type="text" class="form-control" id="name" 
						placeholder="Name" autocomplete="off" name="sign_name" value="<%=name %>">
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">登陆密码</label> 
						<input type="password" class="form-control" id="password"
							placeholder="Password" autocomplete="off" value="<%=pwd%>" name="sign_pwd">
					</div>
					<!-- <div class="form-group">
						<label for="re-password" class="sr-only">Re-type Password</label>
						<input type="password" class="form-control" id="re-password"
							placeholder="Re-type Password" autocomplete="off">
					</div> -->
					<div class="form-group1">
						<label for="email" class="sr-only">性别</label>
						<input type="text" class="form-control" id="name" 
						placeholder="Name" autocomplete="off" name="sign_name" value="<%=sex%>">
						</label>
					</div>
					<div class="form-group1">
						<label for="email" class="sr-only">phone</label> 
						<input type="text" class="form-control" id="email" 
						placeholder="Phone" autocomplete="off" name="sign_phone" value="<%=phone%>">
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">地址</label> 
						<input type="text" class="form-control" id="email" 
						placeholder="Address" autocomplete="off" name="sign_address" value="<%=adress%>">
					</div>
					
					<div class="form-group">
						<input name="Submit" type="button" value="返回" onClick="history.back()">
					</div>
				</form>
				<!-- END Sign In Form -->


			</div>
		</div>

	</div>


<p><%@ include file="copyright.jsp"%>
</p>

</body>
</html>
