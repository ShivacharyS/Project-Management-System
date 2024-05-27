package com.team.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Jdbc {
     
	
	static Connection con;
	
	public static void createCon(){
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/team","root","root");
		System.out.println("connection successfull");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//Login
	public static ResultSet select() {
		try {
		PreparedStatement ps = con.prepareStatement("select * from users");
		ResultSet rs = ps.executeQuery();
		System.out.println("select");
		
		return rs;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
			
	}
	
	
	public static ResultSet Adminselect() {
		try {
		PreparedStatement ps = con.prepareStatement("select * from users where role = 'admin'");
		ResultSet rs = ps.executeQuery();
		System.out.println("select");
		
		return rs;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
			
	}
	
	// Admin insert into users DB
	public static void AdminInsert(int id,String name,String password,String role,String designation ) {
		try {
		 PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?)");
		 ps.setInt(1,id);
		 ps.setString(2,name);
		 ps.setString(3,password);
		 ps.setString(4,role);
		 ps.setString(5,designation);
		 int x = ps.executeUpdate();
		 if(x>0) {
			 System.out.println("inserted");
		 }
		 else {
			 System.out.println("not inserted");
		 }
		 
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	//users insert into users DB
	public static void MemInsert(int id,String name,String password,String role,String designation ) {
		try {
		 PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?)");
		 ps.setInt(1,id);
		 ps.setString(2,name);
		 ps.setString(3,password);
		 ps.setString(4,role);
		 ps.setString(5,designation);
		 int x = ps.executeUpdate();
		 if(x>0) {
			 System.out.println("inserted");
		 }
		 else {
			 System.out.println("not inserted");
		 }
		 
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	//Select Projects
	public static ResultSet Options() {
		try {
		PreparedStatement ps = con.prepareStatement("select * from projects");
		ResultSet rs = ps.executeQuery();
		System.out.println("select");
		
		return rs;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
			
	}
	
	//AddProject
	public static int AddProject(int id,String name,String des,String sdate,String edate,String designation) {
			try {
				
				PreparedStatement ps = con.prepareStatement("insert into projects values(?,?,?,?,?,?)");
				ps.setInt(1,id);
				ps.setString(2,name);
				ps.setString(3,des);
				ps.setString(4,sdate);
				ps.setString(5,edate);
				ps.setString(6, designation);
				int x = ps.executeUpdate();
				if(x>0) {
					System.out.println("inserted");
					return 1;
					
				}
				else {
					System.out.println("not inserted");
					return 0;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return 1;
			
	}
	
	//DeleteProjects
	public static int delete(int id) {
		 try {
		 PreparedStatement ps = con.prepareStatement("delete from projects where id ="+id);
		 ps.executeUpdate();
		 System.out.println("Deleted");
		 return 1;
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return 0;
		
	}
	
	//DeleteAdmin
	public static int Admindelete(int id) {
		 try {
		 PreparedStatement ps = con.prepareStatement("delete from users where id ="+id);
		 ps.executeUpdate();
		 System.out.println("Deleted");
		 return 1;
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return 0;
		
	}
	
	
}
