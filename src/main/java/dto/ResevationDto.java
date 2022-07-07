package dto;

public class ResevationDto {
	
	private int id;
	private int user_id;
	private int movie_id;
	private int movie_time_id;
	
	public ResevationDto(int id, int user_id, int movie_id, int movie_time_id) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.movie_id = movie_id;
		this.movie_time_id = movie_time_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}

	public int getMovie_time_id() {
		return movie_time_id;
	}

	public void setMovie_time_id(int movie_time_id) {
		this.movie_time_id = movie_time_id;
	}
	
	
	

}
