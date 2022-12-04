package webtest;

public class User {
	private int id;
	private String site_id;
	private String password;
	private String user_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSite_id() {
		return site_id;
	}
	public void setSite_id(String site_id) {
		this.site_id = site_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public User(int id, String site_id, String password, String user_name) {
		this.id = id;
		this.password = password;
		this.site_id = site_id;
		this.user_name = user_name;
	}
}
