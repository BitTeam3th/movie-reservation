package dto;

import java.io.Serializable;

public class MovieSeatDto implements Serializable{
	
	private int id;
	private int movieTimeId;
	private String reservationFlag;
	
	public MovieSeatDto() {
		super();
	}

	public MovieSeatDto(int id, int movieTimeId, String reservationFlag) {
		super();
		this.id = id;
		this.movieTimeId = movieTimeId;
		this.reservationFlag = reservationFlag;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMovieTimeId() {
		return movieTimeId;
	}
	public void setMovieTimeId(int movieTimeId) {
		this.movieTimeId = movieTimeId;
	}
	public String getReservationFlag() {
		return reservationFlag;
	}
	public void setReservationFlag(String reservationFlag) {
		this.reservationFlag = reservationFlag;
	}

	@Override
	public String toString() {
		return "MovieSeatDto [id=" + id + ", movieTimeId=" + movieTimeId + ", reservationFlag=" + reservationFlag + "]";
	}
}
