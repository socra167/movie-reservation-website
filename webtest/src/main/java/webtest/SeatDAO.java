package webtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

public class SeatDAO {
	Connection conn = null;
	PreparedStatement pstmt;
	PreparedStatement pstmt_movie;
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final String JDBC_URL = "jdbc:mysql://localhost:3306/tgv_db";
	
	public void open() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "root", "qhw12522");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// movie ID로 데이터베이스에서 영화 객체를 반환
	public Movie getMovie(int mid) {
		open();
		Movie movie = new Movie();
		try {
			pstmt = conn.prepareStatement("select * from movie where id=" + mid);
			ResultSet ms = pstmt.executeQuery();
			while (ms.next()) {
				movie.setId(ms.getInt("id"));
				movie.setTitle(ms.getString("title"));
				movie.setInfo(ms.getString("info"));
				movie.setDirector(ms.getString("director"));
				movie.setGenre(ms.getString("genre"));
				movie.setUrl(ms.getString("url"));
				movie.setRate("rate");
				movie.setReservation_rate("reservation_rate");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return movie;
	}

	// ticket 테이블에서 영화에 해당하는 좌석 정보로 JSON을 만들어 반환
	public String getSeats(int mid) {
		open();
		ArrayList<Seat> seats = new ArrayList<Seat>();
		for (int i = 0; i < 9; i++) {
			Seat s = new Seat();
			seats.add(s);
		}
		try {
			pstmt = conn.prepareStatement("select * from ticket where mid=" + mid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String seatVal = rs.getString("seat"); // 0A3, 6D7 과 같은 좌석 정보 값
				System.out.println(seatVal);
				int theater_num = Integer.parseInt(seatVal.charAt(0) + "");
				System.out.println("TN : " + theater_num);
				seats.get(theater_num).makeSeat(seatVal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		String json = new Gson().toJson(seats);
		System.out.println(json);
		return json;
	}
	
	public void insertSeat(int uid, int mid, String seat) {
		open();
		String sql = "insert into ticket(uid, mid, seat) value(?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uid);
			pstmt.setInt(2, mid);
			pstmt.setString(3, seat);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return;
	}
}
