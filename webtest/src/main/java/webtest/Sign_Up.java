package webtest;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sign_Up
 */
@WebServlet("/Sign_Up")
public class Sign_Up extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sign_Up() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("new_site_id");
		String password = (String)request.getParameter("new_password");
		get_db Data = null;
		try {
			Data = new get_db();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			int success = Data.Update_User(username, password, username);
			System.out.print("성공 : login");
			if (success == 0) {
				request.setAttribute("check","f");
//				System.out.println(success);
				getServletContext().getRequestDispatcher("/Loginservlet").forward(request, response);
				return;
			}
		} catch (SQLException e) {
			System.out.println("실패");
			// TODO Auto-generated catch block	
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher("/Loginservlet").forward(request, response);
	}

}
