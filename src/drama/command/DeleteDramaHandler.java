package drama.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import drama.service.DramaNotFoundException;
import drama.service.DeleteDramaService;
import drama.service.ModifyDramaService;
import drama.service.ModifyRequest;
import drama.service.PermissionDeniedException;
import drama.service.ReadDramaService;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

public class DeleteDramaHandler implements CommandHandler {
	private static final String FORM_VIEW = "/drama/list.do";
	private DeleteDramaService deleteService = new DeleteDramaService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processSubmit(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return FORM_VIEW;
		} else
			return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String noVal = req.getParameter("no");
		System.out.println("noVal=" + noVal);
		int no = Integer.parseInt(noVal);
		try {
			// modifyService.modify(modReq);
			// return "/WEB-INF/view/modifySuccess.jsp";
			deleteService.delete(no);
			return FORM_VIEW;
		} catch (DramaNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
