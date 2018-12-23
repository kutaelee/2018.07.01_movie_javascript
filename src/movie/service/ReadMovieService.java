package movie.service;

import java.sql.Connection;
import java.sql.SQLException;

import movie.dao.MovieContentDao;
import movie.dao.MovieDao;
import movie.model.Movie;
import movie.model.MovieContent;
import jdbc.connection.ConnectionProvider;

public class ReadMovieService {

	private MovieDao movieDao = new MovieDao();
	private MovieContentDao contentDao = new MovieContentDao();
	
	public MovieData getMovie(int movieNum, boolean increaseReadCount) {
		try (Connection conn = ConnectionProvider.getConnection()){
			Movie movie = movieDao.selectById(conn, movieNum);
			if (movie == null) {
				throw new MovieNotFoundException();
			}
			MovieContent content = contentDao.selectById(conn,movieNum);
			if (content == null) {
				throw new MovieContentNotFoundException();
			}
			return new MovieData(movie, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
