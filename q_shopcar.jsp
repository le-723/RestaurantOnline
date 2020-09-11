<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<%
/*Collection coll=(Collection)request.getAttribute("vip");  //setAttribute("vip")由vip.java中的vipQurey设置
ChStr chStr=new ChStr();
 */
%>

<head>
<meta charset="UTF-8">
<title>购物车</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body  onLoad="clockon(bgclock)">


<table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center" >
  <tr>
    <td valign="top" >
    <table width="99%" height="510" border="0" cellspacing="0" cellpadding="0" border="0" align="center">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top">当前位置：购物车 </td>
      </tr>
      <tr>
        <td align="center" valign="top">

<%
/*
if(coll==null || coll.isEmpty()){
*/
%>
<!--     <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无读者信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="reader_add.jsp">添加读者信息</a> </td>
  </tr>
		  </table>
-->
 <%
/*
}else{
  //通过迭代方式显示数据
  
  Iterator it=coll.iterator();
  int ID=0;
  String name="";
  String typename="";
  String barcode="";
  String paperType="";
  String paperNO="";
  String tel="";
  String email="";
  
*/
  %>
  <p id="demo"></p>
<script>
function myFunction(){
	var x;
	var r=confirm("是否确定删除？");
	if (r==true){
		x="\"删除成功\"";
		
	}
	else{
		x="\"取消\"";}
	document.getElementById("demo").innerHTML=x;
}
</script>
  
  <table width=97%  border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse;" class="Tab" >
  <tr align="center">
    <td border="80" width="70%" >购物车信息</td>  
    <td width="10%">购买</td>
    <td width="10%">修改</td>
    <td width="10%">删除</td>
  </tr>
  <tr align="center">
  	<td width="70%">0001</td>  
  	<td align="center"><a href="q_shopcar_pay.jsp">购买</a></td>
    <td align="center"><a href="q_shopcar_set.jsp">修改</a></td>
    <td align="center"><button onclick="myFunction()">删除</button></td> 
  </tr>
  <tr align="center">
  	<td align="center">0002</td>  
    <td align="center"><a href="q_shopcar_pay.jsp">购买</a></td>
    <td align="center"><a href="q_shopcar_set.jsp">修改</a></td>
    <td align="center"><button onclick="myFunction()">删除</button></td>
  </tr>
  <tr align="center">
  	<td align="center">0003</td>  
    <td align="center"><a href="q_shopcar_pay.jsp">购买</a></td>
    <td align="center"><a href="q_shopcar_set.jsp">修改</a></td>
    <td align="center"><button onclick="myFunction()">删除</button></td>
  </tr>
  <tr align="center">
  	<td align="center">0003</td>  
    <td align="center"><a href="q_shopcar_pay.jsp">购买</a></td>
    <td align="center"><a href="q_shopcar_set.jsp">修改</a></td>
    <td align="center"><button onclick="myFunction()">删除</button></td>
  </tr>
  <tr align="center">
  	<td align="center">0003</td>  
    <td align="center"><a href="q_shopcar_pay.jsp">购买</a></td>
    <td align="center"><a href="q_shopcar_set.jsp">修改</a></td>
    <td align="center"><button onclick="myFunction()">删除</button></td>
  </tr>
  
<%
 /*
   while(it.hasNext()){
    ReaderForm readerForm=(ReaderForm)it.next();
	ID=readerForm.getId().intValue();
	name=readerForm.getName();
	barcode=readerForm.getBarcode();
	typename=chStr.nullToString(readerForm.getTypename(),"&nbsp;");
	paperType=readerForm.getPaperType();
	paperNO=chStr.nullToString(readerForm.getPaperNO(),"&nbsp;");
	tel=chStr.nullToString(readerForm.getTel(),"&nbsp;");
	email=chStr.nullToString(readerForm.getEmail(),"&nbsp;");
*/
	%> 
 

<%
/*
  }
}*/
%>  


</table>
	</td>
    </tr>
    </table>
</td>
  </tr>
</table>
  <%/*@ include file="copyright.jsp"*/%></td>
  </tr>
</table>
</body>
</html>