package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dto.UserDto;
import net.sf.json.JSONObject;

/**
 * 사용자 Controller
 * 
 * @author BTC-N12
 *
 */
public class UserController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}


	/**
	 * 모든 방식의 servlet 요청을 처리한다.
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String param = req.getParameter("param");
		
		if (param.equals("main")) {
			resp.sendRedirect("user/main.jsp");
		} else if (param.equals("login")) {
			resp.sendRedirect("user/login.jsp");
		} else if (param.equals("logout")) {
			HttpSession session = req.getSession();
			session.invalidate();
			resp.sendRedirect("index.jsp");
		} else if (param.equals("loinAf")) {
			req.setCharacterEncoding("utf-8");
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");

			UserDao dao = UserDao.getInstance();
			UserDto usr = dao.longin(new UserDto(email, pwd, null));

			HttpSession session = req.getSession();
			String msg = "login";

			if (usr != null && !usr.getEmail().equals("")) {
				session.setAttribute("login", usr); // 세션에 로그인 객체 저장
				session.setMaxInactiveInterval(60 * 60 * 2); // 2시간
			} else {
				msg = "loginFail";
			}
			
			resp.sendRedirect("message.jsp?msg=" + msg);
		} else if (param.equals("regi")) {
			resp.sendRedirect("user/regi.jsp");
		} else if (param.equals("idCheck")) {
			String email = req.getParameter("email");

			UserDao dao = UserDao.getInstance();
			boolean isExist = dao.isExistId(email);

			String str = "NO";
			if (isExist == false) {
				str = "YES";
			}

			JSONObject obj = new JSONObject();
			obj.put("msg", str);

			resp.setContentType("application/x-json; charset=utf-8");
			resp.getWriter().print(obj);
		} else if (param.equals("regiAf")) {
			req.setCharacterEncoding("utf-8");

			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			String username = req.getParameter("username");

			UserDao dao = UserDao.getInstance();
			boolean isS = dao.addUser(new UserDto(email, pwd, username));
			
			String msg = "OK";
			if (isS == false) {
				msg = "NO";
			}
			
			resp.sendRedirect("message.jsp?msg=" + msg);
		}
	}
}
