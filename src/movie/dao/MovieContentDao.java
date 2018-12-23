package movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import movie.model.MovieContent;
import jdbc.JdbcUtil;

public class MovieContentDao {

	public MovieContent insert(Connection conn, MovieContent content) 
	throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"insert into movie " + 
					"(mno, contents,video,picture,tag) values (?,?,?,?,?)");
			pstmt.setLong(1, content.getNumber());
			pstmt.setString(2, content.getContent());
			pstmt.setString(3, content.getVideo());
			pstmt.setString(4, content.getPicture());
			pstmt.setString(5,content.getTag());
			int insertedCount = pstmt.executeUpdate();
			if (insertedCount > 0) {
				return content;
			} else {
				return null;
			}
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	public MovieContent selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from movie where mno = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			MovieContent content = null;
			if (rs.next()) {
				content = new MovieContent(
						rs.getInt("mno"), rs.getString("contents"),rs.getString("video"),rs.getString("picture"),rs.getString("tag"));
			}
			return content;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int update(Connection conn, int no, String content,String video,String picture,String tag) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement(
						"update movie set contents = ?,video=?,picture=?,tag=?"+
						"where mno = ?")) {
			pstmt.setString(1, content);
			pstmt.setString(2, video);
			pstmt.setString(3, picture);
			pstmt.setString(4, tag);
			pstmt.setInt(5, no);
			return pstmt.executeUpdate();
		}
	}
}
