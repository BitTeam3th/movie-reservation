package dto;

import java.io.Serializable;
/**
 * 예약 DTO
 * @author BTC-N12
 *
 */
public class ResevationDto implements Serializable{

	/**
	 * 직렬화
	 */
	private static final long serialVersionUID = -1371747420345907710L;
	private int id;
	private int userId;
	private int movieId;
	private int movieTimeId;

	public ResevationDto(int id, int userId, int movieId, int movieTimeId) {
		super();
		this.id = id;
		this.userId = userId;
		this.movieId = movieId;
		this.movieTimeId = movieTimeId;
	}
	/*
	 * 예약 seq를 돌려준다.
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/*
	 * 사용자 아이디를 돌려준다
	 */
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	/*
	 * 영화테이블 아이디를 돌려준다
	 */
	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	/*
	 * 영화 상영 시간을 돌려준다
	 */
	public int getMovieTimeId() {
		return movieTimeId;
	}

	public void setMovieTimeId(int movieTimeId) {
		this.movieTimeId = movieTimeId;
	}

	@Override
	public String toString() {
		return "ResevationDto [id=" + id + ", userId=" + userId + ", movieId=" + movieId + ", movieTimeId="
				+ movieTimeId + "]";
	}

}
