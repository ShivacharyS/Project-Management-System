<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>  
     .left{
       position: fixed;
       top:50%;
       left:0;
       padding:10px;
       border-right:2px solid #ccc;
       color : #333'
     
     }
 </style>  
 
</head>
<body>

<jsp:include page="Options.html" />


<%

      String name =session.getAttribute("name").toString();
	  session.setAttribute("name",name);
      name = name.toUpperCase();
      

%>
     <h1 style="text-align: center; ">ADMIN PAGE</h1>
     <h3 style="text-align: center;">WELCOME <%= name %> </h3>
 
     
     
     
     
     
</body>
</html>