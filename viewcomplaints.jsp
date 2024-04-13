<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="Style_button_text.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #548AC1;
	background-image:url(images/bg.jpg)
}
.style5 {
	font-size: 24px;
	font-weight: bold;
	color: #FFFF00;
}
.style10 {font-size: 18px; font-weight: bold; color: #0000FF; }
.style12 {color: #FFFFFF}
-->
</style></head>

<body>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a>
<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from complaints order by complaintID desc");
%> 
</p>
<p align="center"><span class="style5">Complaints</span></p>
<table width="636" border="1" align="center" bordercolor="#000066" bgcolor="#CCCCCC">
  <tr bgcolor="#FFFFFF">
    <td><div align="center" class="style10">Complaint ID  </div></td>
    <td><div align="center" class="style10">complainant</div></td>
    <td><span class="style10">complainee</span></td>
    <td><span class="style10">complaintDetails</span></td>
    <td><span class="style10">address</span></td>
    <td><span class="style10">phone</span></td>
  </tr>
 <%
						while(rst.next()){
						%>
						<form action="remove.jsp" method="get">
							 <tr bgcolor="#000033">
    <td><div align="center" class="style12">
      <% out.print(rst.getString(1)); %>
    </div></td>
    <td><div align="center" class="style12">
      <% out.print(rst.getString(2)); %>
    </div></td>
    <td><div align="center" class="style12">
      <% out.print(rst.getString(3)); %>
    </div></td>
    <td><div align="center" class="style12">
      <% out.print(rst.getString(4)); %>
    </div></td>
    <td><div align="center" class="style12">
      <% out.print(rst.getString(5)); %>
    </div></td>
    <td><div align="center" class="style12">
      <% out.print(rst.getString(6)); %>
    </div></td>
  </tr></form>
  <%
  }
  %>
</table>
 <%						


 %>
</body>
</html>
