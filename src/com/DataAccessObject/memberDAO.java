package com.DataAccessObject;

import java.sql.*;
import java.util.ArrayList;

import com.DataObject.driverDO;
import com.DataObject.reviewDO; 
import com.DataObject.enterpriseDO;
import com.DataObject.userDO; 


public class memberDAO {
	
    static Connection conn = null; 
	static PreparedStatement psmt = null;
	static ResultSet rs = null; 
	
	int cnt = 0;
	private Object userDO;
	
	public static void getConnection() {

		try {
		   Class.forName("oracle.jdbc.driver.OracleDriver"); 
			      
			 String driver = "jdbc:oracle:thin:@192.168.0.22:1521:xe";
			      String userid = "project"; 
			      String userpwd = "gozldshsh";
			
		conn = DriverManager.getConnection(driver, userid , userpwd);
		
		if(conn!=null) {
		System.out.println("connected는 오지게 잘되네 ㅡ 와 세상에 젠장 db 올리고 commit 은 필수구나");
		}
		
		else {
			System.out.println("error");
		}
	} catch(Exception e) {
		e.printStackTrace();
		System.out.println(e);
	}
	
}
	
	//점포명을 가져온다  commit 은 필수... 
	public static String getBusiness(int b_num) {

		String bname = ""; 
		try {
			
			getConnection();
			
			String sql = "select * from business where b_num = ?"; 
			
			PreparedStatement psmt = conn.prepareStatement(sql); 
			psmt.setInt(1, b_num);
			
			ResultSet rs = psmt.executeQuery(); 
			
			if(rs.next()) {
				
				bname = rs.getString(2); 
			
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		return bname; 
	}
	
	
	public static String getDriver(String u_id , int b_num) {
		String answer = ""; 

try {
			
			getConnection();
			
			String sql =  "select * from driver where d_id = (select d_id from order_t where u_id = ? and b_num=?)";
			
			PreparedStatement psmt = conn.prepareStatement(sql); 
			psmt.setString(1, u_id);
			psmt.setInt(2 , b_num); 
			
			ResultSet rs = psmt.executeQuery(); 
			
			if(rs.next()) {
				
				answer = rs.getString(3) + "&";
				answer = answer + rs.getString(4) + "&";   //별점은 나중에 .
			    answer = answer + rs.getString(5); 
				System.out.println(answer);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
return answer; 
		
		
	}
	
	
	
	
	public userDO Login(String u_id, String u_pw) {
		userDO u_do = null;
		
		try {
			getConnection();
			
			String sql="select * from user where u_id = ? and u_pw = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, u_id);
			psmt.setString(2, u_pw);
			
			ResultSet rs = psmt.executeQuery();
			//executeUpdate : insert / update / delete 
			//Return : int(sql문 성공횟수)
			
			//executeQuery : select
			//Return : ResultSet(검색한 데이터)
			if(rs.next()) {
				//if : 검색한 데이터가 하나일 경우
				//while : 검색한 데이터가 여러개 일경우
				String get_u_id = rs.getString(1);
				String get_u_pw = rs.getString(2);
				String get_u_name = rs.getString(3);
				int get_u_num = rs.getInt(4);
				
				u_do = new userDO(get_u_id, get_u_pw, get_u_name, get_u_num);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u_do;
	}

	public driverDO Login_driver(String d_id, String d_pw) {
		driverDO d_do = null;
		
		try {
			getConnection();
			
			String sql="select * from driver where d_id = ? and d_pw = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, d_id);
			psmt.setString(2, d_pw);
			
			ResultSet rs = psmt.executeQuery();
			//executeUpdate : insert / update / delete 
			//Return : int(sql문 성공횟수)
			
			//executeQuery : select
			//Return : ResultSet(검색한 데이터)
			if(rs.next()) {
				//if : 검색한 데이터가 하나일 경우
				//while : 검색한 데이터가 여러개 일경우
				String get_d_id = rs.getString(1);
				String get_d_pw = rs.getString(2);
				String get_d_name = rs.getString(3);
				String get_d_num = rs.getString(4);
				String get_e_id = rs.getString(5);
				String get_photo = rs.getString(6);
				
				d_do = new driverDO(get_d_id, get_d_pw, get_d_name, get_d_num, get_e_id, get_photo);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d_do;
	}

	public enterpriseDO Login_enter(String e_id, String e_pw) {
		enterpriseDO e_do = null; 
		
		try {
			getConnection();
			
			String sql="select * from enterprise where e_id = ? and e_pw = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, e_id);
			psmt.setString(2, e_pw);
			
			ResultSet rs = psmt.executeQuery();
			//executeUpdate : insert / update / delete 
			//Return : int(sql문 성공횟수)
			
			//executeQuery : select
			//Return : ResultSet(검색한 데이터)
			if(rs.next()) {
				//if : 검색한 데이터가 하나일 경우
				//while : 검색한 데이터가 여러개 일경우
				String get_e_id = rs.getString(1);
				String get_e_pw = rs.getString(2);
				String get_e_name = rs.getString(3);
				
				e_do = new enterpriseDO(get_e_id, get_e_pw, get_e_name);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return e_do;
	}

	public int Join(userDO u_do) {
		try {
			getConnection();
			
			String sql="insert into user values(?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, u_do.getU_id());
			psmt.setString(2, u_do.getU_pw());
			psmt.setString(3, u_do.getU_name());
			psmt.setInt(4, u_do.getU_num());
			
			cnt = psmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	public int Join_driver(driverDO d_do) {
		// TODO Auto-generated method stub
		try {
			getConnection();
			
			String sql="insert into driver values(?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, d_do.getD_id());
			psmt.setString(2, d_do.getD_pw());
			psmt.setString(3, d_do.getD_name());
			psmt.setString(4, d_do.getD_num());
			psmt.setString(5, d_do.getE_id());
			psmt.setString(6, d_do.getPhoto());
			
			cnt = psmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	public int Join_enter(enterpriseDO e_do) {
		try {
			getConnection();
			
			String sql="insert into enterprise values(?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, e_do.getE_id());
			psmt.setString(2, e_do.getE_pw());
			psmt.setString(3, e_do.getE_name());
			
			cnt = psmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	public ArrayList<enterpriseDO> getEnter() {
		enterpriseDO e_do = null;
		ArrayList<enterpriseDO> en_arr = new ArrayList<>();
		
		try {
			getConnection();
			
			String sql ="select e_id, e_name from enterprise";
			psmt = conn.prepareStatement(sql);
			
			ResultSet rs = psmt.executeQuery();
			
			while(rs.next()) {
				String getE_id = rs.getString(1);
				String getE_name = rs.getString(2);
				
				e_do = new enterpriseDO(getE_id, null ,getE_name);
				en_arr.add(e_do);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return en_arr;
	}
	


		public int reviewInsert(reviewDO vo) {
		int cnt = 0;
		
		try {
			
			getConnection();

			String sql = "insert into review values(?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
		
			psmt.setInt(1, vo.getPost_num());
			psmt.setString(2, vo.getU_id());
			psmt.setInt(3, vo.getOrder_num());
			psmt.setInt(4, vo.getR_date());
			psmt.setFloat(5, vo.getStar_rate());
			psmt.setString(6, vo.getPost());
			
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	} 
	


public ArrayList<reviewDO> userMyReview() {
	reviewDO vo = null;
	ArrayList<reviewDO> arr = new ArrayList<>();
	try {

	getConnection();

	String sql = "select * from REVIEW where u_id=?";
	//"select D_NAME,PHOTO from ORDER_T where ORDER_NUM=?";
	
	psmt = conn.prepareStatement(sql);
	
	ResultSet rs = psmt.executeQuery();
	
	
	
	while(rs.next()) {
			String post_num = rs.getString("POST_NUM");
			String photo = rs.getString("PHOTO");
			String d_name = rs.getString("D_NAME");
			String r_date = rs.getString("R_DATE");
			String post = rs.getString("POST");
			
		//	vo = new reviewDO(post_num, photo, d_name, r_date, post);
			//DO는 어떻게?
			arr.add(vo);
			
	}
	
	}catch (Exception e) {

	}
	return arr;
}


public ArrayList<reviewDO> driverMyReview() {
	reviewDO vo = null;
	ArrayList<reviewDO> arr = new ArrayList<>();
	try {

	getConnection();

	String sql = "select * from review where order_num in(select order_num from order_t where d_id=?)";
	// 7일 이후 리뷰 뜨는거 못하겠어요...
	
	psmt = conn.prepareStatement(sql);
	
	ResultSet rs = psmt.executeQuery();
	
	
	
	while(rs.next()) {
			float star_rate = rs.getFloat("star_rate");
			String post = rs.getString("post");
			
			vo = new reviewDO(star_rate, post);
			arr.add(vo);
			
	}
	
	}catch (Exception e) {

	}
	return arr;
}

public ArrayList<driverDO> driverManagement() {
	driverDO vo = null;
	ArrayList<driverDO> arr = new ArrayList<>();
	try {

	getConnection();

	String sql = "select * from driver where e_id=?";
	
	psmt = conn.prepareStatement(sql);
	
	ResultSet rs = psmt.executeQuery();
	
	
	
	while(rs.next()) {
			String photo = rs.getString("photo");
			String d_id = rs.getString("d_id");
			String d_name = rs.getString("d_name");
			String d_num = rs.getString("d_num");

			
			vo = new driverDO(photo, d_id, d_name, d_num);
			arr.add(vo);
			
	}
	
	}catch (Exception e) {

	}
	return arr;
}

	
}
