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
.style2 {color: #000000}
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
<table width="auto" border="1" align="center">
  <tr bgcolor="#CCCCCC">
    <td width="auto"><span class="style2">Name</span></td>
    <td width="auto"><span class="style2">Aliaz Name </span></td>
    <td width="auto"><span class="style2">Type of Affence </span></td>
    <td width="auto"><span class="style2">age</span></td>
    <td width="auto"><span class="style2">Address</span></td>
    <td width="auto"><span class="style2">Gender</span></td>
    <td width="auto"><span class="style2">Location of Affence </span></td>
    <td width="auto"><span class="style2">Added By </span></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from victim where addedby='"+(String)session.getAttribute("user")+"'");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr>
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" size="15" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>" size="15"  readonly="true"/></td>
    <td><input name="of3" type="text" value="<%= rst.getString(3) %>" size="15" /></td>
    <td><input name="of4" type="text" value="<%= rst.getString(4) %>" size="2" /></td>
	<td><input name="of5" type="text" value="<%= rst.getString(5) %>" /></td>
    <td><input name="of6" type="text" value="<%= rst.getString(6) %>" size="5" /></td>
    <td><input name="of7" type="text" value="<%= rst.getString(7) %>" /></td>
    <td><input name="of8" type="text" value="<%= rst.getString(9) %>" size="10" readonly="true" /></td>
    <td width="186"><input name="update" type="submit" id="update" value="Update" />
      <input name="delete" type="submit" id="delete" value="delete" /></td>
  </tr>
  </form>
  <% } %>
</table>
<p>&nbsp;</p>
<% 
if(request.getParameter("update")!=null){

int x=stmt.executeUpdate("update victim set vname='"+request.getParameter("of1")+"',aliasname='"+request.getParameter("of2")+"',offecnetype='"+request.getParameter("of3")+"',age='"+request.getParameter("of4")+"',address='"+request.getParameter("of5")+"',gender='"+request.getParameter("of6")+"',offencelocation='"+request.getParameter("of7")+"' where vname='"+request.getParameter("of1")+"' and aliasname='"+request.getParameter("of2")+"' and addedby='"+(String)session.getAttribute("user")+"'");

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
