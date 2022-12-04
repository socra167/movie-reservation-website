package webtest;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Seat_controller")
public class Seat_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeatDAO dao;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mid = request.getParameter("mid"); // mid Parameter 저장
		String action = request.getParameter("action"); // action은 좌석정보, ex) 0A1, 9D6 ...
		System.out.println("받은 좌석 정보 : " + action);
		if (mid == null) {
			mid = "1";
		} // Parameter 없으면 1번째 영화로 가져오기
		if (action == null) { // action에 좌석 정보가 없는 경우(단순 페이지 이동)
			String view = getMovie(request, response, Integer.parseInt(mid));
			getServletContext().getRequestDispatcher("/" + view).forward(request, response);
			return;
		} else { // action에 좌석 정보가 저장되어 온 경우
			System.out.println("MID :" + mid + "," + "ACTION :" + action);
			insert(request, response, Integer.parseInt(mid), action);
		}
		return;
	}

	private void insert(HttpServletRequest request, HttpServletResponse response, int mid, String seat) { // DB에 좌석 정보를 저장하는 메소드
		// ================== 세션으로 UID 구하기 ==================
		HttpSession session = request.getSession();
		String site_id = (String) session.getAttribute("site_id");
		get_db f = null;
		int uid = 0;
		try {
			f = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			uid = f.find_uid(site_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// ===================================================
		dao = new SeatDAO();
		dao.insertSeat(uid, mid, seat);
	}

	private String getMovie(HttpServletRequest request, HttpServletResponse response, int mid) {
		dao = new SeatDAO();
		request.setAttribute("movie", dao.getMovie(mid)); // movie 객체 Attribute로 넣어서 보내기
		return "web_project/seat.jsp";
	}
}
