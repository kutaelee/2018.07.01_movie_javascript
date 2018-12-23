package drama.model;

public class Drama {
	private String content;
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	private Integer number;
	private Writer writer;
	private String title;
	private String video;
	private String picture;
	private String tag;
	public Drama(Integer number,String title, 
			String contents,String video,String picture,String tag) {
		this.number = number;
		//this.writer = writer;
		this.title = title;
		this.content = contents;
		this.video=video;
		this.picture=picture;
		this.tag=tag;
	}
	public Drama(String tag)
	{
		this.tag=tag;
	}
	public Integer getNumber() {
		return number;
	}

	public Writer getWriter() {
		return writer;
	}

	public String getTitle() {
		return title;
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
