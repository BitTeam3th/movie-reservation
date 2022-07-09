package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

	public boolean insertReservation(int userId, int movieId, int movieTimeId) {
		String sql = " insert into reservation values(0, ?, ?, ?)  ";
		Connection conn = null;
		PreparedStatement psmt = null;
		int count = 0;

		try {
			conn = DBConnection.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, userId);
			psmt.setInt(2, movieId);
			psmt.setInt(3, movieTimeId);

			count = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}

		return count > 0 ? true : false;
	}

	public List<ReservationDto> getReservationList(String userEmail) {
		String sql = " select user.id, user.EMAIL, user.username, movie.title, movie.img_src, movie_time.time, reservation.id, reservation.personnel "
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
						rs.getString(i++), rs.getString(i++), rs.getString(i++), rs.getInt(i++), rs.getInt(i++));
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

}
