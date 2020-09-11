<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html >
<meta charset="UTF-8">
<title>Login</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <style type="text/css">
    	html{
    width: 100%;
    height: 100%;
    overflow: hidden;
    font-style: sans-serif;
}
body{
    width: 100%;
    height: 100%;
    font-family: 'Open Sans',sans-serif;
    margin: 0;
    background-color: #4A374A;
}
#login{
    position: absolute;
    top: 50%;
    left:50%;
    margin: -150px 0 0 -150px;
    width: 300px;
    height: 300px;
    
}
#login h1{
    color: #fff;
    text-shadow:0 0 10px;
    letter-spacing: 1px;
    text-align: center;
}
h1{
    font-size: 3.5em;
    margin: 0.4em 0;
    transition: 3s;
    font-family:Times New Roman;
}
input{
    width: 278px;
    height: 18px;
    margin-bottom: 10px;
    outline: none;
    padding: 10px;
    font-size: 13px;
    color: #fff;
    text-shadow:1px 1px 1px;
    border-top: 1px solid #312E3D;
    border-left: 1px solid #312E3D;
    border-right: 1px solid #312E3D;
    border-bottom: 1px solid #56536A;
    border-radius: 4px;
    background-color: #2D2D3F;
}
#o{
	 text-decoration:none ;
	 out-line: nonecolor: #*****;
	 color: azure;
}

.but{
    width: 300px;
    min-height: 20px;
    display: block;
    background-color: #4a77d4;
    border: 1px solid #3762bc;
    color: #fff;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    margin: 0;
    transition: 1.5s;

}
.bu{
    width: 300px;
    min-height: 20px;
    display: block;
    background-color: #424242;
    border: 1px solid #3762bc;
    color: #fff;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    margin: 0;
    transition: 1s;
     background-color:#008080;
     }
    .bu :hover{
    border-radius: 42%;
    color: white;
    background-color:#AABBCC;
    transition: 1s;
}
    .but :hover{
    border-radius: 12%;
    color: white;
    background-color:#F5DEB3;
    transition: 1.5s;
}
     
.link {
	
  outline: none;
  text-decoration: none;
  position: relative;
  font-size: 8em;
  line-height: 1;
  color: #9e9ba4;
  display: inline-block;
}   
.but:link { color: #06F; text-decoration: none; }/* 未访问的链接 */
    .but:visited { color: #999; text-decoration: line-through; } /* 已访问的链接 */
    .but:hover { color: #F00; text-decoration: underline; }/* 鼠标移动到链接上 */
    .but:active { color: #F0F; } /* 选定的链接 */
.b{
    width: 300px;
    min-height: 20px;
    display: block;
    background-color: #424242;
    border: 1px solid #3762bc;
    color: #fff;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    margin: 0;
    transition: 1s;
     background-color:#008080;

     }
    .b :hover{
    border-radius: 42%;
    color: white;
    background-color:#F5DEB3;
    transition: 1s;
}

.p{
	background-color: #4a77d4;
	font-family: "bookman old style";
	color: white;
}
.p{

    border-radius: 18%;
    color: white;
    background-color:#4A374A;
    transition: 1s;
    margin: 0;
    padding: 0;

}

    </style>
</head>
<body>
    <div id="login">
    	<h1>Login</h1>
          <form action="LoginServlet" method="post">
            <input type="text" required="required" placeholder="用户名" name="uname"></input>
            <input type="password" required="required" placeholder="密码" name="pwd"></input>
                        <br/>
             <button class="but" type="button"><a id="o" href="signup.jsp">注册</a></button>
            
            <br/>
            <button class="but" type="submit">顾客登录</button>
        
            <br/>
             <button class="bu" type="button"><a id="o" href="log.jsp">管理员登入</a></button>
            
        </form>
    </div>
</body>
</html>>
</html>