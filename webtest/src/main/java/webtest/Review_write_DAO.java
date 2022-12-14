package webtest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Review_write_DAO {
	Connection conn = null;
	PreparedStatement pstmt;
	int uid;
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final String JDBC_URL = "jdbc:mysql://localhost:3306/tgv_db";
	Review_write_DAO(int uid){
		this.uid = uid;
	}
	public void open() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "root", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<Movie_name> getMovies() {
		open();
		List<Movie_name> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement("select id, title from movie;");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Movie_name m = new Movie_name();
				m.setId(rs.getInt("id"));
				m.setTitle(rs.getString("title"));
				list.add(m);
			}
		} catch (Exception e) { e.printStackTrace(); }
		finally {close();}
		return list;
	}

	public void insert(Review_write review) {
		open();
		String sql = "insert into review(mid, uid, title, content, category) values(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, review.getMovie()); // Movie ID (FK)
			pstmt.setInt(2, this.uid); // User ID (FK)
			pstmt.setString(3, review.getTitle());
			pstmt.setString(4, review.getContents());
			pstmt.setString(5, review.getCategory());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
}
