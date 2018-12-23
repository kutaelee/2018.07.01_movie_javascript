package drama.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import drama.dao.DramaContentDao;
import drama.dao.DramaDao;
import drama.model.Drama;
import drama.model.DramaContent;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteDramaService {

	private DramaDao DramaDao = new DramaDao();
	private DramaContentDao contentDao = new DramaContentDao();

	public Integer write(WriteRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Drama Drama = toDrama(req);
			Drama savedDrama = DramaDao.insert(conn, Drama);
			if (savedDrama == null) {
				throw new RuntimeException("fail to insert Drama");
			}

			conn.commit();

			return savedDrama.getNumber();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private Drama toDrama(WriteRequest req) {
		return new Drama(null,req.getTitle(),req.getContent(),req.getVideo(),req.getPicture(),req.getTag());
	}
}
