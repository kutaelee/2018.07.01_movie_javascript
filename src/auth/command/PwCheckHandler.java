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

public class PwCheckHandler implements CommandHandler {

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

		boolean getCheckPw = pwCheckService.PwChangevalidate(req.getParameter("id"), req.getParameter("phone"));
		System.out.println(getCheckPw);
		if (getCheckPw) {
			req.getSession().setAttribute("id", req.getParameter("id"));
			System.out.println("정보찾기 성공");
			return "/WEB-INF/view/pwCheckChange.jsp";
			
		} else {
			System.out.println("정보찾기 실패");
			return "/WEB-INF/view/pwCheckChange.jsp";
		}
	}

	private String trim(String str) {
		return str == null ? null : str.trim();
	}
}
