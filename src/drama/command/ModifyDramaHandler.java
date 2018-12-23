package drama.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import drama.service.DramaData;
import drama.service.DramaNotFoundException;
import drama.service.ModifyDramaService;
import drama.service.ModifyRequest;
import drama.service.PermissionDeniedException;
import drama.service.ReadDramaService;
import auth.service.User;
import mvc.command.CommandHandler;

public class ModifyDramaHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/drama/modifyForm.jsp";

	private ReadDramaService readService = new ReadDramaService();
	private ModifyDramaService modifyService = new ModifyDramaService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		try {
			String noVal = req.getParameter("no");
			int no = Integer.parseInt(noVal);
			DramaData dramaData = readService.getDrama(no, false);
		/*	User authUser = (User) req.getSession().getAttribute("authUser");
			if (!canModify(authUser, dramaData)) {
				res.sendError(HttpServletResponse.SC_FORBIDDEN);
				return null;
			}*/
			ModifyRequest modReq = new ModifyRequest(no,
					dramaData.getDrama().getTitle(),
					dramaData.getContent(),dramaData.getDrama().getVideo(),dramaData.getDrama().getPicture(),dramaData.getDrama().getTag());

			req.setAttribute("modReq", modReq);
			return FORM_VIEW;
		} catch (DramaNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

/*	private boolean canModify(User authUser, DramaData dramaData) {
		String writerId = dramaData.getDrama().getWriter().getId();
		return authUser.getId().equals(writerId);
	}
*/
	private String processSubmit(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		User authUser = (User) req.getSession().getAttribute("authUser");
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);

		ModifyRequest modReq = new ModifyRequest(no,
				req.getParameter("title"),
				req.getParameter("content"),req.getParameter("video"),req.getParameter("picture"),req.getParameter("tag"));
		req.setAttribute("modReq", modReq);

		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		modReq.validate(errors);
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			modifyService.modify(modReq);
			return "/WEB-INF/view/drama/modifySuccess.jsp";
		} catch (DramaNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
