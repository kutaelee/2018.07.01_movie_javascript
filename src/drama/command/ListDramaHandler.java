package drama.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import drama.service.DramaPage;
import drama.service.ListDramaService;
import mvc.command.CommandHandler;

public class ListDramaHandler implements CommandHandler {

	private ListDramaService listService = new ListDramaService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		String pageNoVal = req.getParameter("pageNo");
		String tagVal=req.getParameter("tag");
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		//original
		/*DramaPage dramaPage = listService.getDramaPage(pageNo);
		req.setAttribute("dramaPage", dramaPage);*/
		if(tagVal!=null)
		{
		DramaPage dramaPage = listService.getDramaPage(pageNo,tagVal);
		req.setAttribute("dramaPage", dramaPage);
		
		//only tags
		/*DramaPage dramaTag = listService.getDramaTag(pageNo);
		req.setAttribute("dramaTag", dramaTag);*/
		return "/WEB-INF/view/drama/listDrama.jsp";
		}
		else
		{
		DramaPage dramaTag = listService.getDramaTag(pageNo);
		DramaPage dramaAll = listService.getDramaPage(pageNo);
		req.setAttribute("dramaTag", dramaTag);
		req.setAttribute("dramaAll", dramaAll);
		return "/WEB-INF/view/drama/listDrama2.jsp";
		}
	}

}
