package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 예약 관련 Controller
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
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
