package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 * DB 연결 관리 Class 접속정보를 가지고 DB에 접속한다.
 */
public class DBConnection {
	//Driver 별 loading
	public static void initConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Loading Success");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		String url = "jdbc:mysql://ssd018.synology.me:8806/bit";
		String user = "bit";
		String password = "!Q2w3e4r5t";
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("MySQL Connection Success");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
