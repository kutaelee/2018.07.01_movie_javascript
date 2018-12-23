package drama.command;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import drama.model.Writer;
import drama.service.WriteDramaService;
import drama.service.WriteRequest;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

public class WriteDramaHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/drama/newDramaForm.jsp";
	private WriteDramaService writeService = new WriteDramaService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			//printPartInfo(req, res);
			return processForm(req, res);
			//return processSubmit(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			//printPartInfo(req, res);
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		//멤버 타입으로 선언했던 Session 변수를 사용.
		
		
		Member member = (Member)req.getSession(false).getAttribute("member");
		WriteRequest writeReq = createWriteRequest(member, req);
		writeReq.validate(errors);
		
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		int newArticleNo = writeService.write(writeReq);
		req.setAttribute("newArticleNo", newArticleNo);
		//printPartInfo(req, res);
		return "/drama/list.do";
	}
	/*private void printPartInfo(HttpServletRequest req, HttpServletResponse response)
			throws IOException, ServletException {
		Collection<Part> parts = req.getParts();
		for (Part part : parts) {
			if (part.getHeader("Content-Disposition").contains("filename=")) {
				String fileName = part.getSubmittedFileName();
				if (part.getSize() > 0) {
					part.write("c:\\temp\\" + fileName);
					part.delete();
				}
			} 
		}
	}*/
		
	private WriteRequest createWriteRequest(Member member, HttpServletRequest req) {
		return new WriteRequest(
				req.getParameter("title"),
				new Writer(member.getId(), member.getName()),
				req.getParameter("content"),
				req.getParameter("video"),
				req.getParameter("picture"),req.getParameter("tag"));
	}
}
