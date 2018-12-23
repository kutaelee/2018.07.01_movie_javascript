package auth.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.LoginFailException;
import auth.service.LoginService;
import auth.service.User;
import member.model.Member;
import mvc.command.CommandHandler;

//濡쒓렇�씤 �빖�뱾�윭
public class LoginHandler implements CommandHandler {
	//硫붿씤 �럹�씠吏� �젙�쟻 蹂��닔濡� �꽑�뼵
	private static final String FORM_VIEW = "/WEB-INF/view/loginFail.jsp";
	private static final String FORM_VIEW2 = "/WEB-INF/view/loginForm.jsp";
	// Dao瑜� �넻�븳 泥섎━瑜� �쐞�븳 �꽌鍮꾩뒪 �꽑�뼵
	private LoginService loginService = new LoginService();

	//CommandHandler Interface�쓽 process瑜� �븘�닔濡� �삤踰꾨씪�씠�뵫.
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
	throws Exception {
		//GET �씪 寃쎌슦 processForm
		if (req.getMethod().equalsIgnoreCase("GET")) {
			//processForm�� index2.jsp濡쒕쭔 �씠�룞 �떆耳쒖��떎.
			return processForm(req, res);			
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			//header.jsp �쓽 濡쒓렇�씤 �뤌�뿉�꽌 POST 諛⑹떇�쑝濡� 諛쏆쓬
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW2;
	}
	//濡쒓렇�씤 泥섎━
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) 
	throws Exception {
		String id = trim(req.getParameter("id"));
		String pw = trim(req.getParameter("password"));

		//�뿉�윭 泥섎━
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		if (id == null || id.isEmpty())
			errors.put("id", Boolean.TRUE);
		if (pw == null || pw.isEmpty())
			errors.put("pw", Boolean.TRUE);

		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}

		try {
			//member �겢�옒�뒪濡� 諛쏅뒗�떎.
			Member member = loginService.login(id, pw);
			//member �겢�옒�뒪 ���엯�쑝濡� "member" Session 蹂��닔 �꽑�뼵
			//�겢�옒�뒪 ���엯�씠誘�濡� jsp�뿉�꽌�뒗 ${member.id} 諛⑹떇�쑝濡� 爰쇰궡�꽌 �궗�슜
			req.getSession().setAttribute("member", member);
			//index.do濡� 蹂대깂.
			res.sendRedirect("index.do");
			
			//濡쒓렇�씤 �꽦怨듭떆 Console�뿉 �몴�떆
			System.out.println("濡쒓렇�씤 �꽦怨�");
			System.out.println("user : "+member.getId());
			return null;
		} catch (LoginFailException e) {
			errors.put("idOrPwNotMatch", Boolean.TRUE);
			System.out.println("濡쒓렇�씤�떎�뙣"+e);
			return FORM_VIEW;
		}
	}

	private String trim(String str) {
		return str == null ? null : str.trim();
	}
}
