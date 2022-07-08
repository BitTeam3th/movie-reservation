package dto;

import java.io.Serializable;

public class MovieTimeDto implements Serializable{
	private int id; 
	private int movieId;
	private String time; // 상영시간
	private String theater; // 상영관
	
	public MovieTimeDto() {
		super();
	}

	public MovieTimeDto(int id, int movieId, String time, String theater) {
		super();
		this.id = id;
		this.movieId = movieId;
		this.time = time;
		this.theater = theater;
	}
	
	/*
	 * 영화 시간 테이블 id를 리턴한다.
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	/*
	 * 영화 테이블 id를 리턴한다.
	 */
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	
	/*
	 * 상영 시간을 리턴한다.
	 * FORMAT : YYYYMMDDHHMiMi
	 * EX : 202207081230
	 */
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	/*
	 * 상영관을 리턴한다.
	 */
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
}
