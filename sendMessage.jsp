<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #9CC7F3;
}
.style3 {color: #0000CC; font-weight: bold; }
.style4 {
	font-size: 24px;
	color: #CC0000;
	font-weight: bold;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style10 {color: #0000FF; font-weight: bold; font-size: 18px; }
.style11 {color: #000000}
-->
</style></head>

<body>

<%@ include file="db.jsp"%>

  <p>&nbsp;  </p>
  

  <form id="form2" name="form2" method="post" action="">
  
  <p>
    <input type="submit" name="Inbox" value="Inbox" />
    <input type="submit" name="Sent" value="Sent items" />
    <input type="submit" name="Recent" value="Recent Messages" />
    <input type="submit" name="Compose" value="Compose" />
</form>
  </p>
  <p>
  <% 
  
  if(request.getParameter("Sent")!=null){
  rst=stmt.executeQuery("select sender,message,date  from message where sender='"+session.getAttribute("user")+"'");
   %>
  <table width="870" border="1" align="center">
  <tr>
    <td colspan="3"><div align="center" class="style5">Sent Messages </div></td>
    </tr>
  <tr>
    <td width="163"><span class="style10">sender </span></td>
    <td width="404"><span class="style10">message</span></td>
    <td width="281"><span class="style10">Date</span></td>
  </tr>
  <% while(rst.next()){ %>
  <tr>
    <td><span class="style11"><%= rst.getString(1) %></span></td>
    <td><span class="style11"><%= rst.getString(2) %></span></td>
    <td><span class="style11"><%= rst.getString(3) %></span></td>
  </tr>
  
  <% } %>
</table>

  <% 
  }
  
 else if(request.getParameter("Compose")!=null){
rst=stmt.executeQuery("select email from account");
 %>
<form id="form1" name="form1" method="post" action="">
  <table width="736" height="141" border="1" align="center">
    <tr>
      <td>TO      
        <select name="receiver">
		<% while(rst.next()){ %>
          <option><%= rst.getString(1) %></option>
		  
		  <% } %>
        </select>
      From
      <input name="sender" type="text" size="55" readonly="yes"  value="<%= session.getAttribute("user") %>"/></td>
    </tr>
    <tr>
      <td><textarea name="message" cols="150" rows="10"></textarea></td>
    </tr>
    <tr>
      <td><div align="center">
        <input type="submit" name="Send" value="Send" />
      </div></td>
    </tr>
  </table>
</form>
<%
}

else if(request.getParameter("Send")!=null){

try
{

Date date=new Date();
String receiver=request.getParameter("receiver");
String sender=request.getParameter("sender");
String message=request.getParameter("message");

int x=stmt.executeUpdate("insert into message(receiver,sender,message,date) values('"+receiver+"','"+sender+"','"+message+"','"+date.toString()+"')");


						if(x!=0){
							out.println("message sent successfully...!");
							
						}else{
						out.println("message sending failed...!");
						}
}catch(Exception e){
out.println(e);
}
}
else if(request.getParameter("Recent")!=null){

  %>
  <table width="1017" border="1" align="center">
    <tr>
      <td colspan="3"><div align="center" class="style4">Recent</div></td>
    </tr>
  <tr bgcolor="#FFCC00">
    <td><strong>TO</strong></td>
    <td><strong>From</strong></td>
    <td><strong>Message</strong></td>
  </tr>
 

  <% 

  rst=stmt.executeQuery("select * from message");
  while(rst.next()){
						 %>
						
						 <tr bgcolor="#FFFFFF">
    <td><span class="style3">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style3">
      <% out.print(rst.getString(2)); %>
    </span></td>
    <td><span class="style3">
      <% out.print(rst.getString(3));%>
    </span></td>
  </tr>
 
  <% 	}	  %>
  
</table>
   <%  

}
else{

  %>
  <table width="1017" border="1" align="center">
    <tr>
      <td colspan="3"><div align="center" class="style4">Inbox</div></td>
    </tr>
  <tr bgcolor="#FFCC00">
    <td><strong>TO</strong></td>
    <td><strong>From</strong></td>
    <td><strong>Message</strong></td>
  </tr>
 

  <% 

  rst=stmt.executeQuery("select * from message where receiver='"+session.getAttribute("user")+"'");
  while(rst.next()){
						 %>
						
						 <tr bgcolor="#FFFFFF">
    <td><span class="style3">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style3">
      <% out.print(rst.getString(2)); %>
    </span></td>
    <td><span class="style3">
      <% out.print(rst.getString(3));%>
    </span></td>
  </tr>
 
  <% 	}	  %>
  
</table>
   <%  

}
 %>
 
</p>
</body>
</html>
