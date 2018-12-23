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
public class Index implements CommandHandler {
	//硫붿씤 �럹�씠吏� �젙�쟻 蹂��닔濡� �꽑�뼵
	private static final String FORM_VIEW = "/WEB-INF/view/index2.jsp";
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
			return processForm(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}
}
