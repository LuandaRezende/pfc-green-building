
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
    <%
	String nome = request.getParameter("email");
		

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try
	{
	
          
		
	}

	catch(Exception e)
	{
		e.printStackTrace();
	}

	finally
	{
		ps.close();
		conn.close();
	}
%>
</html>
