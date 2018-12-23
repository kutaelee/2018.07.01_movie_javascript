package movie.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.service.MoviePage;
import movie.service.ListMovieService;
import mvc.command.CommandHandler;

public class ListMovieHandler implements CommandHandler {

	private ListMovieService listService = new ListMovieService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return processForm(req, res);
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		String pageNoVal = req.getParameter("pageNo");
		String tag=req.getParameter("tag");
		System.out.println("tag: " + tag + "/ pageNo:" + pageNoVal);
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		MoviePage moviePage = listService.getMoviePage(pageNo,tag);
		req.setAttribute("moviePage", moviePage);
		return "/WEB-INF/view/movie.jsp";
}
}
