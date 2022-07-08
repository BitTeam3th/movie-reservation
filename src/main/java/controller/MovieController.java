package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import dto.MovieDto;

public class MovieController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String param = req.getParameter("param");
		
		if(param.equals("movieList")) {
			MovieDao dao = MovieDao.getInstance();
			List<MovieDto> list = dao.getMovieList();
			req.setAttribute("movieList", list);
			
			forward("index.jsp",req,resp);
		}
		else if(param.equals("movieById")) {
			int id = Integer.parseInt(req.getParameter("id"));
			
			MovieDao dao = MovieDao.getInstance();
			MovieDto dto = dao.getMovieById(id);
			req.setAttribute("movie", dto);
			
			forward("index2.jsp",req,resp);
		}
		else if(param.equals("movieTimeListById")) {
			int id = Integer.parseInt(req.getParameter("id"));
			
			MovieDao dao = MovieDao.getInstance();
			List<HashMap<String, Object>> dto = new ArrayList<HashMap<String, Object>>();
			dto = dao.getMovieTimeListById(id);
			req.setAttribute("movieTimeList",dto);
			
			forward("index3.jsp",req,resp);
		}
		
	}
	
	public void forward(String arg, HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		RequestDispatcher dispatch = req.getRequestDispatcher(arg);
		dispatch.forward(req, resp);			
	}
}
