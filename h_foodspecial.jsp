<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.bean.FoodBean" %>
<%@ page import="com.mvc.util.ChStr"%>


<!DOCTYPE html>
<html>
<%
Collection coll=(Collection)request.getAttribute("foodspecial");  //setAttribute("vip")由vip.java中的vipQurey设置
ChStr chStr=new ChStr();
%>

<head>
<meta charset="UTF-8">
<title>饕餮餐厅</title>
<link href="CSS/h_style.css" rel="stylesheet">
<script>
function deleteRow(r)
{
	var i=r.parentNode.parentNode.rowIndex;
	document.getElementById('foodtable').deleteRow(i);
}
</script>

</head>
<body  onLoad="clockon(bgclock)">

<table width="778" border="0" cellspacing="0" align="center"  bgcolor="#808080">
    <tr>
        <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="700"  border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder_gray">
            <tr>
                <td height="510" valign="top" style="padding:5px;"><table width="98%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="22" valign="top" class="word_orange">当前位置：菜品管理 &gt;招牌菜&gt;&gt;&gt;</td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" cellpadding="0" cellspacing="0">
<%
if(coll==null || coll.isEmpty()){
%>
     <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无食物信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="h_foodadd.jsp">添加食物信息</a> </td>
  </tr>
		  </table>

 <%
}else{
  //通过迭代方式显示数据
  
  Iterator it=coll.iterator();
  int id;
  String b_name="";
  int new_price;
  int old_price;
  String author="";
  String detail="";
  int b_id;
  %>

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="87%">&nbsp;      </td>
<td width="13%">
      <a href="h_foodadd.jsp">添加食物信息</a></td>	  
  </tr>
</table> 
<table id="foodtable" width=97%  border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse;" class="Tab" >
  <tr align="center">
    <td border="1" width="10%" >id</td>  
     <td width="10%">名称</td>
    <td width="10%">现价</td>
    <td width="7%" >原价</td>
    <td width="10%">产地</td>
    <td width="6%">简介</td>
    <td width="6%">类型</td>
  </tr>
                               
<%
   while(it.hasNext()){
    FoodBean foodbean=(FoodBean)it.next();
	id=foodbean.getId();
	b_name=foodbean.getB_name();
	new_price=foodbean.getNew_price();
	old_price=foodbean.getOld_price();
	author=foodbean.getAuthor();
	detail=foodbean.getDetail();
	b_id=foodbean.getB_id();
	if(b_id==2){
	%> 
	 <tr> 
    <td style="padding:5px;"><%=id%></td>
    <td style="padding:5px;"><%=b_name%></td>
    <td style="padding:5px;"><%=new_price%></td>  
    <td style="padding:5px;"><%=old_price%></td>  
    <td style="padding:5px;"><%=author%></td> 
        <td style="padding:5px;"><%=detail%></td>  
        <td style="padding:5px;"><%=b_id%></td>  
     
	
    <td align="center"><a href="foodServlet?action=foodModifyQuery&id=<%=id%>">修改</a></td>
    <td align="center"><a href="foodServlet?action=foodDel&id=<%=id%>">删除</a></td>
  </tr>
<%
  }
}}
%>  
</table>
	</td>
    </tr>
    </table>
</td>
  </tr>
</table>
  <%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>