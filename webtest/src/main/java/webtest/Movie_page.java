package webtest;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Movie_page
 */
@WebServlet("/Movie_page")
public class Movie_page extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Movie_page() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		get_db Data = null;
		try {
			Data = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Movie> movie_data;
		String title = request.getParameter("title");
		if (title == null) {
			try {
				movie_data = Data.Movie_Data();
				request.setAttribute("list", movie_data);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("error");
			}
		} else {
			try {
				System.out.println(title);
				movie_data = Data.Movie_Data(title);
				request.setAttribute("list", movie_data);
				int mid = movie_data.get(0).getId();
				if (mid != -1) {
					response.sendRedirect("http://localhost:8080/webtest/Seat_controller?mid=" + mid);
					return;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.print("error");
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("web_project/movie.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
