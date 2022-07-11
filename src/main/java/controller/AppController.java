package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AppController extends HttpServlet {

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

		if (param.equals("login")) {
			resp.sendRedirect("user/login.jsp");
		} 
		else if (param.equals("regi")) {
			resp.sendRedirect("user/regi.jsp");
		} 
		else if (param.equals("mypage")) {
			resp.sendRedirect("mypage.jsp");
		}
		else if (param.equals("member")) {
			resp.sendRedirect("member.jsp");
		}
		else if (param.equals("main")) {
			resp.sendRedirect("index.jsp");
		}
		
	}
}
