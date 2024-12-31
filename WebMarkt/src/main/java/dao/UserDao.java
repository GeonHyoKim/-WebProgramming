package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	
	private Connection conn; // Connection : 데이터베이스에 접근하게 해주는 하나의 객체 
	private PreparedStatement pstmt;
	private ResultSet rs; // ResultSet : 어떠한 정보를 담을 수 있는 객체 
	
	public UserDao() { // 생성자를 통해 UserDAO의 인스턴스가 생성되었을 때 자동으로 DB 커넥션이 이루어지도록함
		try {
			String dbURL = "jdbc:mysql://localhost:3306/GH"; 
			String dbID = "root"; 
			String dbPassword = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String id, String passwd) { // 어떤 계정에 대한 실제로 로그인을 시도하는 함수, 인자값으로 ID와 Password를 받아 login을 판단함.
		String SQL = "SELECT passwd FROM member WHERE id = ?"; // 실제로 DB에 입력될 명령어를 SQL 문장으로 만듬.
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); // 어떠한 결과를 받아오는 ResultSet 타입의 rs 변수에 쿼리문을 실행한 결과를 넣어줌 
			if (rs.next()) {
				if (rs.getString(1).equals(passwd)) {
					return 1; // 로그인 성공
				}
				else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // DB 오류 
	}

}