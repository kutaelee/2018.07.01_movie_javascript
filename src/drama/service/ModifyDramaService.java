package drama.service;

import java.sql.Connection;
import java.sql.SQLException;

import drama.dao.DramaContentDao;
import drama.dao.DramaDao;
import drama.model.Drama;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ModifyDramaService {

	private DramaDao DramaDao = new DramaDao();
	private DramaContentDao contentDao = new DramaContentDao();

	public void modify(ModifyRequest modReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Drama drama = DramaDao.selectById(conn, 
					modReq.getDramaNumber());
			if (drama == null) {
				throw new DramaNotFoundException();
			}
			/*if (!canModify(modReq.getUserId(), drama)) {
				throw new PermissionDeniedException();
			}*/
			DramaDao.update(conn, 
					modReq.getDramaNumber(), modReq.getTitle());
			contentDao.update(conn, 
					modReq.getDramaNumber(), modReq.getContent(),modReq.getVideo(),modReq.getPicture(),modReq.getTag());
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	/*private boolean canModify(String modfyingUserId, Drama Drama) {
		return Drama.getWriter().getId().equals(modfyingUserId);
	}*/
}
