package drama.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import drama.service.DramaContentNotFoundException;
import drama.service.DramaData;
import drama.service.DramaNotFoundException;
import drama.service.ReadDramaService;
import mvc.command.CommandHandler;

public class ReadDramaHandler implements CommandHandler {

	private ReadDramaService readService = new ReadDramaService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		String noVal = req.getParameter("no");
		int dramaNum = Integer.parseInt(noVal);
		try {
			DramaData dramaData = readService.getDrama(dramaNum, true);
			req.setAttribute("dramaData", dramaData);
			return "/WEB-INF/view/drama/readDrama.jsp";
		} catch (DramaNotFoundException | DramaContentNotFoundException e) {
			req.getServletContext().log("no drama", e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

}
