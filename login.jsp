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

    Jdbc.createCon();

    String Name = request.getParameter("name");
    String Password =  request.getParameter("pass");
    
   
    
    ResultSet rs = Jdbc.select();
    while(rs.next()){
    	int eid = rs.getInt("id");
    	String ename = rs.getString("name");
    	String pass = rs.getString("password");
    	String erole = rs.getString("role");
    	
    	
    	if(ename.equals(Name)){
        	if(pass.equals(Password)){
	        		if(erole.equalsIgnoreCase("admin")){
	        	    System.out.println("login successfull");
	        	    session.setAttribute("name",Name);
	        	    response.sendRedirect("Admin.jsp");
	        		}
	        		else{
	        			System.out.println("login successfull");
	            	    session.setAttribute("name",Name);
	            	    response.sendRedirect("User.jsp");
	        		}
        	    
        	}
        	else{
        		System.out.println("enter correct password");
        		response.sendRedirect("login.html");
        		out.println("enter correct password");
        		
        		
        		
        	}
        
    	}
    	
    }
    
%>


<%!
        

%>
</body>
</html>