package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.course;
import com.mysql.jdbc.Driver;

public class courseDAO {
	
	public boolean addCourseDetails (course c ) {
		
		boolean status =false;
		Connection conn=null;
		PreparedStatement stmt=null;
		
		try {
			Driver driver =new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "");
			String strSelect = "insert into courseinfo values(?,?,?,?)";
			stmt =conn.prepareStatement(strSelect);
			stmt.setString(1, c.getCourseCode());
			stmt.setString(2, c.getCourseName());
			stmt.setString(3, c.getParticipantCount());
			stmt.setString(4, c.getCourseDesc());
	
			if(stmt.executeUpdate()>0) {
				status =true;
				System.out.println("success");
			}		
		} 
		
		catch (SQLException e1) {
			System.out.println(e1.getMessage());
		}
		
		return status;	
	}
	
	public boolean add1CourseDetails(course c) {
		
		boolean stat =false;
		Connection conn =null;
		PreparedStatement stmt =null;
		
		try {
			Driver driver =new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "");
			String strselect = "insert into coursefees values(?,?,?,?)" ;
			stmt =conn.prepareStatement(strselect);
			stmt.setString(1, c.getCourseCode());
			stmt.setString(2, c.getCourseType());
			stmt.setString(3, c.getCourseDuration());
			stmt.setFloat(4, c.getCourseFees());
			
			if(stmt.executeUpdate()>0) {
				stat =true;
				System.out.println("Inserted");
			}
			
		} 
		
		catch (SQLException e1) {
			System.out.println(e1.getMessage());
		}
				
		return stat;
	}
	
	public course retrieveCourseDetails(String code) {
		
		Connection conn=null;
		PreparedStatement stmt =null;
		ResultSet result =null;		
		course co =new course();
		
		try {
			Driver driver =new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "");
			String str ="select * from courseinfo join coursefees on coursefees.Course_Code=courseinfo.Course_Code where courseinfo.Course_Code=?" ;
			stmt =conn.prepareStatement(str);
			stmt.setString(1, code);
			result =stmt.executeQuery();
		
			
			while (result.next()) {
				
				co.setCourseCode(result.getString(1));
				co.setCourseName(result.getString(2));
				co.setParticipantCount(result.getString(3));
				co.setCourseDesc(result.getString(4));
				co.setCourseCode(result.getString(5));
				co.setCourseType(result.getString(6));
				co.setCourseDuration(result.getString(7));
				co.setCourseFees(result.getFloat(8));
			}
	
		
		}	
		catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return co;
	}
	
	
	

}
