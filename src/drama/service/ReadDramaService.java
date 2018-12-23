package drama.service;

import java.sql.Connection;
import java.sql.SQLException;

import drama.dao.DramaContentDao;
import drama.dao.DramaDao;
import drama.model.Drama;
import drama.model.DramaContent;
import jdbc.connection.ConnectionProvider;

public class ReadDramaService {

	private DramaDao dramaDao = new DramaDao();
	private DramaContentDao contentDao = new DramaContentDao();
	
	public DramaData getDrama(int dramaNum, boolean increaseReadCount) {
		try (Connection conn = ConnectionProvider.getConnection()){
			Drama drama = dramaDao.selectById(conn, dramaNum);
			if (drama == null) {
				throw new DramaNotFoundException();
			}
			DramaContent content = contentDao.selectById(conn,dramaNum);
			if (content == null) {
				throw new DramaContentNotFoundException();
			}
			return new DramaData(drama, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
