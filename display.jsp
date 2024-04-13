<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page  import="java.text.SimpleDateFormat" %>
<%@ page  import="java.util.Date" %>
<%
 String s1="03/15/2018";
		//String x="no";
		SimpleDateFormat sd=new SimpleDateFormat("MM/dd/yyyy");
		Date d1;
		try {
			d1 = sd.parse(s1);
					
		Date d2=new Date();
		
		if(d2.after(d1)){
			//x="yes";
                     // out.println("after");
					 response.sendRedirect("AdminLogin.html");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>