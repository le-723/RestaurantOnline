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
        background:url(img/今日新品top.png) 360px -6px;
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/X2.png"></td>
				<td align="center" width="60px" >麻麻</td>
				<td align="center" width="296px" height="150px"  >【甘肃特产】 美味花椒芽菜辣酱辣椒酱香辣味200g 夹馍 拌面 炒菜 2瓶装</td>
			</tr>
			<tr >
				<td align="center" width="60px">价格</td>
				<td align="center">19元</td>
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
				<td rowspan="3" align="center"><img src="img/X3.png"/></td>
				<td align="center" width="50px">香果</td>
				<td width="296px" height="150px" > 百香果 中大果 单果50-75g 新鲜西番莲 2.5kg装</td>
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/X4.png"></td>
				<td align="center" width="60px" >牛板筋</td>
				<td align="center" width="296px" height="150px"  >星华源 内蒙古特产休闲零食小吃肉干肉脯牛板筋500g 香辣味
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
				<td rowspan="3" align="center"><img src="img/X5.png"/></td>
				<td align="center" width="50px">腊肉</td>
				<td width="296px" height="150px" >邻水烟熏老腊肉 200g/袋特级 四川特产土猪腊肉农家手工熟食腊味 腊肉200g
</td>
			</tr>
			<tr >
				<td align="center">价格</td>
				<td align="center">78元</td>
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
				<td rowspan="3" align="center" width="400px" height="50px"><img src="img/X6.png"></td>
				<td align="center" width="60px" >切糕</td>
				<td align="center" width="296px" height="150px"  >切糕王子 切糕100g*4盒 新疆特产玛仁糖混合坚果传统糕点舌尖上的中国零切糕
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
				<td rowspan="3" align="center"><img src="img/X7.png"/></td>
				<td align="center" width="50px">酱油</td>
				<td width="296px" height="150px" >福远 客家娘酒 客家黄酒 客家酿酒 1.6L 1瓶
</td>
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
		</div>

	</body>
</html>
    