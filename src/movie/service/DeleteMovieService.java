package movie.service;

import java.sql.Connection;
import java.sql.SQLException;

import movie.dao.MovieContentDao;
import movie.dao.MovieDao;
import movie.model.Movie;
import auth.service.User;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.model.Member;

public class DeleteMovieService {

	private MovieDao movieDao = new MovieDao();
	private MovieContentDao contentDao = new MovieContentDao();

	public void delete(int no) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		
		movieDao.delete(conn, no);
	}
	
	

	/*private boolean canModify(String modfyingUserId, Movie movie) {
		return movie.getWriter().getId().equals(modfyingUserId);
	}*/
}
