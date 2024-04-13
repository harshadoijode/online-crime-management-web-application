<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="Style_button_text.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	color: #FFFF00;
}
.style3 {color: #000000; font-weight: bold; }
body {
	background-color: #000099;
	background-image:url(images/bg.jpg)
}
-->
</style>

<script type="text/javascript" >
function validate(){
var x=document.forms["form1"]["s1"].value;
var y=document.forms["form1"]["s2"].value;
if(x==""){
alert(" name cannot be blank");
return false;
}else if(y==""){
alert("alias name cannot be blank");
return false;

}else{
return true;
}

}



</script>



</head>

<body>


  
  <%@ include file="db.jsp" %>
  <a href="AdminLogin.html" target="_parent">
  <input name="button" type="button" value="Back" />
  </a>
  <form action="" method="get" name="form1" id="form1">
    <table width="455" border="1" align="center">
      <tr>
        <td width="144">Enter Victim name </td>
        <td width="207"><input type="text" name="s1" /></td>
        <td width="23">&nbsp;</td>
      </tr>
      <tr>
        <td>Enter Alias name </td>
        <td><input type="text" name="s2" /></td>
        <td><input type="submit" name="search" value="search" onclick="return validate()" /></td>
      </tr>
    </table>
  </form>
  <p>&nbsp;</p>
 <% 
 if(request.getParameter("search")!=null){
 
 rst=stmt.executeQuery("select * from victim where vname='"+request.getParameter("s1")+"' and  aliasname='"+request.getParameter("s2")+"'");
 if(rst.next()){
  %> 
  <table width="456" border="1" align="center">
    <tr>
      <td width="172"><div align="right"><strong>victim Name  </strong></div></td>
      <td width="147" bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(1) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>Alias Names</strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(2) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>type of offences</strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(3) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>age</strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(4) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>Native place or address </strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(5) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>gender</strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(6) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>Location choose for affence </strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(7) %></span></td>
    </tr>
    <tr>
      <td><div align="right"><strong>photo</strong></div></td>
      <td bgcolor="#FFFFFF"><span class="style3"><%= rst.getString(8) %><img src="<%= rst.getString(8) %>" width="300" height="300" /></span></td>
    </tr>
  </table>
  <% }else{ %>
  <script>alert("no such victim exist");</script>
  
  <%}
  }
  %>
</body>
</html>
