package webtest;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/readControl")
public class Review_read_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Review_read_DAO dao;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
        dao = new Review_read_DAO();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String review_id = request.getParameter("id");
		String view = read(request, response, review_id);
		getServletContext().getRequestDispatcher("/"+view).forward(request, response);
		return;
	}
	private String read(HttpServletRequest request, HttpServletResponse response, String review_id) {
		request.setAttribute("review", dao.getReview(review_id));
		return "web_project/read.jsp";
	}
}
