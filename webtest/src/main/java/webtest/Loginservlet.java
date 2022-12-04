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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		get_db Data = null;
		try {
			Data = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String username = (String)request.getParameter("site_id");
		String password = (String)request.getParameter("password");
		ArrayList<User> user_data;
		try {
			user_data = Data.User_Data();
			System.out.println(username);
			System.out.println(password);
			int flag = 0;
			for(int i = 0;i<user_data.size();i++) {
				if(user_data.get(i).getSite_id().equals(username) && user_data.get(i).getPassword().equals(password)) {
					System.out.println("로그인 성공 ");
					HttpSession session = request.getSession();
					session.setAttribute("site_id", username);
					System.out.println(request.getSession().getAttribute("site_id"));
					response.sendRedirect("/webtest/Movie_page");
					flag = 1;
					break;
				}
			}
			if(flag == 0) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("web_project/index.jsp");
				dispatcher.forward(request,response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print("error");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
