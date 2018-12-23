package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import member.dao.MemberDao;
import member.model.Member;
import member.service.ChangePasswordService;
import member.service.InvalidPasswordException;
import member.service.MemberNotFoundException;
import mvc.command.CommandHandler;

public class ChangePasswordHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/memberModify.jsp";
	//member.service
	private ChangePasswordService changePwdSvc = new ChangePasswordService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
	throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}


	private String processSubmit(HttpServletRequest req, HttpServletResponse res)
	throws Exception {
		Member member = (Member)req.getSession().getAttribute("member");
			
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		String name = req.getParameter("name");
		String email= req.getParameter("email");
		String addr = req.getParameter("addr");
		String phone = req.getParameter("phone");
		String pw = req.getParameter("pw");
		
		if (name == null || name.isEmpty()) {
			errors.put("name", Boolean.TRUE);
		}
		if (email == null || email.isEmpty()) {
			errors.put("email", Boolean.TRUE);
		}
	
		if (addr == null || addr.isEmpty()) {
			errors.put("addr", Boolean.TRUE);
		}
	
		if (phone == null || phone.isEmpty()) {
			errors.put("phone", Boolean.TRUE);
		}
		if (pw == null || pw.isEmpty()) {
			errors.put("pw", Boolean.TRUE);
		}
	
	
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		try {
			member=changePwdSvc.changeinfo(member.getId(), name, email,addr,phone,pw);
			req.getSession().setAttribute("member", member);
			return "/WEB-INF/view/changeinfoSuccess.jsp";
		} /*catch (InvalidPasswordException e) {
			errors.put("badCurPwd", Boolean.TRUE);
			return FORM_VIEW;} */
 			catch (MemberNotFoundException e) {
			res.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return null;
		}
	}

}
