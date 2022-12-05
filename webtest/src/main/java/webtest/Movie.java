package webtest;

public class Movie {
	private int id;
	private String title;
	private String info;
	private String director;
	private String genre;
	private String url;
	private String reservation_rate;
	private String rate;
	
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
	

	public Movie(int id, String title, String info, String director, String genre, String url, String reservation_rate,
			String rate) {
		super();
		this.id = id;
		this.title = title;
		this.info = info;
		this.director = director;
		this.genre = genre;
		this.url = url;
		this.reservation_rate = reservation_rate;
		this.rate = rate;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getReservation_rate() {
		return reservation_rate;
	}
	public void setReservation_rate(String reservation_rate) {
		this.reservation_rate = reservation_rate;
	}
}
