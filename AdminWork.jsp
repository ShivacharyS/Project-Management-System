<%@ page language="java" import="com.team.jdbc.*,java.sql.*,java.util.Date, java.text.SimpleDateFormat,java.text.ParseException" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

.nowork{
     display:flex;
	 justify-content: center;
	 align-items: center;
	 height:100vh;
	 margin:0;
	 font-family: Arial,sans-serif;
  
}

.tables{

 display:flex;
 justify-content: center;
 align-items: center;
 height:100vh;
 margin:0;
 font-family: Arial,sans-serif;

}

.tables table{
 border-collapse : collapse;
 width:50%;
}

 .tables th,td{
  border:1px solid #ccc;
  padding :8px;
  text-align : left; 
 }
 
 .tables th{
   background-color: #f2f2f2;  
 }
 
 .tables tr:nth-child(even){
  background-color: #f2f2f2;
 }

</style>


</head>
<body>
<jsp:include page="Options.html"></jsp:include>


    
<div class = "tables">
<table>

    <tr>
    
        <th>Id</th>
        <th>Your Project Name</th>
        <th>Project Description</th>
        <th>Project Start Date</th>
        <th>Project Dead Line</th>
        <th>Status</th>
        
    </tr>





<%

String name = (String)session.getAttribute("name");
System.out.println(name);
 Jdbc.createCon();
 ResultSet rs = Jdbc.Options();
 
 boolean containname = false;
 
 while(rs.next()){
	 if(rs.getString("designation").contains(name)){
		 containname = true;
%>
<tr>

  <td><%=rs.getInt("id")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getString("des")%></td>
  <td><%=rs.getString("sdate")%></td>
  <td><%=rs.getString("edate")%></td>
  
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
		  
  if(dueDate.equals(currentDate) || dueDate.after(currentDate)){
	  
  %>
  
  <td>In progress</td>
  <% 
  }
  else{
  %>
  
  <td>Over Due</td>
  <% 
  }
  %>
 
  

</tr>

<% 

	 }
 }
 %>
 
 </table>
 
 </div>
 
 <div class = "nowork">
 <% 
	 if(!containname){
		 out.println("U Feel Exausted! No Work");
		 out.println("Enjoy");
	 }
 %>
 
 </div>

 

</body>
</html>