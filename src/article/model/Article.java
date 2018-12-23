package article.model;

import java.util.Date;

public class Article {
	private String content;
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	private Integer qano;
	private Integer number;
	private Writer writer;
	private String title;
	private Date regDate;
	private Date modifiedDate;
	private int readCount;

	public Article(Integer number, Writer writer, String title, 
			Date regDate, int readCount,String contents) {
		this.number = number;
		this.writer = writer;
		this.title = title;
		this.regDate = regDate;
		this.readCount = readCount;
		this.content = contents;
	}
	public Article(Integer qano,Integer number, Writer writer, String title, 
			Date regDate, int readCount,String contents) {
		this.qano=qano;
		this.number = number;
		this.writer = writer;
		this.title = title;
		this.regDate = regDate;
		this.readCount = readCount;
		this.content = contents;
	}

	public Integer getQano() {
		return qano;
	}

	public void setQano(Integer pano) {
		this.qano = pano;
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

	public Date getRegDate() {
		return regDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public int getReadCount() {
		return readCount;
	}

}
