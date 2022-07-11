package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import dao.ReservationDao;
import dto.MovieTimeDto;
import dto.ReservationDto;

/**
 * 예약 관련 Controller
 * 
 * @author BTC-N12
 *
 */
public class ReservationController extends HttpServlet {

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
		ReservationDao reservationDao = ReservationDao.getInstance();
		MovieDao movieDao = MovieDao.getInstance();

		if (param.equals("cancel")) {
			int reservationId = Integer.parseInt(req.getParameter("reservationid"));
			ReservationDto reservationDto = reservationDao.getReservationById(reservationId);
			MovieTimeDto movieTime = movieDao.getMovieTimeById(reservationDto.getMovieTimeId());
			
			
			boolean isDelete = reservationDao.deleteReservation(reservationId);
			boolean isPersonDelete = movieDao.updateMovieTimeById(reservationDto.getMovieTimeId(), movieTime.getNowPerson()-reservationDto.getPersonnel());;
			
			String msg = "DELETE_SUC";
			if (!isDelete || !isPersonDelete) {
				msg = "DELETE_FAIL";
			}
			resp.sendRedirect("message.jsp?msg=" + msg);
			
		} else if (param.equals("mypage")) {
			resp.sendRedirect("mypage.jsp");
		} else if (param.equals("insert")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			int movieId = Integer.parseInt(req.getParameter("movieId"));
			int movieTimeId = Integer.parseInt(req.getParameter("movieTimeId"));
			int personnel = Integer.parseInt(req.getParameter("personnel"));
			String[] selectedSeat = req.getParameterValues("seatNum");
			
			MovieTimeDto movieTime = movieDao.getMovieTimeById(movieTimeId);

			String msg = "RESERVE_SUC";
			if (movieTime.getMaxPerson() < movieTime.getNowPerson() + personnel) {
				msg = "RESERVE_FAIL";
			} else {
				boolean isUpdate = movieDao.updateMovieTimeById(movieTimeId, personnel + movieTime.getNowPerson());
				boolean isInsert = reservationDao.insertReservation(userId, movieId, movieTimeId, personnel);
				
				reservationDao.updateSeat(movieTimeId, selectedSeat);
				
				if (!isInsert || !isUpdate) {
					msg = "RESERVE_FAIL";
				}
				
			}
			resp.sendRedirect("message.jsp?msg=" + msg);
		} else if (param.equals("setSeat")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			int movieId = Integer.parseInt(req.getParameter("movieId"));
			int movieTimeId = Integer.parseInt(req.getParameter("movieTimeId"));
			int personnel = Integer.parseInt(req.getParameter("personnel"));
			
			HashMap<String, Object> dto = new HashMap<String, Object>();
			
			dto = reservationDao.setSeat(userId, movieId, movieTimeId, personnel);
			req.setAttribute("seatList",dto);
	        forward("newSeat.jsp",req,resp);
		}
	}
	
	public void forward(String arg, HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
       RequestDispatcher dispatch = req.getRequestDispatcher(arg);
       dispatch.forward(req, resp);         
    }

}
