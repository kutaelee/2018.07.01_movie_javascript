package movie.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import movie.dao.MovieDao;
import movie.model.Movie;
import jdbc.connection.ConnectionProvider;

public class ListMovieService {

	private MovieDao movieDao = new MovieDao();
	private int size = 10;

	public MoviePage getMoviePage(int pageNum,String tag) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			int total = movieDao.selectCount(conn);

			List<Movie> content = movieDao.select(
					conn, (pageNum - 1) * size, size,tag);
			return new MoviePage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
