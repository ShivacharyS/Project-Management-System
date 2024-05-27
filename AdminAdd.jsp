<%@ page language="java" import="com.team.jdbc.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String Aid = request.getParameter("id");
String Aname = request.getParameter("aname");
String Apass = request.getParameter("pass");
String Adesig = request.getParameter("desig");
String Arole = "admin";

int eid = Integer.parseInt(Aid);

Jdbc.createCon();
Jdbc.AdminInsert(eid, Aname, Apass,Arole,Adesig);
out.println("Inserted sucessfully");


%>
<br>
<a href="AdminMembs.jsp">BACK</a>


</body>
</html>