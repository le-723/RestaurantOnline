<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
						         .d1{
         	padding-top:73px ;
         }
			.d2{
        border:0px solid #000fff; 
        height:200px; 
        background:url(img/Z1.png) 370px -41px;
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
			/*顶部区域*/
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/Z2.png"/></td>
				<td align="center" width="60px" >猪尾</td>
				<td align="center" width="296px" height="150px"  >飘香猪尾特色私房菜 五香卤猪尾巴 酒店特色招牌菜半成品食材400g

</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">65元</td>
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
				<td rowspan="3" align="center"><img src="img/Z4.png"/></td>
				<td align="center" width="50px">葱烧小乌</td>
				<td width="296px" height="150px" > 哈鲜 冷冻朝鲜葱烧小乌参 450g 半成品方便菜 自营海鲜水产</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">99元</td>
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/Z5.png"></td>
				<td align="center" width="60px" >黄酸汤</td>
				<td align="center" width="296px" height="150px"  >冷冻黄酸汤巴沙鱼片半成品方便菜 400g/袋
</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">29元</td>
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
				<td rowspan="3" align="center"><img src="img/Z6.png"/></td>
				<td align="center" width="50px">手工虾丸</td>
				<td width="296px" height="150px" >哈鲜 冷冻手工虾丸 180g 盒装 火锅食材 自营海鲜水产

</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">88元</td>
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/Z7.png"></td>
				<td align="center" width="60px" >双味扇贝</td>
				<td align="center" width="296px" height="150px"  >哈鲜 冷冻双味扇贝（蒜蓉粉丝扇贝＋紫袍玉带贝）117g 自营海鲜水产

</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">99元</td>
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
				<td rowspan="3" align="center"><img src="img/Z8.png"/></td>
				<td align="center" width="50px">馋嘴牛蛙</td>
				<td width="296px" height="150px" >哈鲜 冷冻馋嘴牛蛙 630g 半成品方便菜 自营海鲜水产
</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">96元</td>
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
    