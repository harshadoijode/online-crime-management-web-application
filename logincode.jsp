
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%@ include file="db.jsp" %>

<%@ page import="java.util.Date"%>

<%

try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
Date date=new Date();
rst=stmt.executeQuery("select * from login where username='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
int x=stmt.executeUpdate("insert into logs values('"+un+"','"+date.toString()+"')");
	response.sendRedirect("adminmain.html");
	}else{
					rst1=stmt.executeQuery("select * from officer where officername='"+un+"' and password='"+pw+"'");
					if(rst1.next()){
					session.setAttribute("user",un);
					int x=stmt.executeUpdate("insert into logs values('"+un+"','"+date.toString()+"')");
					response.sendRedirect("usermain.html");
						}else{
						out.print("login failured");
						}
	
	
		
}
}catch(Exception e){
out.println(e);
}
%>
</body>
</html>
