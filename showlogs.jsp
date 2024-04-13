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
.style4 {color: #000099; font-weight: bold; }
.style5 {
	font-size: 24px;
	font-weight: bold;
	color: #FFFF00;
}
.style6 {color: #FFFFFF}
-->
</style></head>

<body>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a>
<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from logs order by date desc");
%> 
</p>
<p align="center"><span class="style5">Authorized users log details</span></p>
<table width="394" border="1" align="center">
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><span class="style4">officer name </span></div></td>
    <td><div align="center"><span class="style4">Date</span></div></td>
  </tr>
 <%
						while(rst.next()){
						%>
						<form action="remove.jsp" method="get">
							 <tr bgcolor="#000099">
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(2)); %>
    </span></td>
  </tr></form>
  <%
  }
  %>
</table>
<p>&nbsp;</p>
 <form id="form1" name="form1" method="post" action="">
   <div align="center">
     <input type="submit" name="clear" value="clear Logs" />
   </div>
 </form>
 <p>
   <%						

if(request.getParameter("clear")!=null){


int x=stmt.executeUpdate("delete from logs");
if(x!=0){
out.print("All Logs cleared successfully");
response.sendRedirect("showlogs.jsp");
}
}
 %>
</p>
</body>
</html>
