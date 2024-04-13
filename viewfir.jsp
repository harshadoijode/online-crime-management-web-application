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
.style11 {color: #0000FF}
-->
</style></head>

<body>
<a href="home.html" target="_parent">
<input name="button" type="button" value="Back" />
</a>
<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from fir ");
%> 
</p>
<p align="center"><span class="style5">All FIR </span></p>
<table width="762" border="1" align="center">
  <tr bgcolor="#FFFFFF">
    <td><div align="center" class="style10">Name</div></td>
    <td><div align="center" class="style10">Crime</div></td>
    <td><span class="style10">Complaint given by </span></td>
    <td><span class="style10">Crime palace </span></td>
    <td><span class="style10">photo</span></td>
    <td><span class="style11">Status</span></td>
    <td>&nbsp;</td>
  </tr>
 <%
						while(rst.next()){
						%>
						<form action="" method="get">
							 <tr bgcolor="#999999">
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(2)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(3)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(4)); %>
    </span></td>
    <td><span class="style6">
      <img src="<% out.print(rst.getString(5)); %>" width="96" height="91" />
    </span></td>
    <td><p>
      <% out.print(rst.getString(6)); %>
    </p>
      <p>
        <select name="of6" id="of6">
          <option>Work on progress</option>
          <option>complaint rectified</option>
          <option>complaint in pending</option>
        </select>
		<input name="of1" type="hidden" value="<%= rst.getString(7) %>" />
</p></td>
    <td><input type="submit" name="Submit" value="Update" /></td>
  </tr></form>
  <%
  }
  %>
</table>
<% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("update fir set status='"+request.getParameter("of6")+"' where id='"+request.getParameter("of1")+"'");


if(x!=0){
%>
<script> alert("FIR updated successfully");
window.open("viewfir.jsp","_self");
</script>

<%
}else{
%>
<script> alert("fail to add FIR");</script>
<%
}
}




 %>
</body>
</html>
