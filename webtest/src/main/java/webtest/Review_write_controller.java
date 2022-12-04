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

import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/writeControl")
public class Review_write_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Review_write_DAO dao;
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		String view = "";
		if(request.getParameter("action") == null) {
			getServletContext().getRequestDispatcher("/writeControl?action=getMovies").forward(request, response);
			return;
		} else {
			switch(action) {
				case "insert": view = insert(request, response);break;
				case "getMovies": view = getMovies(request, response);break;
				default: view = getMovies(request, response);
				break;
			}
		}
		
		getServletContext().getRequestDispatcher("/"+view).forward(request, response);
		return;
	}
	public String getMovies(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String site_id = (String)session.getAttribute("site_id");
		System.out.println(site_id);
		get_db f = null;
		try {
			f = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int uid = 0;
		try {
			uid = f.find_uid(site_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao = new Review_write_DAO(uid);
		request.setAttribute("movies", dao.getMovies());
		return "web_project/write.jsp";
	}
	private String insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String site_id = (String)session.getAttribute("site_id");
		System.out.println(site_id);
		Review_write review = new Review_write();
		get_db f = null;
		try {
			f = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int uid = 0;
		try {
			uid = f.find_uid(site_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao = new Review_write_DAO(uid);
		try {
			BeanUtils.populate(review, request.getParameterMap());
		} catch(Exception e) {e.printStackTrace();}
		dao.insert(review);
//		getServletContext().getRequestDispatcher("/web_project/review.jsp").forward(request, response); // DB insert 후 페이지 이동
		return "/Review_page";
	}
}
