<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%--<%@ page import="com.dao.ReaderDAO" --%>
<%--<%@ page import="com.dao.ReaderTypeDAO" %>--%>
<%--<%@ page import="com.actionForm.ReaderForm" %>--%>
<%--<%@ page import="com.actionForm.ReaderTypeForm"%>--%>
<%--@ page import="java.util.*"--%>
<html>
<%--<%
String str=null;
ReaderTypeDAO readerTypeDAO=new ReaderTypeDAO();
Collection coll=(Collection)readerTypeDAO.query(str);
Iterator it=coll.iterator();
ReaderForm readerForm=(ReaderForm)request.getAttribute("readerQueryif");
%>--%>
<%--<script language="jscript">
function check(form){
	if(form.name.value==""){
		alert("请输入读者姓名!");form.name.focus();return false;
	}
	if(form.paperNO.value==""){
		alert("请输入证件号码!");form.paperNO.focus();return false;
	}
}
</script>--%>
<head>
<title>会员信息修改</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body onLoad="clockon(bgclock)">
<%--<%@include file="banner.jsp"%>
<%@include file="navigation.jsp"%>--%>
<table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" <%-- class="tableBorder_gray"--%>>
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">当前位置：购物车 &gt; 修改信息</td>
      </tr>
      <tr>
        <td align="center" valign="top"><table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
<%--<%  int ID=readerForm.getId().intValue();
  String name=readerForm.getName();
  String sex=readerForm.getSex();  
  String barcode=readerForm.getBarcode();
  String vocation=readerForm.getVocation();
  String birthday=readerForm.getBirthday();
  String paperType=readerForm.getPaperType();
  String paperNO=readerForm.getPaperNO();
  String tel=readerForm.getTel();
  String email=readerForm.getEmail();
  String createDate=readerForm.getCreateDate();
  String remark=readerForm.getRemark();
  String operator=readerForm.getOperator();
  int typeid=readerForm.getTypeid();
  String typename=readerForm.getTypename();
  String typeName="";
  int typeID=0;
  %>--%>
    <td align="center" valign="top">
	<%-- <form name="form1" method="post" action="reader?action=readerModify">--%>
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td width="173" align="center">数&nbsp;&nbsp;&nbsp;&nbsp;量：</td>
        <td width="427" height="39">
          <input name="name" type="text" value="<%--=name--%>" readonly="yes"> 
          *         
          <input name="id" type="hidden" id="id" value="<%--=ID--%>"></td>
          </tr>
        <tr>
        <td align="center">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
        <td><input name="email" type="text" id="email" value="<%--=email--%>" >
          <input name="operator" type="hidden" id="operator" value="<%--=operator--%>"></td>
      </tr>
      <tr>
        <td align="center">电&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
        <td><input name="vocation" type="text" id="vocation" value="<%--=vocation--%>"></td>
      </tr>
      <tr>
        <td align="center">地&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
        <td><input name="tel" type="text" id="tel" value="<%--=tel--%>"></td>
      </tr>
      <tr>
        <td align="center">备&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
        <td><textarea name="remark" cols="50" rows="5" class="wenbenkuang" id="remark"><%--=remark--%></textarea></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td><input name="Submit" type="submit" class="btn_grey" value="保存" <%-- onClick="return check(form1)"--%>>
&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="返回" onClick="history.back()"></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table></td>
      </tr>
    </table>
</td>
  </tr>
<%-- </table><%@ include file="copyright.jsp"%></td>--%>
  </tr>
</table>
</body>
</html>
