<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.dao.StaffGrantDao" %>
<%@ page import="com.mvc.bean.StaffGrantBean" %>
<!DOCTYPE html> 
<html>
	<head>
		<title>左侧菜单</title>
		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<style type="text/css">
			*{
				margin: 0;
				padding: 0;
			}
			.menu_list {
				width: 248px;
				margin: 0;
			}
			
			.menu_head {
				height: 47px;
				line-height: 47px;
				padding-left: 38px;
				font-size: 14px;
				color: #525252;
				cursor: pointer;
				border: 1px solid #f1f1f1;
				position: relative;
				margin: 0px;
				font-weight: bold;
				background: #FFFFFF;
			}
			
			.menu_list .current {
				background: #FFFFFF;
			}
			
			.menu_nva {
				line-height: 38px;
				border-left: 1px solid #FFFFFF;
				backguound: #fff;
				border-right: 1px solid #FFFFFF;
			}
			
			.menu_nva a {
				display: block;
				height: 38px;
				line-height: 38px;
				padding-left: 38px;
				color: #777777;
				background: #fff;
				text-decoration: none;
				border-bottom: 1px solid #FFFFFF;
			}
			
			.menu_nva a:hover {
				text-decoration: none;
			}
		</style>
	</head>
<%
StaffGrantBean staffg=(StaffGrantBean)request.getAttribute("staffg");
System.out.println(staffg.getSid());

%>
	<body>
	<div id="firstpaneDiv" class="menu_list">
		<%if(staffg.getResset()==1||staffg.getUserset()==1){%>
			<h3 class="menu_head current">人员管理</h3>
			<div style="display:block" class="menu_nva">
				<%if(staffg.getUserset()==1){%>
				<a href=userServlet?action=userQuery target="right" >会员管理</a>
			<%} %>
				<%if(staffg.getResset()==1){%>
				<a href=staffServlet?action=staffQuery target="right" >员工管理</a>
				<a href=staffgrantServlet?action=staffgrantQuery target="right" >员工权限管理</a>
			</div>
			<%} 
				}%>
		<%if(staffg.getOrderset()==1){%>
			<h3 class="menu_head">订单管理</h3>
			<div style="display:block" class="menu_nva">
				<a href=orderServlet?action=OrderQuery target="right">订单</a>
			</div>
		<%} %>
		<%if(staffg.getFoodset()==1){%>
			<h3 class="menu_head">菜品管理</h3>
			<div style="display:block" class="menu_nva">
				<a href="foodServlet?action=foodnew"target="right">今日新品</a>
				<a href="foodServlet?action=foodspecial"target="right">招牌菜</a>
				<a href="foodServlet?action=foodnoodles"target="right">特色面食</a>
				<a href="foodServlet?action=fooddrink" target="right">饮料</a>
			</div>
		<%} %>
			<h3 class="menu_head">餐厅信息查询</h3>
			<div style="display:block" class="menu_nva">
				<a href="h_resmessage.jsp"target="right">餐厅信息管理</a>
			</div>
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#firstpaneDiv .menu_nva:eq(0)").show();
	$("#firstpaneDiv h3.menu_head").click(function(){
		$(this).addClass("current").next("div.menu_nva").slideToggle(200).siblings("div.menu_nva").slideUp("slow");
		$(this).siblings().removeClass("current");
	});
	$("#secondpane .menu_nva:eq(0)").show();
	$("#secondpane h3.menu_head").mouseover(function(){
		$(this).addClass("current").next("div.menu_nva").slideDown(400).siblings("div.menu_nva").slideUp("slow");
		$(this).siblings().removeClass("current");
	});
});
</script>
</body>
</html>