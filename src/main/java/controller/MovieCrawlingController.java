package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import dao.MovieCrawlingDao;
import dto.MovieDto;
import dto.MovieTimeDto;

public class MovieCrawlingController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String param = req.getParameter("param");
		
		if(param.equals("getmovie")) {
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			Double rating = Double.parseDouble(req.getParameter("rating"));
			Double ticketingRate = Double.parseDouble(req.getParameter("ticketingRate"));
			int audienceNumber = Integer.parseInt(req.getParameter("audienceNumber"));
			String genre = req.getParameter("genre");
			String openDate = req.getParameter("openDate");
			int runningTime = Integer.parseInt(req.getParameter("runningTime"));
			String derector = req.getParameter("derector");
			String cast = req.getParameter("cast");
			String poster = req.getParameter("poster");
			
			MovieCrawlingDao dao = MovieCrawlingDao.getInstance();
			
			MovieDto dto = new MovieDto(0, title, content, runningTime, runningTime, audienceNumber, genre, openDate, runningTime, derector, cast, poster);
			
			String msg = "SAVEFAIL";
			boolean isS = dao.saveMovie(dto);
			if(isS) {
				msg = "SAVESUCCESS";
			}
			
		}
		
		if(param.equals("gettime")) {
			
			MovieCrawlingDao dao = MovieCrawlingDao.getInstance();
			
			String title = req.getParameter("title");
			System.out.println("영화시간가져오기");
			System.out.println(title);
			String query = "https://www.google.com/search?q=";
			String month = "07";
			String day = "10";
			query = query + title + " 강남" + month + "월 " + day + "일";
			Document doc = Jsoup.connect(query).get();
			
			Elements theaters = doc.select("div.lr_c_fcb div.lr_c_tmt a.vk_bk");
			
			Elements times = doc.select("div.lr_c_fcb div.lr_c_fcc");
			
			
			
			System.out.println(dao.findMovieId(title));
			
			for (int i = 0; i < theaters.size(); i++) {
				if (theaters.get(i).text().substring(0, 5).equals("롯데시네마")) {
					String[] movietimes = times.get(i).text().split(" ");
					List<String> aftermovietimes = new ArrayList<String>();
					for (int j = 0; j < movietimes.length; j++) {
						String check = movietimes[j].substring(0, 2);
						String[] beforetime = movietimes[j].substring(2).split(":");
						String hour = two(ifAfternoon(check, beforetime[0]));
						String minute = two(beforetime[1]);
						aftermovietimes.add("2022" + two(month) + two(day) + hour + minute);
//						System.out.println(dao.findMovieId(theaters.get(i).text()) + "2022" + two(month) + two(day) + hour + minute);
//						System.out.println(theaters.get(i).text() + "2022" + two(month) + two(day) + hour + minute);
					}
					System.out.println(aftermovietimes);
					dao.savetimes(dao.findMovieId(title), theaters.get(i).text(), aftermovietimes);
				}
			}
		}
		
		
	}
	
	
	public static String two(String msg){
		return msg.trim().length() < 2?"0" + msg.trim():msg.trim();
	}
	
	public static String ifAfternoon(String msg, String time){
		if (msg.equals("오후")) {
			return Integer.toString(Integer.parseInt(time) + 12);
		}
		return time;
	}
}
