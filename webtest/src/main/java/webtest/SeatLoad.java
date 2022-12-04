package webtest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 좌석 JSON 정보 전달용 컨트롤러
@WebServlet("/seatLoad")
public class SeatLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeatDAO dao;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new SeatDAO();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid");
		if (mid == null) {
			mid="1";
		}
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			dao.getSeats(Integer.parseInt(mid));
			out.print(dao.getSeats(Integer.parseInt(mid)));
			out.flush();
			out.close();
		} catch (IOException e) {e.printStackTrace();}
		return;
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	private String getSeats(HttpServletRequest request, HttpServletResponse response, int mid) {
		System.out.println(mid+"!!!!");
		
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			out.print(dao.getSeats(mid));
			out.flush();
			out.close();
		} catch (IOException e) {e.printStackTrace();}
		return null;
	}
}
