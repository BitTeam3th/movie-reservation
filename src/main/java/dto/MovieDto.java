package dto;

import java.io.Serializable;
import java.util.Date;

public class MovieDto implements Serializable{
	
	private int id;
	private String title; // 제목
	private String content; // 줄거리
	private double rating; // 평점
	private double ticketingRate; // 예매율
	private int audienceNumber; // 관객수
	private String genre; // 장르
	private Date openDate; // 개봉일
	private int runningTime; // 러닝타임
	private String director; // 감독
	private String cast; // 출연
	private String poster; // 포스터
	
	public MovieDto() {
		
	}
	
	public MovieDto(int id, String title, String content, double rating, double ticketingRate, int audienceNumber,
			String genre, Date openDate, int runningTime, String director, String cast, String poster) {
		
		this.id = id;
		this.title = title;
		this.content = content;
		this.rating = rating;
		this.ticketingRate = ticketingRate;
		this.audienceNumber = audienceNumber;
		this.genre = genre;
		this.openDate = openDate;
		this.runningTime = runningTime;
		this.director = director;
		this.cast = cast;
		this.poster = poster;
	}
	
	/*
	 * 영화 테이블 id를 리턴한다.
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	/*
	 * 영화 제목을 리턴한다.
	 */
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	/*
	 * 영화 줄거리를 리턴한다.
	 */
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	/*
	 * 영화 펑점을 리턴한다.
	 */
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	
	/*
	 * 예매율을 리턴한다.
	 */
	public double getTicketingRate() {
		return ticketingRate;
	}
	public void setTicketingRate(double ticketingRate) {
		this.ticketingRate = ticketingRate;
	}
	
	/*
	 * 관객수를 리턴한다.
	 */
	public int getAudienceNumber() {
		return audienceNumber;
	}
	public void setAudienceNumber(int audienceNumber) {
		this.audienceNumber = audienceNumber;
	}
	
	/*
	 * 영화 장르를 리턴한다.
	 */
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	/*
	 * 영화 개봉일을 리턴한다.
	 */
	public Date getOpenDate() {
		return openDate;
	}
	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	
	/*
	 * 영화 상영 시간을 리턴한다.
	 */
	public int getRunningTime() {
		return runningTime;
	}
	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}
	
	/*
	 * 영화 감독을 리턴한다.
	 */
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	
	/*
	 * 영화 출연진을 리턴한다.
	 */
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}

	/*
	 * 영화 포스터 이미지 주소를 리턴한다.
	 */
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
}