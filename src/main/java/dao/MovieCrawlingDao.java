package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.DBClose;
import db.DBConnection;
import dto.MovieDto;

public class MovieCrawlingDao {
	
	private static MovieCrawlingDao dao = new MovieCrawlingDao();
	
	private MovieCrawlingDao() {
		DBConnection.initConnection();
	}
	
	public static MovieCrawlingDao getInstance() {
		return dao;
	}
	
	public boolean saveMovie(MovieDto dto) {
		
		String sql = " INSERT INTO MOVIE(title, content, rating,"
				   + "                 ticketing_rate, audience_number, genre,"
				   + "                 open_date, running_time, director, cast, poster) "
				   + " VALUES(? , ?, ?, "
				   + "					?, ?, ?, "
				   + "					?, ?, ?, ?, ?) ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		int count = 0;
		
		try {
			conn = DBConnection.getConnection();
			System.out.println("1/3 movieSave success");
		
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setDouble(3, dto.getRating());
			psmt.setDouble(4, dto.getTicketingRate());
			psmt.setInt(5, dto.getAudienceNumber());
			psmt.setString(6, dto.getGenre());
			psmt.setString(7, dto.getOpenDate());
			psmt.setInt(8, dto.getRunningTime());
			psmt.setString(9, dto.getDirector());
			psmt.setString(10, dto.getCast());
			psmt.setString(11, dto.getPoster());
			System.out.println("2/3 movieSave success");
			
			count = psmt.executeUpdate();
			System.out.println("3/3 movieSave success");
			
		} catch (SQLException e) {
			System.out.println("movieSave fail");
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return count>0?true:false;
	}
}
