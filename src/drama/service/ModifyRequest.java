package drama.service;

import java.util.Map;

public class ModifyRequest {

	private String userId;
	private int dramaNumber;
	private String title;
	private String content;
	private String video;
	private String picture;
	private String tag;
	public ModifyRequest(int dramaNumber, String title, String content,String video,String picture,String tag) {
		//this.userId = userId;
		this.dramaNumber = dramaNumber;
		this.title = title;
		this.content = content;
		this.video=video;
		this.picture=picture;
		this.tag=tag;
	}

	public String getUserId() {
		return userId;
	}

	public int getDramaNumber() {
		return dramaNumber;
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
