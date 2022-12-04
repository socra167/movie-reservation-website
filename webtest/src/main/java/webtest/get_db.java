package webtest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class get_db {
	String Filter;
    Statement stmt = null;                 // SQL 문을 데이터베이스에 보내기위한 객체
    Statement stmt2 = null;
    ResultSet rs_review = null;
    ResultSet rs_user = null;
    ResultSet rs_movie = null;             // SQL 질의에 의해 생성된 테이블을 저장하는 객체
	Connection conn = null; //DB 커넥션 연결 객체
	private PreparedStatement pstmt;
	ArrayList<Movie> movie_list = null;
	ArrayList<Review> review_list = null;
	ArrayList<User> user_list = null;
	public get_db() throws SQLException{
		final String USERNAME = "root";//DBMS접속 시 아이디
		final String URL = "jdbc:mysql://localhost:3306/tgv_db";//DBMS접속할 db명
		final String PASSWORD = "qhw12522";//DBMS접속 시 비밀번호
        try {
            System.out.println("생성자");
            Class.forName("com.mysql.jdbc.Driver");
            this.conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("드라이버 로딩 성공");
        }
        catch (Exception e) {
            System.out.println("드라이버 로딩 실패 ");
            System.out.println(e);
            try {
                this.conn.close();
            } catch (SQLException e1) {}
        }
	}
	
	
	public ArrayList<Movie> Movie_Data() throws SQLException {
		ArrayList<Movie> movie_list = new ArrayList<Movie>();
        String sql_movie_select = "select * from movie";
        stmt = this.conn.createStatement();
        rs_movie = stmt.executeQuery(sql_movie_select);
        while (rs_movie.next()) {
        	
            int id = rs_movie.getInt("id");
            String title = rs_movie.getString("title");
            String info = rs_movie.getString("info");
            String director = rs_movie.getString("director");
            String genre = rs_movie.getString("genre"); //rs.getString("email");
            Movie temp = new Movie(id, title, info, director, genre);
            movie_list.add(temp);
        }
		return movie_list;
	}
	
	public ArrayList<Movie> Movie_Data(String search_title) throws SQLException {
		ArrayList<Movie> movie_list = new ArrayList<Movie>();
        String sql_movie_select = "select * from movie where title like "+"'%"+search_title+"%'";
        pstmt = this.conn.prepareStatement(sql_movie_select);
        rs_movie = pstmt.executeQuery(sql_movie_select);
        while (rs_movie.next()) {
        	
            int id = rs_movie.getInt("id");
            String title = rs_movie.getString("title");
            String info = rs_movie.getString("info");
            String director = rs_movie.getString("director");
            String genre = rs_movie.getString("genre"); //rs.getString("email");
            Movie temp = new Movie(id, title, info, director, genre);
            movie_list.add(temp);
        }
        
        while (movie_list.size() < 3) {
        	int id = 5;
        	String title = "결과 없음";
        	String info = "";
            String director = "";
            String genre = "";
            Movie temp = new Movie(id, title, info, director, genre);
            movie_list.add(temp);
        }
		return movie_list;
	}
	public ArrayList<Review> Review_Data() throws SQLException{
		try {
			ArrayList<Review> review_list = new ArrayList<Review>();
			String sql_review_select = "select * from review";
			this.stmt = this.conn.createStatement();
			this.rs_review = this.stmt.executeQuery(sql_review_select);
	        while (rs_review.next()) {
	        	int id = this.rs_review.getInt("id");
	            String title = this.rs_review.getString("title");
	            int movie_id = this.rs_review.getInt("mid");
	            int user_id = this.rs_review.getInt("uid");
	            String content = this.rs_review.getString("content");
	            String create_date = this.rs_review.getString("is_created");
	            
	            String select_mid_sql = "SELECT * FROM movie WHERE id = "+ Integer.toString(movie_id);
	            this.stmt2 = this.conn.createStatement();
	            ResultSet mid_title = this.stmt2.executeQuery(select_mid_sql);
	            mid_title.next();
	            String category = mid_title.getString("genre");
	            String movie_name = mid_title.getString("title");
	            mid_title.close();
	            this.stmt2.close();
	            
	            String select_uid_sql = "SELECT * FROM user WHERE id = "+ Integer.toString(user_id);
	            this.stmt2 = this.conn.createStatement();
	            ResultSet uid_title = this.stmt2.executeQuery(select_uid_sql);
	            uid_title.next();
	            String user_name = uid_title.getString("user_name");
	            Review temp2 = new Review(id,title, category, user_name, content,create_date,movie_name);
	            mid_title.close();
	            this.stmt2.close();
	            
	            review_list.add(temp2);
	        	}
	        return review_list;
			}
            catch (Exception e) {
                System.out.println("드라이버 로딩 실패 ");
                System.out.println(e);
                try {
                    this.conn.close();
                } catch (SQLException e1) {}
            }
		return review_list;
	}
	
	public ArrayList<Review> Review_Data(String search_title) throws SQLException{
		try {
			ArrayList<Review> review_list = new ArrayList<Review>();
			String sql_review_select = "select * from review where title like "+"'%"+search_title+"%'";
			this.stmt = this.conn.createStatement();
			this.rs_review = this.stmt.executeQuery(sql_review_select);
	        while (rs_review.next()) {
	        	System.out.println("진");
	        	int id = this.rs_review.getInt("id");
	            String title = this.rs_review.getString("title");
	            int movie_id = this.rs_review.getInt("mid");
	            int user_id = this.rs_review.getInt("uid");
	            String content = this.rs_review.getString("content");
	            String create_date = this.rs_review.getString("is_created");
	            
	            String select_mid_sql = "SELECT * FROM movie WHERE id = "+ Integer.toString(movie_id);
	            this.stmt2 = this.conn.createStatement();
	            ResultSet mid_title = this.stmt2.executeQuery(select_mid_sql);
	            mid_title.next();
	            String category = mid_title.getString("genre");
	            String movie_name = mid_title.getString("title");
	            mid_title.close();
	            this.stmt2.close();
	            
	            String select_uid_sql = "SELECT * FROM user WHERE id = "+ Integer.toString(user_id);
	            this.stmt2 = this.conn.createStatement();
	            ResultSet uid_title = this.stmt2.executeQuery(select_uid_sql);
	            uid_title.next();
	            String user_name = uid_title.getString("user_name");
	            Review temp2 = new Review(id,title, category, user_name, content,create_date,movie_name);
	            mid_title.close();
	            this.stmt2.close();
	            
	            review_list.add(temp2);
	        	}
	        
	        while(review_list.size() < 1) {
	        	int id = 5;
	            String title = "검색 결과가 없습니다.";
	            String content = "";
	            String create_date = "";
	            String category = "";
	            String user_name = "";
	            String movie_name = "";
	            Review temp2 = new Review(id,title, category, user_name, content,create_date,movie_name);
	            review_list.add(temp2);
	        }
	        return review_list;
			}
            catch (Exception e) {
                System.out.println("드라이버 로딩 실패 ");
                System.out.println(e);
                try {
                    this.conn.close();
                } catch (SQLException e1) {}
            }
		return review_list;
	}
	
	public ArrayList<User> User_Data() throws SQLException{
		ArrayList<User> user_list = new ArrayList<User>();
		String sql_user_select = "select * from user";
		this.stmt = this.conn.createStatement();
		this.rs_user = this.stmt.executeQuery(sql_user_select);
        while (rs_user.next()) {
        	
            int id = rs_user.getInt("id");
            String site_id = rs_user.getString("site_id");
            String password = rs_user.getString("password");
            String user_name = rs_user.getString("user_name");
            User temp = new User(id, site_id, password, user_name);
            user_list.add(temp);
        }
        return user_list;
	}
//	public void Update_User(String new_id, String new_password, String username) throws SQLException{
//		String sql = "INSERT INTO user (site_id, password, user_name) " 
//				   + "VALUES ('" + new_id + "'," + new_password + "','" + new_password+"')";
//		//String sql_user_update = "INSERT INTO user (id, site_id, password, user_name) VALUES ("+ last_idx +"," + new_id +","+ new_password + ","+ username+");";
//		System.out.println(sql);
//		this.stmt = this.conn.createStatement();
//		this.rs_user = this.stmt.executeQuery(sql);
//		//System.out.println(sql_user_update);
//	}
	public void Update_User(String new_id, String new_password, String username) throws SQLException{
		String sql = "INSERT INTO user (site_id, password, user_name) VALUES (?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, new_id);
			pstmt.setString(2, new_password);
			pstmt.setString(3, username);
			pstmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	public int find_uid(String user_id) throws SQLException{
        String select_uid_sql = "SELECT * FROM user WHERE site_id = '"+ user_id+"';";
        this.stmt2 = this.conn.createStatement();
        ResultSet uid_title = this.stmt2.executeQuery(select_uid_sql);
        uid_title.next();
        int uid = uid_title.getInt("id");
        uid_title.close();
        this.stmt2.close();
        return uid;
	}

}
