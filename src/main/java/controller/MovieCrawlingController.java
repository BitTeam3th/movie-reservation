package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			String rating = req.getParameter("rating");
			String ticketingRate = req.getParameter("ticketingRate");
			String audienceNumber = req.getParameter("audienceNumber");
			String genre = req.getParameter("genre");
			String openDate = req.getParameter("openDate");
			String runningTime = req.getParameter("runningTime");
			String derector = req.getParameter("derector");
			String cast = req.getParameter("cast");
			String poster = req.getParameter("poster");
			System.out.println(title);
			System.out.println(content);
			System.out.println(rating);
			System.out.println(ticketingRate);
			System.out.println(audienceNumber);
			System.out.println(genre);
			System.out.println(openDate);
			System.out.println(runningTime);
			System.out.println(derector);
			System.out.println(cast);
			System.out.println(poster);
			
		}
	}
}
