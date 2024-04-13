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
<p align="center" class="style1">Victim Details  </p>
<table width="1290" border="1" align="center">
  <tr>
    <td width="165">Name</td>
    <td width="165">Aliaz Name </td>
    <td width="145">Type of Affence </td>
    <td width="150">age</td>
    <td width="148">Address</td>
    <td width="148">Gender</td>
    <td width="148">Location of Affence </td>
    <td width="148">Photo</td>
    <td width="148">Added By </td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from victim");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr>
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>"  readonly="true"/></td>
    <td><input name="of3" type="text" value="<%= rst.getString(3) %>" readonly="true"/></td>
    <td><input name="of4" type="text" value="<%= rst.getString(4) %>"readonly="true" /></td>
	<td><input name="of5" type="text" value="<%= rst.getString(5) %>" readonly="true"/></td>
    <td><input name="of6" type="text" value="<%= rst.getString(6) %>"readonly="true" /></td>
    <td><input name="of7" type="text" value="<%= rst.getString(7) %>"readonly="true" /></td>
    <td><input name="of8" type="text" value="<%= rst.getString(8) %>" readonly="true" /></td>
    <td><input name="of82" type="text" value="<%= rst.getString(9) %>" readonly="true" /></td>
    
  </tr>
  </form>
  <% } %>
</table>
<p>&nbsp;</p>
<% 
if(request.getParameter("update")!=null){

int x=stmt.executeUpdate("update victim set vname='"+request.getParameter("of2")+"',aliasname='"+request.getParameter("of3")+"',offecnetype='"+request.getParameter("of4")+"',age='"+request.getParameter("of5")+"',address='"+request.getParameter("of2")+"',gender='"+request.getParameter("of2")+"',offencelocation='"+request.getParameter("of2")+"' where vname='"+request.getParameter("of1")+"' and aliasname='"+request.getParameter("of2")+"' and addedby='"+(String)session.getAttribute("user")+"'");

if(x!=0){
%>
<script> alert("victim Updated successfully");</script>
<%
response.sendRedirect("editvictim.jsp");
}else{
%>
<script> alert("fail to add officer");</script>
<%
}
}
%>
<% 
if(request.getParameter("delete")!=null){

int x=stmt.executeUpdate("delete from victim where vname='"+request.getParameter("of1")+"' and aliasname='"+request.getParameter("of2")+"'");

if(x!=0){
%>
<script> alert("victim deleted successfully");</script>
<%
response.sendRedirect("editvictim.jsp");
}else{
%>
<script> alert("fail to delete officer");</script>
<%
}
}




 %>

</body>
</html>
