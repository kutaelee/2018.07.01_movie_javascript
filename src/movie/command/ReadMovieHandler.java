package movie.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.service.MovieContentNotFoundException;
import movie.service.MovieData;
import movie.service.MovieNotFoundException;
import movie.service.ReadMovieService;
import mvc.command.CommandHandler;

public class ReadMovieHandler implements CommandHandler {

	private ReadMovieService readService = new ReadMovieService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		String noVal = req.getParameter("no");
		int movieNum = Integer.parseInt(noVal);
		try {
			MovieData movieData = readService.getMovie(movieNum, true);
			req.setAttribute("movieData", movieData);
			return "/WEB-INF/view/movie/readMovie.jsp";
		} catch (MovieNotFoundException | MovieContentNotFoundException e) {
			req.getServletContext().log("no movie", e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

}
