package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import auth.service.User;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.model.Member;

public class DeleteArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();

	public void delete(int no) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		
		articleDao.delete(conn, no);
	}
	
	

	private boolean canModify(String modfyingUserId, Article article) {
		return article.getWriter().getId().equals(modfyingUserId);
	}
}
