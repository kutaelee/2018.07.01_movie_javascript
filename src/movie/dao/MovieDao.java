package movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import movie.model.Writer;
import movie.model.Movie;
import jdbc.JdbcUtil;

public class MovieDao {

	public Movie insert(Connection conn, Movie movie) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into movie "
					+ "(title,contents,video,picture,tag) "
					+ "values (?, ?,?, ?,?)");
			pstmt.setString(1, movie.getTitle());
			pstmt.setString(2, movie.getContent());
			pstmt.setString(3, movie.getVideo());
			pstmt.setString(4, movie.getPicture());
			pstmt.setString(5, movie.getTag());
			int insertedCount = pstmt.executeUpdate();

			if (insertedCount > 0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select last_insert_id() from movie");
				if (rs.next()) {
					Integer newNo = rs.getInt(1);
					return new Movie(newNo,
							movie.getTitle(),
							movie.getVideo(),
							movie.getPicture(),
							movie.getContent(),movie.getTag());
				}
			}
			return null;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from movie");
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	public List<Movie> select(Connection conn, int startRow, int size,String tag) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			pstmt = conn.prepareStatement(
					 "SELECT  * FROM movie where tag=? ORDER BY mno desc limit ?, ?");
			pstmt.setString(1,tag);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, size);
		
			rs = pstmt.executeQuery();
			List<Movie> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertMovie(rs));
				
			}
		
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Movie convertMovie(ResultSet rs) throws SQLException {
		return new Movie(rs.getInt("MNO"),
				rs.getString("TITLE"),
				rs.getString("CONTENTS"),
				rs.getString("VIDEO"),
				rs.getString("PICTURE"),rs.getString("TAG"));
	}

	private Date toDate(Timestamp timestamp) {
		return new Date(timestamp.getTime());
	}
	
	public Movie selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from movie where mno = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Movie movie = null;
			if (rs.next()) {
				movie = convertMovie(rs);
			}
			return movie;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int update(Connection conn, int no, String title) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement(
						"update movie set TITLE = ?"+
						"where mno= ?")) {
			pstmt.setString(1, title);
			pstmt.setInt(2, no);
			return pstmt.executeUpdate();
		}
	}
	
	public void delete(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		try{
			String sql = "delete from movie where mno= ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			pstmt.executeUpdate();
		}finally{
			JdbcUtil.close(pstmt);
		}
		
	}
		
}
