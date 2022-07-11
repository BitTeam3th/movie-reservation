package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import db.DBClose;
import db.DBConnection;
import dto.ReservationDto;

/**
 * 예약 관련 DAO
 * 
 * @author BTC-N12
 *
 */
public class ReservationDao {

	private static ReservationDao dao = new ReservationDao();

	private ReservationDao() {
		DBConnection.initConnection();
	}

	public static ReservationDao getInstance() {
		return dao;
	}

	public boolean insertReservation(int userId, int movieId, int movieTimeId, int personnel) {
		String sql = " insert into reservation values(0, ?, ?, ?, ?)  ";
		Connection conn = null;
		PreparedStatement psmt = null;
		int count = 0;

		try {
			conn = DBConnection.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, userId);
			psmt.setInt(2, movieId);
			psmt.setInt(3, movieTimeId);
			psmt.setInt(4, personnel);

			count = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}

		return count > 0 ? true : false;
	}

	public List<ReservationDto> getReservationList(String userEmail) {
		String sql = " select user.id, user.EMAIL, user.username, movie.title, movie.img_src, movie_time.time , "
				+ " reservation.id, reservation.personnel, movie_time.theater "
				+ " from movie, movie_time, user, reservation "
				+ " where reservation.user_id = user.id and reservation.movie_id = movie.id "
				+ " and reservation.MOVIE_TIME_ID = movie_time.id and user.email = ? ";
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<ReservationDto> list = new ArrayList<ReservationDto>();

		try {
			conn = DBConnection.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userEmail);

			rs = psmt.executeQuery();
			while (rs.next()) {
				int i = 1;
				ReservationDto dto = new ReservationDto(rs.getInt(i++), rs.getString(i++), rs.getString(i++),
						rs.getString(i++), rs.getString(i++), rs.getString(i++), rs.getInt(i++), rs.getInt(i++),
						rs.getString(i++));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return list;
	}

	public boolean deleteReservation(int reservationId) {
		String sql = " delete from reservation where id = ? ";
		Connection conn = null;
		PreparedStatement psmt = null;
		int count = 0;

		try {
			conn = DBConnection.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, reservationId);

			count = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}

		return count > 0 ? true : false;
	}
	
	public int getMovieTimeId(String time, String theater) {
		String sql = " select * from movie_time where time = ? and theater = ? ";
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;

		try {
			conn = DBConnection.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, time);
			psmt.setString(2, theater);

			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}
		return result;
	}

	public HashMap<String, Object> setSeat(int userId, int movieId, int movieTimeId, int personnel) {
		
		HashMap<String, Object> map=new HashMap<String, Object>();
		
		String sql = " SELECT reservation_flag "
	               + " FROM movie_seat "
	               + " WHERE movie_time_id = ? ";
		
		Connection conn = null;
	    PreparedStatement psmt = null;
	    ResultSet rs = null;
	    
	    try {
	         conn = DBConnection.getConnection();
	         System.out.println("1/4 setSeat success");
	            
	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, movieTimeId);
	         System.out.println("2/4 setSeat success");
	         
	         rs = psmt.executeQuery();
	         System.out.println("3/4 setSeat success");
	         
	         if(rs.next()) {
	            
	            map.put("reservationFlag", rs.getString(1));
	            map.put("userId", userId);
	            map.put("movieId", movieId);
	            map.put("movieTimeId", movieTimeId);
	            map.put("personnel", personnel);
	         }
	      } catch(SQLException e) {
	         System.out.println("setSeat fail");
	         e.printStackTrace();
	      } finally {
	         DBClose.close(conn, psmt, rs);
	      }
	      
	      return map;
	}

	public boolean updateSeat(int movieTimeId, String[] selectedSeat) {
		
		
		String sql = " UPDATE MOVIE_SEAT "
	               + " SET RESERVATION_FLAG = ( SELECT CONCAT(SUBSTRING(RESERVATION_FLAG, 1 ,?),'1',SUBSTRING(RESERVATION_FLAG, ? ,100))"
						               		+ " FROM MOVIE_SEAT "
						               		+ " WHERE MOVIE_TIME_ID = ? )"
				   + " WHERE MOVIE_TIME_ID = ? ";
		
		
		int count = 0; 
    	for (int i = 0; i < selectedSeat.length; i++) {
    			
				Connection conn = null;
				PreparedStatement psmt = null;
			   
				try {
		    		System.out.println(selectedSeat[i]);
		    		conn = DBConnection.getConnection();
		 		   
				    psmt = conn.prepareStatement(sql);
	
				    psmt.setInt(1, Integer.parseInt(selectedSeat[i]));
				    psmt.setInt(2, Integer.parseInt(selectedSeat[i])+2);
				    psmt.setInt(3, movieTimeId);
				    psmt.setInt(4, movieTimeId);
				    
				    count = psmt.executeUpdate();
		    	} catch(SQLException e) {
				    System.out.println("updateSeat fail");
				    e.printStackTrace();
			    } finally {
				    DBClose.close(conn, psmt, null);
			    }
    	}
	   
	    return count > 0 ? true : false;
		
	}

}
