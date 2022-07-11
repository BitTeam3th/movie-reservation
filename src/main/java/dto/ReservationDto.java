package dto;

import java.io.Serializable;

/**
 * 예약 DTO
 * 
 * @author BTC-N12
 *
 */
public class ReservationDto implements Serializable {

	/**
	 * 직렬화
	 */
	private static final long serialVersionUID = -1371747420345907710L;
	private int userId;
	private String userEmail;
	private String userName;
	private String movieTitle;
	private String movieImg;
	private String movieTime;
	private int reservationId;
	private int personnel;
	private String theater;

	public ReservationDto(int userId, String userEmail, String userName, String movieTitle, String movieImg,
			String movieTime, int reservationId, int personnel, String theater) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.movieTitle = movieTitle;
		this.movieImg = movieImg;
		this.movieTime = movieTime;
		this.reservationId = reservationId;
		this.personnel = personnel;
		this.theater = theater;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getMovieImg() {
		return movieImg;
	}

	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}

	public String getMovieTime() {
		String year = movieTime.substring(0, 4);
		String month = movieTime.substring(4, 6);
		String day = movieTime.substring(6, 8);
		String hour = movieTime.substring(8, 10);
		String min = movieTime.substring(10, 12);
		String result = year + "년 " + month + "월 " + day + "일 " + hour + "시 " + min + "분";
		return result;
	}

	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getTheater() {
		return theater;
	}

	public void setTheater(String theater) {
		this.theater = theater;
	}

	@Override
	public String toString() {
		return "ReservationDto [userId=" + userId + ", userEmail=" + userEmail + ", userName=" + userName
				+ ", movieTitle=" + movieTitle + ", movieImg=" + movieImg + ", movieTime=" + movieTime
				+ ", reservationId=" + reservationId + "]";
	}

}