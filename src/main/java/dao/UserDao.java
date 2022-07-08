package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBClose;
import db.DBConnection;
import dto.UserDto;

/**
 * 사용자 DAO
 * 
 * @author BTC-N12
 *
 */
public class UserDao {
	/**
	 * 어디서나 호출 할수 있게 static으로 인스턴스 생성
	 */
	private static UserDao dao = new UserDao();

	/**
	 * 생성시 DB 연결
	 */
	private UserDao() {
		DBConnection.initConnection();
	}

	/**
	 * UserDao 객체를 돌려준다
	 * 
	 * @return dao
	 */
	public static UserDao getInstance() {
		return dao;
	}

	/**
	 * 회원 추가
	 * 성공적으로 추가시 true값을 돌려준다
	 * @param dto
	 * @return count
	 */
	public boolean addUser(UserDto dto) {
		String sql = " INSERT INTO USER(EMAIL, PASSWORD, USERNAME) " + "	VALUES(?, ?, ?)";
		Connection conn = null;
		PreparedStatement psmt = null;
		int count = 0;
		
		try {
			conn = DBConnection.getConnection();
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPassword());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getUsername());

			count = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return count > 0 ? true : false;
	}
	
	/**
	 * 아이디 중복 확인
	 * @param id
	 * @return findId
	 */
	public boolean isExistId(String email) {
		String sql = " SELECT EMAIL FROM USER WHERE EMAIL = ?";
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		boolean findId = false;

		try {
			conn = DBConnection.getConnection();
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();

			while (rs.next()) {
				findId = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, rs);
		}
		return findId;
	}
	
	/**
	 * 로그인 아이디와 비밀번호를 받아 로그인 객체(usr)를 돌려준다.
	 * @param dto
	 * @return usr
	 */
	public UserDto longin(UserDto dto) {
		String sql = " SELECT EMAIL, PASSWORD, USERNAME FROM USER WHERE EMAIL = ? AND PASSWORD = ?";

		Connection conn = null; 
		PreparedStatement psmt = null;
		ResultSet rs = null;
		UserDto usr = null; 

		try {
			conn = DBConnection.getConnection(); 
			System.out.println("1/3 login success");

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPassword());

			rs = psmt.executeQuery();
			System.out.println("2/3 login success");

			if (rs.next()) {
				String email = rs.getString(1);
				String username = rs.getString(3);
				
				usr = new UserDto(email, null, username);
			}
			System.out.println("3/3 login success");
		} catch (SQLException e) {
			System.out.println("login fail");
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, rs);
		}
		return usr;
	}
	
}
