package drama.service;

import java.util.Map;

import drama.model.Writer;


public class WriteRequest {
	private Writer writer;
	private String title;
	private String content;
	private String video;
	private String picture;
	private String tag;
	public WriteRequest(String title, Writer writer,String content,String video,String picture,String tag) {
		this.writer=writer;
		this.title = title;
		this.content = content;
		this.video=video;
		this.picture=picture;
		this.tag=tag;
	}


	public String getTitle() {
		return title;
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
	public Writer getWriter()
	{
		return writer;
	}
	public void validate(Map<String, Boolean> errors) {
		if (title == null || title.trim().isEmpty()) {
			errors.put("title", Boolean.TRUE);
		}
	}
}
