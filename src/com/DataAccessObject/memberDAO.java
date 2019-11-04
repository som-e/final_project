package com.DataAccessObject;

import java.sql.*; 

public class memberDAO {
	
	 
    static Connection conn = null; 
	static PreparedStatement psmt = null;
	static ResultSet rs = null; 
	
	
	public static void getConnection() {

		
		try {
		 
		Class.forName("org.mariadb.jdbc.Driver"); 
		
		String driver = "jdbc:mariadb://3.133.25.62:3306/project";
		String userid = "root"; 
		String userpwd = "";
		conn = DriverManager.getConnection(driver, userid , userpwd);
		
		if(conn!=null) {
		System.out.println("connected");
		}
		
		else {
			System.out.println("error");
		}
	} catch(Exception e) {
		
		System.out.println(e);
	}
	
}

	public static void check_db() {  //just check whether this DB is working well 

try {
	
	getConnection(); 
	
	String sql="select * from USER";
	
	psmt = conn.prepareStatement(sql);
	String test = ""; 
	
	ResultSet rs = psmt.executeQuery();

			while(rs.next()) {
		
			test = rs.getString(1);
				 
				}	
			
			System.out.println(test);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
	}
	
}