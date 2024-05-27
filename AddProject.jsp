<%@ page language="java" import="com.team.jdbc.Jdbc,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
			String eid =request.getParameter("id");
			String pname =	request.getParameter("name");
			String pdes = request.getParameter("des");
			String pdate =	request.getParameter("sdate");
			String pedate =	request.getParameter("edate");
			String desig = request.getParameter("designation");
			
			int id =Integer.parseInt(eid);
			
			
			Jdbc.createCon();
			// insert into projects table
			int x = Jdbc.AddProject(id,pname,pdes,pdate,pedate,desig);
			out.println("Inserted successfully");
					
%>
<a href="Options.jsp">Return</a>
</body>
</html>