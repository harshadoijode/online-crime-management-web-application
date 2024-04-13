<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="Style_button_text.css" type="text/css" />
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
}
.style3 {color: #CCCCCC}
-->
</style>
</head>

<body>
<p>
  
  <%@ include file="db.jsp" %>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a></p>
<p align="center" class="style1">Officer Details  </p>
<table width="auto" border="1" align="center">
  <tr bgcolor="#000033">
    <td ><span class="style3">ID</span></td>
    <td ><span class="style3">Officer Name </span></td>
    <td ><span class="style3">Designation</span></td>
    <td ><span class="style3">Location</span></td>
    <td ><span class="style3">Contact No </span></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from officer");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr>
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>" required/></td>
    <td><input name="of3" type="text" value="<%= rst.getString(4) %>" required/></td>
    <td><input name="of4" type="text" value="<%= rst.getString(5) %>" required/></td>
	<td><input name="of5" type="text" value="<%= rst.getString(6) %>"  pattern="[0-9]{10}" title=" 10 digit phone number "  required /></td>
    <td width="186"><input name="update" type="submit" id="update" value="Update" />
      <input name="delete" type="submit" id="delete" value="delete" /></td>
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
