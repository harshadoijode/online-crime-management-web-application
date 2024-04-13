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
.style6 {color: #FFFFFF}
.style10 {font-size: 18px; font-weight: bold; color: #0000FF; }
-->
</style></head>

<body>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a>
<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from feedback ");
%> 
</p>
<p align="center"><span class="style5">FeedBacks</span></p>
<table width="420" border="1" align="center">
  <tr bgcolor="#FFFFFF">
    <td width="90"><div align="center" class="style10">Name</div></td>
    <td width="62"><div align="center" class="style10">place</div></td>
    <td width="246"><span class="style10">Feed Back </span></td>
  </tr>
 <%
						while(rst.next()){
						%>
						
							 <tr>
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(2)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(3)); %>
    </span></td>
  </tr>
  <%
  }
  %>
</table>
 <%						


 %>
</body>
</html>
