package movie.service;

import java.sql.Connection;
import java.sql.SQLException;

import movie.dao.MovieContentDao;
import movie.dao.MovieDao;
import movie.model.Movie;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ModifyMovieService {

	private MovieDao MovieDao = new MovieDao();
	private MovieContentDao contentDao = new MovieContentDao();

	public void modify(ModifyRequest modReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Movie movie = MovieDao.selectById(conn, 
					modReq.getMovieNumber());
			if (movie == null) {
				throw new MovieNotFoundException();
			}
			/*if (!canModify(modReq.getUserId(), movie)) {
				throw new PermissionDeniedException();
			}*/
			MovieDao.update(conn, 
					modReq.getMovieNumber(), modReq.getTitle());
			contentDao.update(conn, 
					modReq.getMovieNumber(), modReq.getContent(),modReq.getVideo(),modReq.getPicture(),modReq.getTag());
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

	/*private boolean canModify(String modfyingUserId, Movie Movie) {
		return Movie.getWriter().getId().equals(modfyingUserId);
	}*/
}
