package webtest;

public class Review {
	private int id;
	private String title;
	private String category;
	private String userName;
	private String content;
	private String create_date;
	private int mid;
	private String movie_name;
	public Review(int id, String title,String category,String useName, String content,String create_date, int mid, String movie_name){
		this.id = id;
		this.title = title;
		this.category = category;
		this.userName = useName;
		this.content = content;
		this.create_date = create_date;
		this.mid = mid;
		this.movie_name = movie_name;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	
}