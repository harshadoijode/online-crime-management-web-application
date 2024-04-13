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
	color: #FFFF00;
}
body {
	background-color: #FFFFFF;
	background-image:url(images/bg.jpg)
}
.style2 {color: #0000FF}
-->
</style>
</head>

<body>
<p>

  <%@ include file="db.jsp" %>
<a href="home.html" target="_parent">
<input name="button" type="button" value="Back" />
</a><a href="AdminLogin.html" target="_parent"></a></p>
<p align="center" class="style1">Complaint form  </p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="0" align="center" bordercolor="#CCCCCC" bgcolor="#CCCCCC">
    <tr>
      <td width="172"><span class="style2">complainant</span></td>
      <td width="147"><input name="of1" type="text" id="of1" required/>      </td>
    </tr>
	<tr>
      <td width="172"><span class="style2">complainee </span></td>
      <td width="147"><input name="of2" type="text" id="of2" required/>      </td>
    </tr>
    <tr>
      <td><span class="style2">complaintDetails</span></td>
      <td><textarea name="of3" cols="50" rows="5" id="of3" required></textarea></td>
    </tr>
    <tr>
      <td><span class="style2">address</span></td>
      <td><input name="of4" type="text" id="of4" /></td>
    </tr>
    <tr>
      <td><span class="style2">phone </span></td>
      <td><input name="of5" type="text" id="of5" required/></td>
    </tr>
    <tr>
      <td><span class="style2"></span></td>
      <td><input type="submit" name="Submit" value="Submit" />
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
</form>
<% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("insert into complaints(complainant,complainee,complaintDetails,address,phone) values('"+request.getParameter("of1")+"','"+request.getParameter("of2")+"','"+request.getParameter("of3")+"','"+request.getParameter("of4")+"','"+request.getParameter("of5")+"')");


if(x!=0){
rst=stmt.executeQuery("select complaintID from complaints order by complaintID desc");
if(rst.next()){
%>
<script> alert("complaint registered successfully  and your complaint ID is :"+<%=rst.getString(1)  %>);</script>
<%
}
}else{
%>
<script> alert("fail to add complaint");</script>
<%
}
}




 %>
</body>
</html>
