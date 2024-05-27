<%@ page language="java"  import="com.team.jdbc.Jdbc,java.sql.*" contentType="text/html; charset=ISO-8859-1"
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
String uname =	request.getParameter("aname");
String upass = request.getParameter("pass");
String urole =	request.getParameter("role");
String desig = request.getParameter("desig");

int id =Integer.parseInt(eid);


Jdbc.createCon();
// insert into projects table
Jdbc.MemInsert(id,uname,upass,urole,desig);
out.println("Inserted successfully");
%>

<a href="ManageUsers.jsp">BACK TO MANAGE USERS</a>


</body>
</html>