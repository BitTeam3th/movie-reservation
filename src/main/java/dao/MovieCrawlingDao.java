package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.MovieDto;

public class MovieCrawlingDao {
	private static MovieCrawlingDao dao = new MovieCrawlingDao();
	
	private MovieCrawlingDao() {
	}
	
	public static MovieCrawlingDao getInstance() {
		return dao;
	}
	
	public boolean saveMovie(MovieDto dto) {
		
		System.out.println("무비크롤링 다오");
		return true;
	}
}
