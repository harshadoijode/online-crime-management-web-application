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
	font-family: Georgia, Times New Roman, Times, serif;
	font-weight: bold;
}
body {
	background-color: #0033FF;
	background-image:url(images/bg.jpg)
}
.style2 {color: #000000}
-->
</style>


<script type="text/javascript" >
function validate(){
var x=document.forms["form1"]["of1"].value;
var y=document.forms["form1"]["of2"].value;
var a=document.forms["form1"]["of3"].value;
var b=document.forms["form1"]["of4"].value;
var c=document.forms["form1"]["of5"].value;
if(x==""){
alert(" name cannot be blank");
return false;
}else if(y==""){
alert("password name cannot be blank");
return false;

}else if(a==""){
alert("designation name cannot be blank");
return false;

}else if(b==""){
alert(" location cannot be blank");
return false;

}else if(c==""){
alert("contact no cannot be blank");
return false;

}else{
return true;
}

}



</script>

</head>

<body>
<p>
 
  <%@ include file="db.jsp" %>
  <a href="AdminLogin.html" target="_parent">
<input type="button" value="Back" /></a>
</p>
<p align="center" class="style1">Feed Back </p>
<div style="margin-left:30%; margin-right:30%; background-color:#999999">
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="456" border="0" align="center">
    <tr>
      <td width="172"><span class="style2"> name </span></td>
      <td width="147"><input name="of1" type="text" id="of1" required/>      </td>
    </tr>
	<tr>
      <td width="172"><span class="style2">place</span></td>
      <td width="147"><input name="of2" type="text" id="of2" required/>      </td>
    </tr>
    <tr>
      <td><span class="style2">feedBack </span></td>
      <td><textarea name="of4" cols="50" rows="5" id="of4" required></textarea></td>
    </tr>
    <tr>
      <td><span class="style2"></span></td>
      <td><input type="submit" name="Submit" value="Submit" onclick="return validate()" />
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>
<% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("insert into feedback values('"+request.getParameter("of1")+"','"+request.getParameter("of2")+"','"+request.getParameter("of4")+"'  )");


if(x!=0){
%>
<script> alert("Feed back given successfully");</script>
<%
}else{
%>
<script> alert("fail to give feedback");</script>
<%
}
}




 %>
</body>
</html>
