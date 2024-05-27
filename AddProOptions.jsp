<%@ page language="java" import="com.team.jdbc.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="AddProject.jsp" method="post">

		<label for ="id">Id :   </label>
		<input type = "text" name = "id"><br><br>
		
		<label for ="name">Name :</label>
		<input type = "text" name = "name"><br><br>
		
		<label for ="des">Description :</label>
		<textarea name = "des" rows="5" cols="50"></textarea><br><br><br>
		
		<label for ="sdate"> Start Date : </label>
		<input type = "date" name ="sdate" id = "start" placeholder="YYYY-MM-DD"><br><br>
		
		<label for ="edate"> End date :</label>
		<input type = "date" name ="edate" id = "end"><br><br>
		
		


<%
  ResultSet rs = Jdbc.select();
  
%>     <label for="designation">Assign to</label>
       <select name = "designation">
          <%while(rs.next()){
          %> 
          <option value = "<%=rs.getString("designation").concat("-"+rs.getString("name")) %>"> <%=rs.getString("name").concat("-"+rs.getString("designation")) %> </option>
          <%
			 }
		  %>
       </select>
       <br>
       

       <input type = "submit" value="ADD PROJECT">
     
</form>
</body>
</html>