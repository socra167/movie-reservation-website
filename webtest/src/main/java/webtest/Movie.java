package webtest;

public class Movie {
	private int id;
	private String title;
	private String info;
	private String director;
	private String genre;
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
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public Movie() {}
	public Movie(int id, String title, String info, String director, String genre){
		this.id = id;
		this.title = title;
		this.info = info;
		this.director = director;
		this.genre = genre;
	}
}
