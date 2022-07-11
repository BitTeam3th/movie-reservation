package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import db.DBClose;
import db.DBConnection;
import dto.MovieDto;

public class MovieDao {
   
   private static MovieDao dao = new MovieDao();
   
   private MovieDao() {
      DBConnection.initConnection();
   }
   
   public static MovieDao getInstance() {
      
      return dao;
   }
   
   public List<MovieDto> getMovieList(){
      
      String sql = " select id, title, content, rating, ticketing_rate, audience_number, "
               + "         genre, open_date, running_time, director, cast, img_src "
               + " from movie "
               + " order by id ";
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;
      
      List<MovieDto> list = new ArrayList<MovieDto>();
      
      try {
         conn = DBConnection.getConnection();
         System.out.println("1/4 getMovieList success");
            
         psmt = conn.prepareStatement(sql);
         System.out.println("2/4 getMovieList success");
         
         rs = psmt.executeQuery();
         System.out.println("3/4 getMovieList success");
         
         while(rs.next()) {
            MovieDto dto = new MovieDto(rs.getInt(1), 
                                 rs.getString(2), 
                                 rs.getString(3), 
                                 rs.getDouble(4),
                                 rs.getDouble(5), 
                                 rs.getInt(6), 
                                 rs.getString(7), 
                                 rs.getString(8), 
                                 rs.getInt(9), 
                                 rs.getString(10),
                                 rs.getString(11),
                                 rs.getString(12));
            list.add(dto);
         }
         
         System.out.println("4/4 getMovieList success");
      } catch(SQLException e) {
         System.out.println("getMovieList fail");
         e.printStackTrace();
      } finally {
         DBClose.close(conn, psmt, rs);
      }
      
      return list;
   }

   public MovieDto getMovieById(int id) {
      
      MovieDto dto = new MovieDto();
      
      String sql = " SELECT id, title, content, rating, ticketing_rate, audience_number, "
               + "         genre, open_date, running_time, director, cast, img_src "
               + " FROM movie "
               + " WHERE id=? ";
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;
      
      List<MovieDto> list = new ArrayList<MovieDto>();
      
      try {
         conn = DBConnection.getConnection();
         System.out.println("1/4 getMovieById success");
   
         psmt = conn.prepareStatement(sql);
         psmt.setInt(1, id);
         System.out.println("2/4 getMovieById success");
         
         rs = psmt.executeQuery();
         System.out.println("3/4 getMovieById success");
         
         if(rs.next()) {
            dto.setId(rs.getInt(1));
            dto.setTitle(rs.getString(2));
            dto.setContent(rs.getString(3));
            dto.setRating(rs.getDouble(4));
            dto.setTicketingRate(rs.getDouble(5));
            dto.setAudienceNumber(rs.getInt(6));
            dto.setGenre(rs.getString(7));
            dto.setOpenDate(rs.getString(8));
            dto.setRunningTime(rs.getInt(9));
            dto.setDirector(rs.getString(10));
            dto.setCast(rs.getString(11));
            dto.setImg_src(rs.getString(12));
         }
         
         System.out.println("4/4 getMovieById success");
      } catch(SQLException e) {
         System.out.println("getMovieById fail");
         e.printStackTrace();
      } finally {
         DBClose.close(conn, psmt, rs);
      }
      
      return dto;
   }

   public List<HashMap<String, Object>> getMovieTimeListById(int seq) {
      
      List<HashMap<String, Object>> list=new ArrayList<HashMap<String, Object>>();
      
      String sql = " SELECT m.id, m.title, m.img_src, mt.time, mt.theater, mt.max_person, mt.now_person, mt.id "
               + " FROM movie m, movie_time mt "
               + " WHERE m.id = mt.movie_id AND m.id = ? ";
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;
      
      try {
         conn = DBConnection.getConnection();
         System.out.println("1/4 getMovieTimeListById success");
            
         psmt = conn.prepareStatement(sql);
         psmt.setInt(1, seq);
         System.out.println("2/4 getMovieTimeListById success");
         
         rs = psmt.executeQuery();
         System.out.println("3/4 getMovieTimeListById success");
         
         while(rs.next()) {
            
            HashMap<String,Object> map = new HashMap<String,Object>();
            
            map.put("id", rs.getInt(1));
            map.put("title", rs.getString(2));
            map.put("img_src", rs.getString(3));
            map.put("time", rs.getString(4));
            map.put("theater", rs.getString(5));
            map.put("maxPerson", rs.getString(6));
            map.put("nowPerson", rs.getString(7));
            map.put("movieTimeId", rs.getInt(8));
            
            list.add(map);
         }
      } catch(SQLException e) {
         System.out.println("getMovieTimeListById fail");
         e.printStackTrace();
      } finally {
         DBClose.close(conn, psmt, rs);
      }
      
      return list;
   }

   public List<String> getMovieTheater(int seq) {
      List<String> list=new ArrayList<String>();
      
      String sql = " SELECT distinct mt.theater "
               + " FROM movie m, movie_time mt"
               + " WHERE m.id = mt.movie_id AND m.id = ? ";
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;
      
      try {
         conn = DBConnection.getConnection();
         System.out.println("1/4 getMovieTimeListById success");
            
         psmt = conn.prepareStatement(sql);
         psmt.setInt(1, seq);
         System.out.println("2/4 getMovieTimeListById success");
         
         rs = psmt.executeQuery();
         System.out.println("3/4 getMovieTimeListById success");
         
         while(rs.next()) {
            list.add(rs.getString(1));
         }
      } catch(SQLException e) {
         System.out.println("getMovieTimeListById fail");
         e.printStackTrace();
      } finally {
         DBClose.close(conn, psmt, rs);
      }
      
      return list;
   }
}