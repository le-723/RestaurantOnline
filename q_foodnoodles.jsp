<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			/*顶部区域*/
						         .d1{
         	padding-top:73px ;
         }
						.d2{
        border:0px solid #000fff; 
        height:200px; 
        background:url(img/M2.png) 241px -5px;
        background-repeat: no-repeat;  
        background-color: #EEEEEE;
			}
			.d3{
				width: auto;
				height: 220px;
				border: 3px solid whitesmoke;
			}
			.d3l{
				float: left;
				
			}
			.d3r{
				float: right;
				
			}
		html,body{
				background-image:;
			}
			.main{
				font-family: "微软雅黑";
				font-style: initial;
			}
.top {
    width: 100%;
    height: 65px;
    background-color:#F2F2F2;
    position: fixed;
    opacity: 0.8;
}

.top .top_in {
    width: 95%;
    height: 50px;
    margin: 0 auto;
}

.top .top_in .logo {
    height: 50px;
    width:51.5%;
    float: left;
    background:url(img/美女.png) -81px -5px;
}

.top .top_in .main {
    height: 50px;
    width: 100%;
}

.top .top_in .main > li {
    color: white;
    float: right;
    width: 10%;
    height: 50px;
    list-style: none;
    text-align: center;
    line-height: 50px;
    box-sizing: border-box;
    border-left: 1px solid #fff;
    border-bottom: 2px solid #D43F3A;
}

.top .top_in .main > li:hover {
    border-bottom: 1px cyan solid;
}

.top .top_in a {
    color: white;
    font-size: 15px;
    font-weight: bold;
}
    .menu{
    	 z-index:200;
    }
.top .top_in .menu {
    list-style: binary;
    background-color: #F0AD4E;
    opacity: 0;
    color: #F5DEB3;
}

.top .top_in .menu li {
    box-sizing: border-box;
    border-bottom: 1px solid #C0A16B;
}

.top .top_in .menu:hover {
    opacity: 0.8;
    transition: 2s;
}
		</style>
	</head>
	<body>
		<div class="top">
    <div class="top_in">
        <div class="logo"></div>
        <td width="29%" bgcolor="#c69a0a"><div id="bgclock" class="word_white"></div></td>
		<script language="javascript">
			function quit(){
				if(confirm("真的要退出系统吗?")){
					window.location.href="q_logout2.jsp";
				}
			}
		</script>
        <ul class="main">
            <li>
				                	<font color="saddlebrown" size="3" >退出登录</font>
                	                <ul class="menu">
                    <li><a href="#" onClick="quit()" class="word_white">退出登录</a><br />
                </ul>
            <br />
            
            <li>
				                	<font color="saddlebrown" size="3" >个人中心</font>
                	                <ul class="menu">
                    <li><a href="q_person_Modify.jsp">会员信息修改</a><br />
                    <li><a href="q_person_order.jsp">订单查询</a><br />
                </ul>
            <br />
            <li>
            	            	<font color="saddlebrown" size="3" >购物车</font> 
                      
                <ul class="menu">
                    <li><a href="q_shopcar.jsp">我的购物车</a><br />
                    
                </ul>

            <br />
            
            <li>
            	  	<font color="saddlebrown" size="3" >菜品展示</font>
                
                <ul class="menu">
                    <li><a href="q_foodnew.jsp">今日新品</a><br />
                    <li><a href="q_foodspecial.jsp">招牌菜</a><br />
                    <li><a href="q_foodnoodles.jsp">特色面食</a><br />
                    <li><a href="q_fooddrink.jsp">饮料</a><br />
                </ul>
            <br />
            <li>    
           <font color="saddlebrown" size="3" >首页</font> 
           <ul class="menu">
                    <li><a href="KMGP.jsp">首页</a><br />
                    </ul>
           
        </ul>
         
    </div>
</div>
			<div class="d1">
			
				<div class="d2">
				</div>
				
				<div class="d3">
					
					<div class="d3l">
									<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/M3.png"/></td>
				<td align="center" width="60px" >荞面</td>
				<td align="center" width="296px" height="150px"  >
低脂苦荞面荞麦面条 营养粗粮杂粮挂面健身主食无盐无添加200克

</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">15元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
				    <form action="livemessage.html" method="get"  >
						<input type="submit" value="加入购物车" style="background: #CCCC00;" />
					</form>
				</td>
			</tr>
			</table>
					</div>
					
					
               <div class="d3r">
               				<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center"><img src="img/M4.png"/></td>
				<td align="center" width="50px">肉泡馍</td>
				<td width="296px" height="150px" > 秦圣羊肉泡馍 陕西西安特产美食泡馍 回坊回民街清真食品340g内含粉丝糖蒜</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">16元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
					<form action="livemessage.html" method="get">
						
						<input type="submit" value="加入购物车"  style="background: #CCCC00;"/>
					</form>
				</td>
			</tr>
		</table>
               </div>
				</div>
				
				
		
						<div class="d3">
					
					<div class="d3l">
									<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/M5.png"></td>
				<td align="center" width="60px" >擀面皮</td>
				<td align="center" width="296px" height="150px"  >秦圣 陕西凉皮特产 岐山擀面皮 切片280g*6送1袋 真空包装多省包邮

</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">59元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
				    <form action="livemessage.html" method="get"  >
						<input type="submit" value="加入购物车" style="background: #CCCC00;" />
					</form>
				</td>
			</tr>
			</table>
					</div>
					
					
               <div class="d3r">
               				<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center"><img src="img/M6.png"/></td>
				<td align="center" width="50px">空心挂面</td>
				<td width="296px" height="150px" >秦圣面条 陕西西安特产手工空心挂面 炸酱面拌面拉面汤面素面儿童营养挂面200g*5把 手工空心挂面200g*5



</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">68元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
					<form action="livemessage.html" method="get">
						
						<input type="submit" value="加入购物车"  style="background: #CCCC00;"/>
					</form>
				</td>
			</tr>
		</table>
               </div>
		
		
				</div>
				
				
								<div class="d3">
					
					<div class="d3l">
									<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/M10.png"></td>
				<td align="center" width="60px" >挂面</td>
				<td align="center" width="296px" height="150px"  >想念挂面 麦胚900g 鸡蛋风味 挂面 细面条 方便速食 待煮面条 营养面条


</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">59元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
				    <form action="livemessage.html" method="get"  >
						<input type="submit" value="加入购物车" style="background: #CCCC00;" />
					</form>
				</td>
			</tr>
			</table>
					</div>
					
					
               <div class="d3r">
               				<table border="1" cellspacing="0" cellpadding="0" width="700" height="200" bgcolor="#FFFFFF">

			<tr >
				<td rowspan="3" align="center"><img src="img/M9.png"/></td>
				<td align="center" width="50px">热干面</td>
				<td width="296px" height="150px" >想念挂面 342g 特色 武汉 热干面 老汉口风味 挂面 方便速食 待煮拌面 营养面条

</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">76元</td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#D58512">
					<form action="livemessage.html" method="get">
						
						<input type="submit" value="加入购物车"  style="background: #CCCC00;"/>
					</form>
				</td>
			</tr>
		</table>
               </div>
		
		
				</div>
		</div>

	</body>
</html>
