package auth.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.Movie;
import movie.service.ListMovieService;
import movie.service.MoviePage;
import mvc.command.CommandHandler;

public class MovieHandler implements CommandHandler {
	private ListMovieService listService = new ListMovieService();
	private static final String FORM_VIEW = "/WEB-INF/view/movie.jsp";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET"))
				return processSubmit(req, res);
		else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		}
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		
		System.out.println("movie Handler 진입");
		String pageNoVal = req.getParameter("pageNo");
		String tag[]=new String[6];
		tag[0]="공포";
	
		System.out.println("tag: " + tag[0] + "/ pageNo:" + pageNoVal);
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		
		MoviePage moviePage = listService.getMoviePage(pageNo, tag[0]);
		req.getSession().setAttribute("moviePage", moviePage);
		//req.setAttribute("moviePage", moviePage);
/*		List<Movie> contents = moviePage.getContent();
		System.out.println(contents.get(0).getPicture());*/
		return FORM_VIEW;
	}
}
