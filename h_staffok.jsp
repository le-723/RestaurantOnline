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
	case 1:
	%>
		<script language="javascript">
		alert("员工信息添加成功!");
		window.location.href="staffServlet?action=staffQuery";
		</script>	
	<%	break;
	case 2:
	%>
		<script language="javascript">
		alert("员工信息修改成功!");
		window.location.href="staffServlet?action=staffQuery";
		</script>		
	<%	break;
	case 3:
	%>
		<script language="javascript">
		alert("员工信息删除成功!");
		window.location.href="staffServlet?action=staffQuery";
		</script>		
	<%	break;
}
%>
</body>
</html>