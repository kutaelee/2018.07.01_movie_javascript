package movie.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.service.MovieNotFoundException;
import movie.service.DeleteMovieService;
import movie.service.ModifyMovieService;
import movie.service.ModifyRequest;
import movie.service.PermissionDeniedException;
import movie.service.ReadMovieService;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

public class DeleteMovieHandler implements CommandHandler {
	private static final String FORM_VIEW = "/movie/list.do";
	private DeleteMovieService deleteService = new DeleteMovieService();

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
		} catch (MovieNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
