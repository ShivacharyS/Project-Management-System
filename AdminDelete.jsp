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
   //request id from html form 
   String id =request.getParameter("id");
   int Id = Integer.parseInt(id);
   
   //delete admin
   int a = Jdbc.Admindelete(Id);
   if(a==1){
	   out.println("Deleted Successfully");
   }
%> 


<br><br>
<a href = "AdminMembs.jsp" style="font-family: fantasy">BACK TO ADMIN DETAILS</a>
</body>
</html>