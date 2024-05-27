<%@ page language="java" import="com.team.jdbc.Jdbc,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

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




<body>

<jsp:include page="Options.html" />


<a href="AddUser.html">Add User</a>
<a href="DeleteUser.html">Delete</a>

<% 
  Jdbc.createCon();
  ResultSet rs = Jdbc.select();
 %>
<table>
	
	<tr> 
	 <th>Id</th>
	 <th>Name</th>
	 <th>Role</th>
	 <th>Designation</th>
	</tr>
	
<%
while(rs.next()){
	if(rs.getString("role").equals("user")){
		


%>	
		  
    <tr>
       <td><%=rs.getString("id") %></td>
       <td><%=rs.getString("name") %></td>
       <td><%=rs.getString("role") %></td>
       <td><%=rs.getString("designation") %></td>
    </tr>

	<%
	
	}
}
	%> 
	 
	 
</table>	  
	  


</body>
</html>