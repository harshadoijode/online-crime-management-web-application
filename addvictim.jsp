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
	font-weight: bold;
}
body {
	background-color: #0000CC;
	background-image:url(images/bg.jpg)
}
.style3 {color: #FFFF00; }
-->
</style>
</head>

<body>
<p>
 
  <%@ include file="db.jsp" %>
<a href="AdminLogin.html" target="_parent">
<input name="button" type="button" value="Back" />
</a></p>
<p align="center" class="style1">Add New Victim </p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="0" align="center" bgcolor="#999999">
    <tr>
      <td width="172"><div align="right" class="style3">victim Name  </div></td>
      <td width="147"><input name="v1" type="text" id="v1" required/>      </td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Alias Names</div></td>
      <td><input name="v2" type="text" id="v2" required/></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">type of offences</div></td>
      <td><span class="style3">
        <textarea name="v3" id="v3" required></textarea>
      </span></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">age</div></td>
      <td><input name="v4" type="text" id="v4" pattern="[0-9]{1,}" title=" input in numbers "  required required/></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Native place or address </div></td>
      <td><span class="style3">
        <textarea name="v5" id="v5"required></textarea>
      </span></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">gender</div></td>
      <td><p class="style3">
        <label>
          <input type="radio" name="v6" checked="checked" value="male" />
          male</label>
        <br />
        <label>
          <input type="radio" name="v6" value="female" />
          female</label>
        <br />
      </p></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Location choose for affence </div></td>
      <td><span class="style3">
        <textarea name="v7" id="v7"></textarea>
      </span></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">photp</div></td>
      <td><input name="v8" type="file" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="style3">
        <input type="submit" name="Submit" value="Submit" />
        <input type="reset" name="Submit2" value="Reset" />
      </span></td>
    </tr>
  </table>
</form>
<% 
if(request.getParameter("Submit")!=null){
//int x=0;
String photo="images/"+request.getParameter("v8");

out.print("photo"+photo);
int x=stmt.executeUpdate("insert into victim values('"+request.getParameter("v1")+"','"+request.getParameter("v2")+"','"+request.getParameter("v3")+"','"+request.getParameter("v4")+"','"+request.getParameter("v5")+"','"+request.getParameter("v6")+"','"+request.getParameter("v7")+"','"+photo+"','"+(String)session.getAttribute("user")+"')");

if(x!=0){
%>
<script> alert("Victim added successfully");</script>
<%
}else{
%>
<script> alert("fail to add victim");</script>
<%
}
}




 %>
</body>
</html>
