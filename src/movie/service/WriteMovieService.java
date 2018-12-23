package movie.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import movie.dao.MovieContentDao;
import movie.dao.MovieDao;
import movie.model.Movie;
import movie.model.MovieContent;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteMovieService {

	private MovieDao MovieDao = new MovieDao();
	private MovieContentDao contentDao = new MovieContentDao();

	public Integer write(WriteRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Movie Movie = toMovie(req);
			Movie savedMovie = MovieDao.insert(conn, Movie);
			if (savedMovie == null) {
				throw new RuntimeException("fail to insert Movie");
			}

			conn.commit();

			return savedMovie.getNumber();
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

	private Movie toMovie(WriteRequest req) {
		return new Movie(null,req.getTitle(),req.getContent(),req.getVideo(),req.getPicture(),req.getTag());
	}
}
