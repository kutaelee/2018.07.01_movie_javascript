package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class DramaHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/gallery.jsp";
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
	throws Exception {
		
		
			return processForm(req, res);			
	
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}
}
