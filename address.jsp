<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mvc.dao.UserDao" %>
<%@ page import="com.mvc.bean.UserBean" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	int Uid=Integer.parseInt(request.getParameter("id"));
	System.out.println(Uid);

	String str=null;
	UserBean userbean=(UserBean)request.getAttribute("userQ");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language="jscript">
function check(form){
	if(form.name.value==""){
		alert("请输入姓名!");form.name.focus();return false;
	}
	if(form.adress.value==""){
		alert("请输入地址!");form.adress.focus();return false;
	}
}
</script>
<head>
<base href="<%=basePath%>">
<title>My JSP 'signup.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style1.css">
</head>
<% 
	 int id=userbean.getId().intValue();
  String name=userbean.getUsername();
  String phone=userbean.getPhone();
  String adress=userbean.getAddress();
  
  %>
<body class="style-2">
	<div class="container">

		<div class="row">
			<div class="col-md-4">
				<!-- Start Sign In Form -->
				<form action="userServlet?action=userM&id=<%=Uid %>" class="fh5co-form animate-box"
					data-animate-effect="fadeInLeft" method="post">
					<label style="color: red;font-size: 20px;"></label>
					<h2>新增收获地址</h2>
					<div class="form-group1">
						<div class="alert alert-success" role="alert">你的信息将被保留！</div>
					</div>
					<div class="form-group1">
						<label for="name" class="sr-only">Name</label> 
						<label style="color: red;font-size: 10px;"></label>
						<input type="text" class="form-control" id="name" 
						value="<%=name%>" autocomplete="off" name="add_name" readonly="yes">
					</div>
					<div class="form-group1">
						<label for="email" class="sr-only">phone</label> 
						<input type="text" class="form-control" id="email" 
						value="<%=phone%>" autocomplete="off" name="add_phone" readonly="yes">
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">address</label> 
						<input type="text" class="form-control" id="email" 
						value="<%=adress%>" autocomplete="off" name="add_address">
					</div>
					<div class="form-group">
						<p>
							已有收货地址? <a href="buygoods.jsp?id=<%=Uid%>">选择</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="新增" class="btn btn-primary">
					</div>
				</form>
			</div>
		</div>

	</div>



</body>
</html>
