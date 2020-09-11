<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>操作成功!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<%int para=Integer.parseInt(request.getParameter("para"));
switch(para){

	case 2:
	%>
		<script language="javascript">
		alert("员工权限信息修改成功!");
		window.location.href="staffgrantServlet?action=staffgrantQuery";
		</script>		
	<%	break;
	
}
%>
</body>
</html>