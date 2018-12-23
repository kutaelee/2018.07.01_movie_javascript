package movie.model;

public class MovieContent {

	private Integer number;
	private String content;
	private String video;
	private String picture;
	private String tag;
	public MovieContent(Integer number, String content,String video,String picture,String tag) {
		this.number = number;
		this.content = content;
		this.video=video;
		this.picture=picture;
		this.tag=tag;
	}

	public Integer getNumber() {
		return number;
	}

	public String getContent() {
		return content;
	}
	public String getVideo()
	{
		return video;
	}
	public String getPicture()
	{
		return picture;
	}
	public String getTag()
	{
		return tag;
	}
}
