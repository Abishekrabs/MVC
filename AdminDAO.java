package com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.admin;


public class AdminDAO {
	
	public String getAdminDetails(admin ad) {
		
		String username =null;
		Connection conn =null;
		PreparedStatement stmt =null;
		ResultSet result=null;
		try {
			Driver driver =new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/training","root", "");
			String strSelect = "select username from login1 where userId=? and password=?";
			stmt =conn.prepareStatement(strSelect);
			stmt.setString(1, ad.getUserId());
			stmt.setString(2, ad.getPassword());
			result=stmt.executeQuery();
			
			if(result.next()) {
				username =result.getString(1);
			}	
		}
		catch (SQLException e1) {
			System.out.println(e1.getMessage());
		}
		return username;
	}

}
