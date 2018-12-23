package article.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.ArticleData;
import article.service.ArticleNotFoundException;
import article.service.ModifyArticleService;
import article.service.ModifyRequest;
import article.service.PermissionDeniedException;
import article.service.ReadArticleService;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

public class ModifyArticleHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/modifyForm.jsp";

	private ReadArticleService readService = new ReadArticleService();
	private ModifyArticleService modifyService = new ModifyArticleService();

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
	//readArticle 에서 글 수정 클릭 시 GET방식으로 실행 
	private String processForm(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		try {
			String noVal = req.getParameter("no");
			int no = Integer.parseInt(noVal);
			ArticleData articleData = readService.getArticle(no, false);
			Member memberUser = (Member) req.getSession().getAttribute("member");
			if (!canModify(memberUser, articleData)) {
				res.sendError(HttpServletResponse.SC_FORBIDDEN);
				return null;
			}
			//수정 요청 용의 ModifyRequest 객체에 정보 저장.
			ModifyRequest modReq = new ModifyRequest(memberUser.getId(), no,
					articleData.getArticle().getTitle(),
					articleData.getContent());

			req.setAttribute("modReq", modReq);
			System.out.println(modReq.getArticleNumber()+modReq.getTitle());
			return FORM_VIEW;
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}
	//작성자와 사용자 ID가 같은 지
	private boolean canModify(Member memberUser, ArticleData articleData) {
		String writerId = articleData.getArticle().getWriter().getId();
		return memberUser.getId().equals(writerId);
	}
	//modifyForm 에서 수정 확인을 누를 시 POST 방식으로 실행
	private String processSubmit(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		Member memberUser = (Member) req.getSession().getAttribute("member");
		String noVal = req.getParameter("hell");
		System.out.println(noVal);
		int no = Integer.parseInt(noVal);

		ModifyRequest modReq = new ModifyRequest(memberUser.getId(), no,
				req.getParameter("modifiedtitle"),
				req.getParameter("modifiedcontent"));
		req.setAttribute("modReq", modReq);

		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		modReq.validate(errors);
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			modifyService.modify(modReq);
			return "/qnaboard/article/read.do?qano="+no;
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}
}
