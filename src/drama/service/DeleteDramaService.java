package drama.service;

import java.sql.Connection;
import java.sql.SQLException;

import drama.dao.DramaContentDao;
import drama.dao.DramaDao;
import drama.model.Drama;
import auth.service.User;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.model.Member;

public class DeleteDramaService {

	private DramaDao dramaDao = new DramaDao();
	private DramaContentDao contentDao = new DramaContentDao();

	public void delete(int no) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		
		dramaDao.delete(conn, no);
	}
	
	

	/*private boolean canModify(String modfyingUserId, Drama drama) {
		return drama.getWriter().getId().equals(modfyingUserId);
	}*/
}
