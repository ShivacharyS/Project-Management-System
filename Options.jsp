<%@ page language="java" import="com.team.jdbc.Jdbc,java.sql.*, java.text.SimpleDateFormat,java.text.ParseException,java.util.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>


body{

 display:flex;
 justify-content: center;
 align-items: center;
 height:100vh;
 margin:0;
 font-family: Arial,sans-serif;

}

table{
 border-collapse : collapse;
 width:50%;
}

 th,td{
  border:1px solid #ccc;
  padding :8px;
  text-align : left; 
 }
 
 th{
   background-color: #f2f2f2;  
 }
 
 tr:nth-child(even){
  background-color: #f2f2f2;
 }

</style>


</head>
<body>
<jsp:include page="Options.html" />

<%

  Jdbc.createCon();
  ResultSet rs = Jdbc.Options();
   
%>


<!-- ////////////////////////////////////////// Add or delete Project -->
  <a href="AddProOptions.jsp" style="text-align : left" >ADD</a><br><br>
  <a href="DeletePro.html">DELETE</a>

<table border="1">
  
  <tr>
     <th>Id</th>
     <th>Project Name</th>
     <th>Description</th>
     <th>Start Date</th>
     <th>End date</th>
     <th>Status</th>
     <th>Assigned to</th>
  </tr>



<%
  
  
  while(rs.next()){
	  
%>
    
	  <tr>
		    <td><%= rs.getInt("id") %></td>
			<td><%= rs.getString("name") %></td>						 
			<td><%= rs.getString("des")%></td>					
			<td><%= rs.getString("sdate")%></td>
			<td><%= rs.getString("edate") %></td>	
			<%
		      String b = rs.getString("edate");
		      
		      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		      Date dueDate = null;
		      
					      try{
					    	  dueDate = sdf.parse(b);
					      } catch(Exception e){
					    	  e.printStackTrace();
					      }
					      Date currentDate = new Date();
					  
		      if(dueDate.before(currentDate)){
		    	 
		    %>
		      <td> OverDue </td>
		    <% 
		      }
		      else if(dueDate.equals(currentDate) || dueDate.after(currentDate)){
		    %>
		    
		      <td> In Progress </td>
		    
		    <%	
		      }
		      else{
		    %>
		      <td>Upcoming</td>
		      
		    <%
		      }
		    %>
		    <td><%= rs.getString("designation") %></td>
		      
		      
 </tr>
	  
	  
	  
	
<%  


  }
%> 
</table>


</body>
</html>