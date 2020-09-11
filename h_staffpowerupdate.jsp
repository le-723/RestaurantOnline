<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.dao.StaffGrantDao" %>
<%@ page import="com.mvc.bean.StaffGrantBean" %>

<%
	StaffGrantBean staffgrantbean =(StaffGrantBean)request.getAttribute("staffgrantQueryif");
	System.out.println(staffgrantbean.getSid());

	int ID=staffgrantbean.getSid();
	int resset=staffgrantbean.getResset().intValue();
	int orderset=staffgrantbean.getOrderset().intValue();
	int foodset=staffgrantbean.getFoodset().intValue();
	int userset=staffgrantbean.getUserset().intValue();
	%> 
<!DOCTYPE html>
<html>
<head>
<title>权限设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<table width="452" height="175" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="3%" height="25">&nbsp;</td>
        <td width="94%">&nbsp;</td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="131"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">
  	<form name="form1" method="post" action="staffgrantServlet?action=staffgrantModify">
	<table height="126"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="85" height="29" align="center">员工编号：		</td>
        <td width="190">
          <input name="id" type="text" readonly="yes" value="<%=ID%>">        </td>
      </tr>
      <tr>
        <td height="74" align="center">拥有的权限：</td>
        <td><table width="100%" height="67" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="47%">
            <input name="resset" type="checkbox" class="noborder" id="resset" value="1" <%if(resset==1){out.println("checked");}%>>
	餐厅信息设置</td>
            <td width="53%">
            <input name="orderset" type="checkbox" class="noborder" id="orderset" value="1" <%if(orderset==1){out.println("checked");}%>>
              订单管理</td>
          </tr>
          <tr>
            <td><input name="foodset" type="checkbox" class="noborder" id="foodset" value="1" <%if(foodset==1){out.println("checked");}%>>
             食物管理</td>
            <td><input name="userset" type="checkbox" class="noborder" id="userset" value="1" <%if(userset==1){out.println("checked");}%>>
               用户管理</td>
            <td>&nbsp;</td>
          </tr>
        </table>          </td>
      </tr>
      <tr>
        <td height="22" align="center">&nbsp;</td>
        <td><input name="Button" type="submit" class="btn_grey" value="保存">
&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="关闭" onClick="window.close();"></td>
      </tr>
    </table>
	</form>
	
	</td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>
