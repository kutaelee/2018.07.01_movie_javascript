package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.IdCheckService;

import mvc.command.CommandHandler;

public class IdCheckHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/idCheck.jsp";

	private IdCheckService idCheckService = new IdCheckService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {

			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String getCheckId = idCheckService.check(req.getParameter("name"), req.getParameter("phone"));
		
		req.setAttribute("Hey", getCheckId);
		return "/WEB-INF/view/idCheckSuccess.jsp";
	}

	private String trim(String str) {
		return str == null ? null : str.trim();
	}
}
