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
}
-->
</style>
</head>

<body>
<p>
  
  <%@ include file="db.jsp" %>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a></p>
<p align="center" class="style1">Missing Details  </p>
<table width="999" border="0" align="center">
  <tr bgcolor="#000000">
    <td width="165"><strong>name</strong></td>
    <td width="165"><strong>Color</strong></td>
    <td width="145"><strong>Height</strong></td>
    <td width="150"><strong>Place of missing </strong></td>
    <td width="148"><strong>photo</strong></td>
    <td width="148"><strong>Status</strong></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from missing");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr bgcolor="#0000FF">
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>" /></td>
    <td><input name="of3" type="text" value="<%= rst.getString(3) %>" /></td>
    <td><input name="of4" type="text" value="<%= rst.getString(4) %>" /></td>
	<td><img src="<%= rst.getString(5) %>" width="120" height="108" /></td>
    <td><%= rst.getString(6) %>
	<select name="status" id="status">
      <option>still searching</option>
      <option>searched person</option>
    </select>    </td>
    <td width="186"><input name="delete" type="submit" id="delete" value="delete" />
      <input name="Update" type="submit" id="delete2" value="Update" /></td>
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

int x=stmt.executeUpdate("delete from missing where name='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("missing person removed successfully");</script>
<%
response.sendRedirect("deletemissing.jsp");
}else{
%>
<script> alert("fail to delete officer");</script>
<%
}
}




 %>




<% 
if(request.getParameter("Update")!=null){

int x=stmt.executeUpdate("update missing set status='"+request.getParameter("status")+"' where name='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("missing person removed successfully");</script>
<%
response.sendRedirect("deletemissing.jsp");
}else{
%>
<script> alert("fail to delete officer");</script>
<%
}
}




 %>

</body>
</html>
