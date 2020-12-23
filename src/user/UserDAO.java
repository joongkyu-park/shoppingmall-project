package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/userdb?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "135798";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				} else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류
	}

	public User getUserInfo(String userID){
		String SQL ="SELECT * FROM USER WHERE userID=?";
		User userInfo = null;
	       try {
	            pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID);
				rs = pstmt.executeQuery();
				
	            if (rs.next()) 
	            {
	                userInfo = new User();
	            	userInfo.setUserID(rs.getString("userID"));
	            	userInfo.setUserPassword(rs.getString("userPassword"));
	            	userInfo.setUserName(rs.getString("userName"));
	            	userInfo.setUserGender(rs.getString("userGender"));
	            	userInfo.setUserEmail(rs.getString("userEmail"));
	            }
	            
	            return userInfo;
	            
	        } catch (Exception e) {
	            throw new RuntimeException(e.getMessage());
	        } finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }

	}
	}
	 public ArrayList<User> getMemberList()
	    {
	        ArrayList<User> memberList = new ArrayList<User>();

	        User member = null;
	        
	        try {
	            StringBuffer query = new StringBuffer();
	            query.append("SELECT * FROM USER");
	
	            pstmt = conn.prepareStatement(query.toString());
	            rs = pstmt.executeQuery();
	            
	            while (rs.next()) 
	            {
	                member = new User();
	                member.setUserID(rs.getString("userID"));
	                member.setUserPassword(rs.getString("userPassword"));
	                member.setUserName(rs.getString("userName"));
	                member.setUserGender(rs.getString("userGender"));
	                member.setUserEmail(rs.getString("userEmail"));
	                memberList.add(member);
	            }
	            
	            return memberList;
	            
	        } catch (Exception sqle) {
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        }
	    }

}
