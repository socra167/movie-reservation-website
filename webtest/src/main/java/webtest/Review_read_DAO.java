package webtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Review_read_DAO {
	Connection conn = null;
	PreparedStatement pstmt;
	PreparedStatement pstmt_movie;
	PreparedStatement pstmt_user;
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final String JDBC_URL = "jdbc:mysql://localhost:3306/tgv_db";

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

	public Review_read getReview(String id) {
		open();
		Review_read review = new Review_read();
		try {
			pstmt = conn.prepareStatement("select * from review where id=" + id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				review.setTitle(rs.getString("title"));
				review.setCategory(rs.getString("category"));
				review.setDate(rs.getString("is_created").substring(5, 16)); // Year, second 제거
				review.setContents(rs.getString("content"));
				
				// mid로 movie 테이블의 title 조회
				pstmt_movie = conn.prepareStatement("select title from movie where id=" + rs.getInt("mid"));
				ResultSet ms = pstmt_movie.executeQuery();
				while (ms.next()) {
					review.setMovie(ms.getString("title"));
				}

				// uid로 user 테이블의 user_name 조회
				pstmt_user = conn.prepareStatement("select user_name from user where id=" + rs.getInt("uid"));
				ResultSet us = pstmt_user.executeQuery();
				while (us.next()) {
					review.setUsername(us.getString("user_name"));
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return review;
	}
}
