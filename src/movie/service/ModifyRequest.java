package movie.service;

import java.util.Map;

public class ModifyRequest {

	private String userId;
	private int movieNumber;
	private String title;
	private String content;
	private String video;
	private String picture;
	private String tag;
	public ModifyRequest(int movieNumber, String title, String content,String video,String picture,String tag) {
		//this.userId = userId;
		this.movieNumber = movieNumber;
		this.title = title;
		this.content = content;
		this.video=video;
		this.picture=picture;
		this.tag=tag;
	}

	public String getUserId() {
		return userId;
	}

	public int getMovieNumber() {
		return movieNumber;
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
	public void validate(Map<String, Boolean> errors) {
		if (title == null || title.trim().isEmpty()) {
			errors.put("title", Boolean.TRUE);
		}
	}

}
