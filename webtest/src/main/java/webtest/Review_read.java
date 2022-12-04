package webtest;

public class Review_read {
	private String title; // 리뷰 제목
	private	String category; // 리뷰 카테고리
	private	String movie; // 리뷰 영화 제목
	private	String username; // 작성자 유저명
	private	String date; // 작성 시간
	private	String contents; // 글 내용
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
}
