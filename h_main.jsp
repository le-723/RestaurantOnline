<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.mvc.dao.StaffGrantDao" %>
<%@ page import="com.mvc.bean.StaffGrantBean" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <title></title>
        <style type="text/css">
        	*{
     		padding: 0;
     		margin: 0;
     		}
        	.top{
				width: 1600px;
				height: 200px;
				margin: auto;
				background:#FFFFFF;
				}
.left{
	border: 2px solid #FFFFFF;
	width: 250px;
	height: 520px;
	float: left;
}
.right{
	width: 1240px;
	height: 660px;
	border: 2px solid  #FFFFFF;
	float: right;
}
        </style>
    </head>
    <body>
<script type="text/javascript">
    $(function () {
        layoutrezise();
        AutoHeight();
    })
    function layoutrezise() {
        var headerH = $("div#Headbox").height(); //获取头部的高度
        var bodyerH = $(window).height() - headerH;  //计算内容的高度（不包括头部）
        $("div#Bodybox,div#bleftBox,div#brightBox,iframe#leftiframe,iframe#mainframe").height(bodyerH); //设置主框架的高度--%>
        $("div#brightBox").width($(window).width() - $("div#bleftBox").width()); //设置主框架的宽度
    }
    function AutoHeight() {
        $(window).resize(function () {
            layoutrezise();
        })
    }        
</script>
<%

StaffGrantBean staffg=(StaffGrantBean)request.getAttribute("staffg");

%>
		<div id="Headbox" class="clearfix">
    	<iframe class="top"frameborder="0" name="top" src="h_topImage.jsp" style="width:100%; border:0;" id="top"></iframe>
    	</div>
    	<div id="Bodybox" class="clearfix">
        <iframe class="left" frameborder="0" name="left" src="staffgrantServlet?action=staffgrantMQ&id=<%=staffg.getSid()%>" id="left"></iframe>
         </div>
         <div id="brightBox" class="fl">
        <iframe class="right" frameborder="0" src="D.jsp" name="right"  style="width:80%; border:0;"  id="right"></iframe>
        </div>
    </body>
</html>
    
    
    