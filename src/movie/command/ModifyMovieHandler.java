package movie.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.service.MovieData;
import movie.service.MovieNotFoundException;
import movie.service.ModifyMovieService;
import movie.service.ModifyRequest;
import movie.service.PermissionDeniedException;
import movie.service.ReadMovieService;
import auth.service.User;
import mvc.command.CommandHandler;

public class ModifyMovieHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/movie/modifyForm.jsp";

	private ReadMovieService readService = new ReadMovieService();
	private ModifyMovieService modifyService = new ModifyMovieService();

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
			MovieData movieData = readService.getMovie(no, false);
		/*	User authUser = (User) req.getSession().getAttribute("authUser");
			if (!canModify(authUser, movieData)) {
				res.sendError(HttpServletResponse.SC_FORBIDDEN);
				return null;
			}*/
			ModifyRequest modReq = new ModifyRequest(no,
					movieData.getMovie().getTitle(),
					movieData.getContent(),movieData.getMovie().getVideo(),movieData.getMovie().getPicture(),movieData.getMovie().getTag());

			req.setAttribute("modReq", modReq);
			return FORM_VIEW;
		} catch (MovieNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

/*	private boolean canModify(User authUser, MovieData movieData) {
		String writerId = movieData.getMovie().getWriter().getId();
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
			return "/WEB-INF/view/movie/modifySuccess.jsp";
		} catch (MovieNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
