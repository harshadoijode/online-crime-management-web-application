<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
body,td,th {
	color: #CCCCCC;
}
body {
	background-color: #0033CC;
	background-image:url(images/bg.jpg)
	background-repeat: repeat;
}
.style5 {color: #FFFFFF; font-weight: bold; }
.style8 {color: #000000; font-weight: bold; }
-->
</style>
</head>

<body>
<p>

  <%@ include file="db.jsp" %>
<a href="home.html" target="_parent">
<input name="button" type="button" value="Back" />
</a><a href="AdminLogin.html"></a> </p>
<p align="center" class="style1">Recently added victim  Details  </p>

<table width="999" border="1" align="center">
  <tr bgcolor="#000000">
     <td width="165"><span class="style5">Name</span></td>
    <td width="165"><span class="style5">Aliaz Name </span></td>
    <td width="145"><span class="style5">Type of Affence </span></td>
    <td width="150"><span class="style5">age</span></td>
    <td width="148"><span class="style5">Address</span></td>
    <td width="148"><span class="style5">Gender</span></td>
    <td width="148"><span class="style5">Location of Affence </span></td>
    <td width="148"><span class="style5">Photo</span></td>
    <td width="148"><span class="style5">Added By </span></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from victim");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr bgcolor="#CCCCCC">
    <td><span class="style8"><%= rst.getString(1)%> </span></td>
    <td><span class="style8"><%= rst.getString(2) %></span></td>
    <td><span class="style8"><%= rst.getString(3) %></span></td>
    <td><span class="style8"><%= rst.getString(4) %></span></td>
	<td><span class="style8"><%= rst.getString(5) %></span></td>
	<td><span class="style8"><%= rst.getString(6) %></span></td>
    <td><span class="style8"><%= rst.getString(7) %></span></td>
    <td><img src="<%= rst.getString(8) %>" width="124" height="99" /></td>
	<td><span class="style8"><%= rst.getString(9) %></span></td>
  </tr>
  </form>
  <% } %>
</table>
<p>&nbsp;</p>
<% 
if(request.getParameter("update")!=null){

int x=stmt.executeUpdate("update officer set officername='"+request.getParameter("of2")+"',designation='"+request.getParameter("of3")+"',location='"+request.getParameter("of4")+"',contactno='"+request.getParameter("of5")+"' where id='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("officer Updated successfully");</script>
<%
response.sendRedirect("editofficer.jsp");
}else{
%>
<script> alert("fail to add officer");</script>
<%
}
}
%>
<% 
if(request.getParameter("delete")!=null){

int x=stmt.executeUpdate("delete from officer where id='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("officer deleted successfully");</script>
<%
response.sendRedirect("editofficer.jsp");
}else{
%>
<script> alert("fail to delete officer");</script>
<%
}
}




 %>

</body>
</html>
