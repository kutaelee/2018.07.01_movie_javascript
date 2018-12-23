package drama.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import drama.model.DramaContent;
import jdbc.JdbcUtil;

public class DramaContentDao {

	public DramaContent insert(Connection conn, DramaContent content) 
	throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"insert into drama " + 
					"(dno, contents,video,picture,tag) values (?,?,?,?,?)");
			pstmt.setLong(1, content.getNumber());
			pstmt.setString(2, content.getContent());
			pstmt.setString(3, content.getVideo());
			pstmt.setString(4, content.getPicture());
			pstmt.setString(5, content.getTag());
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
	
	public DramaContent selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from drama where dno = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			DramaContent content = null;
			if (rs.next()) {
				content = new DramaContent(
						rs.getInt("dno"), rs.getString("contents"),rs.getString("video"),rs.getString("picture"),rs.getString("tag"));
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
						"update drama set contents = ?,video=?,picture=?,tag=? "+
						"where dno = ?")) {
			pstmt.setString(1, content);
			pstmt.setString(2, video);
			pstmt.setString(3, picture);
			pstmt.setString(4, tag);
			pstmt.setInt(5, no);
			return pstmt.executeUpdate();
		}
	}
}
