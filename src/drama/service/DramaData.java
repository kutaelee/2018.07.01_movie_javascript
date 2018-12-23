package drama.service;

import drama.model.Drama;
import drama.model.DramaContent;

public class DramaData {

	private Drama drama;
	private DramaContent content;

	public DramaData(Drama drama, DramaContent content) {
		this.drama = drama;
		this.content = content;
	}

	public Drama getDrama() {
		return drama;
	}

	public String getContent() {
		return content.getContent();
	}

}
