<%@page import="com.gem.book_mall.pojo.BookSort"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	int Uid=Integer.parseInt(request.getParameter("id"));
	System.out.println(Uid);

%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/head.css">
<!-- 轮播图样式 -->
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/htmleaf-demo1.css">
<link rel="stylesheet" href="css/slider.css">
<!-- 底部样式 -->
<link rel="stylesheet" type="text/css" href="css/foot.css">
<style type="text/css">
.container {
	/* max-width: 1024px; */
	width: 100%;
	margin: 0 auto;
	padding: 0px;
	font-size: 14px;
}

.preview {
	text-align: center;
	padding: 5px;
}

.preview a {
	display: inline-block;
	margin: 5px;
}

.preview img {
	display: block;
	width: 100%;
	height: auto;
}

.active {
	outline: 3px solid #196cd2;
	box-shadow: 2px 2px 20px 4px rgba(0, 0, 0, .5);
}
.menu ul{
	margin-top: 0px;
	margin-bottom: 0px;
}
.menu ul li{
	margin-top: 5px;
}
</style>
</head>

<body>
	<div class="head">
		<div class="menu">
			<ul>
				<li>
					<div class="div3" style="border:0px;">
						<img src="img/head.png" style="height: 20px; width: 20px; ">
					</div>
					<div class="div2">
						<a href="orderServlet?action=OrderifQuery&id=<%=Uid%>"><span>我的订单</span></a>
					</div>
				</li>
				<li>
					<div class="div3">
						<img src="img/11.png" style="height: 20px; width: 20px; ">
					</div>
					<div class="div2">
						<a href="BuyGoodsServlet?id=<%=Uid%>"><span>我的购物车</span></a>
					</div>
				</li>
				<li>
					<div class="div3">
						<img src="img/22.png" style="height: 20px; width: 20px;">
					</div>
					<div class="div2">
						<a href="index.jsp?id=<%=Uid%>"><span>我的收藏</span></a>
					</div>
				</li>
								<li>
					<div class="div3">
						<img src="img/22.png" style="height: 20px; width: 20px;">
					</div>
					<div class="div2">
						<a href="userServlet?action=userDetail&id=<%=Uid%>"><span>个人中心</span></a>
					</div>
				</li>
				<li>
					<div class="div3">
						<img src="img/head.png" style="height: 20px; width: 20px; ">
					</div>
					<div class="div2">
						<a href="signup.jsp"><span>注册</span></a>
						<a href="login.jsp"><span>登录</span></a>
					</div>
				</li>
				<li>
					<div class="div3">
						<img src="img/head.png" style="height: 20px; width: 20px; ">
					</div>
					<div class="div2">
						欢迎：&nbsp;&nbsp;<span>${user.username}</span>&nbsp;&nbsp;回来
					</div>
				</li>
			</ul>
		</div>
		<div class="head2" style="border:0px;">
			<div class="div4">
				<img src="img/tim.jpg" style="height: 94px; width: 538px; "> 
			</div>
			<div class="div5">
			
			</div>
		</div>
	</div>
	
	<!-- 分类信息 -->
	<div class="htmleaf-container">
		<nav>
		<ul id="main" style=" width: 1200px;">
			<li><a href="index.jsp?id=<%=Uid%>">网站主页</a></li>
			<li>菜品展示
				<ul class="drop" style="width: 400px;">
					<div>
						<li>						
						<span class="span1">
							<a href="SortBookServlet?sortid=1&&id=<%=Uid%>" class="a1" >
								今日新品
							</a>
						</span>
						
						
						</li>
						
						<li>
						<span class="span1">
							<a href="SortBookServlet?sortid=2&&id=<%=Uid%>" class="a1" >
								招牌菜
							</a>
						</span>
						
						</li>
						<li>
						<span class="span1">
							<a href="SortBookServlet?sortid=3&&id=<%=Uid%>" class="a1" >
								特色小吃
							</a>
						</span>
						
						</li>
												<li>
						<span class="span1">
							<a href="SortBookServlet?sortid=4&&id=<%=Uid%>" class="a1" >
								饮料
							</a>
						</span>
						
						</li>
						
					</div>
				</ul>
			</li>
			<li>关于我们</li>
			<li>联系我们</li>
			<div id="marker"></div>
		</ul>
		</nav>
	</div>
	<div class="htmleaf-container" style="background-color: white;">
		<div class="container" style="padding-bottom: 0px;padding-top: 0px;">
			<div class="slider-container">
				<div class="slider">
					<div class="slider__item">
						<img src="images/q5.png" alt="" style="height: 300px;"> <span
							class="slider__caption">罗浮山下四时春，卢橘杨梅次第新。

											日啖荔枝三百颗，不辞长作岭南人。 —— Xing_Ke_Jing</a>
						</span>
					</div>
					<div class="slider__item">
						<img src="images/q6.jpg" alt="" style="height: 300px;"> <span
							class="slider__caption">鲜鲫银丝脍，香芹碧涧羹。 —— Kan_Jia_Le</span>
					</div>
					<div class="slider__item">
						<img src="images/q7.jpg" alt="" style="height: 300px;"> <span
							class="slider__caption">吴酒一杯春竹叶，吴娃双舞醉芙蓉。 —— 白居易</span>
					</div>
					<div class="slider__item">
						<img src="images/q8.png" alt="" style="height: 300px;"> <span
							class="slider__caption">人间定无可意，怎换得玉脍丝莼？
							——陆游</span>
					</div>
				</div>
				<div class="slider__switch slider__switch--prev"
					data-ikslider-dir="prev">
					<span><svg xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 20 20">
						<path
							d="M13.89 17.418c.27.272.27.71 0 .98s-.7.27-.968 0l-7.83-7.91c-.268-.27-.268-.706 0-.978l7.83-7.908c.268-.27.7-.27.97 0s.267.71 0 .98L6.75 10l7.14 7.418z" /></svg></span>
				</div>
				<div class="slider__switch slider__switch--next"
					data-ikslider-dir="next">
					<span><svg xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 20 20">
						<path
							d="M13.25 10L6.11 2.58c-.27-.27-.27-.707 0-.98.267-.27.7-.27.968 0l7.83 7.91c.268.27.268.708 0 .978l-7.83 7.908c-.268.27-.7.27-.97 0s-.267-.707 0-.98L13.25 10z" /></svg></span>
				</div>
			</div>

		</div>
	</div>
	<!-- <div style="width: 90%;height: 500px;border: 1px black solid;">
		<iframe src="mall.jsp" name="mall_frame" width="100%" height="100%" frameborder="no">mall.jsp</iframe>
	</div>  -->
	<div>
		<jsp:include page="mall.jsp"></jsp:include>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" 
		type="text/javascript">
	</script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script src="js/slider.js"></script>
	<script type="text/javascript">
		$(".slider-container").ikSlider({
			speed : 500
		});
		$(".slider-container").on('changeSlide.ikSlider', function(evt) {
			console.log(evt.currentSlide);
		});
	</script>
	<script type="text/javascript">
		var $preview = $('.preview a');

		function changeActivePreview(i) {
			$('.active').removeClass('active');
			$preview.eq(i).addClass('active');
		}

		$preview.on('click', function(e) {
			e.preventDefault();
			var index = $(this).index();
			$('.slider-container').ikSlider(index);
		});

		$('.slider-container').on('changeSlide.ikSlider', function(e) {
			changeActivePreview(e.currentSlide);
		});

		changeActivePreview(0)
	</script>
</body>
</html>
