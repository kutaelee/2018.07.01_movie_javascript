package drama.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import drama.dao.DramaDao;
import drama.model.Drama;
import jdbc.connection.ConnectionProvider;

public class ListDramaService {

	private DramaDao dramaDao = new DramaDao();
	private int size = 10000;

	public DramaPage getDramaPage(int pageNum) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			int total = dramaDao.selectCount(conn);
			List<Drama> content = dramaDao.select(
					conn, (pageNum - 1) * size, size);
			return new DramaPage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public DramaPage getDramaPage(int pageNum,String tagVal) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			int total = dramaDao.selectCount(conn);
			List<Drama> content = dramaDao.select(
					conn, (pageNum - 1) * size, size,tagVal);
			return new DramaPage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public DramaPage getDramaTag(int pageNum) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			int total = dramaDao.selectCount(conn);
			
			List<Drama> content = dramaDao.select2(conn);
			
			return new DramaPage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
