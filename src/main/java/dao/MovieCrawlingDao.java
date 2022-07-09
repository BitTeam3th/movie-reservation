package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import db.DBClose;
import db.DBConnection;
import dto.MovieDto;
import dto.MovieTimeDto;

public class MovieCrawlingDao {
	
	private static MovieCrawlingDao dao = new MovieCrawlingDao();
	
	private MovieCrawlingDao() {
		DBConnection.initConnection();
	}
	
	public static MovieCrawlingDao getInstance() {
		return dao;
	}
	
	/**
	 * 영화정보 추가 성공적으로 추가시 true값을 돌려준다
	 * 
	 * @param dto
	 * @return count
	 */
	public boolean saveMovie(MovieDto dto) {
		
		String sql = " INSERT INTO MOVIE(title, content, rating,"
				   + "                 ticketing_rate, audience_number, genre,"
				   + "                 open_date, running_time, director, cast, img_src) "
				   + " VALUES(? , ?, ?, "
				   + "					?, ?, ?, "
				   + "					?, ?, ?, ?, ?) ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		int count = 0;
		
		try {
			conn = DBConnection.getConnection();
		
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
			psmt.setString(11, dto.getImg_src());
			
			count = psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("movieSave fail");
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return count>0?true:false;
	}
	
	/**
	 * 영화 시간 성공적으로 추가시 true값을 돌려준다
	 * 
	 * @param movie_id, theater, List time
	 * @return count
	 */
	public boolean savetimes(int movie_id, String theater, List<String> times) {
		
		String sql = " INSERT INTO Movie_time(movie_id, time, theater) "
				   + " VALUES(? , ?, ?) ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		int count = 0;
		
		try {
			conn = DBConnection.getConnection();
			for (int i = 0; i < times.size(); i++) {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, movie_id);
				psmt.setString(2, times.get(i));
				psmt.setString(3, theater);
				
				count = psmt.executeUpdate();
			}
		} catch (SQLException e) {
			System.out.println("timeSave fail");
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return count>0?true:false;
	}
	
	/**
	 * 영화 이름에 따른 영화 아이디 값 int로 반환
	 * 
	 * @param movie
	 * @return idx
	 */
	public int findMovieId(String movie) {
		
		String sql = " select id "
					+ " from movie "
					+ " where title=? ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		int idx = 0;
		
		try {
			conn = DBConnection.getConnection();
		
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, movie);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				idx = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("timeSave fail");
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return idx;
	}
}
