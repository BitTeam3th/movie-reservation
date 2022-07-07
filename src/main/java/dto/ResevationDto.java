package dto;

public class ResevationDto {

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

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
