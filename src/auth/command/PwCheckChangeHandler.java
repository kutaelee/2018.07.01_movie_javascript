package auth.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.IdCheckService;
import auth.service.LoginFailException;
import auth.service.LoginService;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

public class PwCheckChangeHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/pwCheck.jsp";

	private IdCheckService pwCheckService = new IdCheckService();

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

		if (req.getParameter("pwd1").equals(req.getParameter("pwd2"))) {
			pwCheckService.PwdChange(req.getParameter("pwd1"), req.getSession().getAttribute("id").toString());
			req.getSession().invalidate();
		return "index.do";
				
		}return "pwCheck.do";
	}

	private String trim(String str) {
		return str == null ? null : str.trim();
	}
}
