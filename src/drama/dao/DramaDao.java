package drama.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import drama.model.Writer;
import drama.model.Drama;
import jdbc.JdbcUtil;

public class DramaDao {

	public Drama insert(Connection conn, Drama drama) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into drama "
					+ "(title,contents,video,picture,tag) "
					+ "values (?, ?,?, ?,?)");
			pstmt.setString(1, drama.getTitle());
			pstmt.setString(2, drama.getContent());
			pstmt.setString(3, drama.getVideo());
			pstmt.setString(4, drama.getPicture());
			pstmt.setString(5, drama.getTag());
			int insertedCount = pstmt.executeUpdate();

			if (insertedCount > 0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select last_insert_id() from drama");
				if (rs.next()) {
					Integer newNo = rs.getInt(1);
					return new Drama(newNo,
							drama.getTitle(),
							drama.getVideo(),
							drama.getPicture(),
							drama.getContent(),drama.getTag());
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
			rs = stmt.executeQuery("select count(*) from drama");
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	public List<Drama> select(Connection conn, int startRow, int size) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			pstmt = conn.prepareStatement(
					 "SELECT @no:=@no+1 AS no,dno,title,contents,video,picture,tag FROM drama, (SELECT @no:=0) drama ORDER BY dno desc,no desc limit ?, ?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, size);
			rs = pstmt.executeQuery();
			List<Drama> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertDrama(rs));
				
			}
		
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Drama> select(Connection conn, int startRow, int size,String tagVal) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			pstmt = conn.prepareStatement(
					 "SELECT @no:=@no+1 AS no,dno,title,contents,video,picture,tag FROM drama, (SELECT @no:=0) drama where tag=? ORDER BY dno desc,no desc limit ?, ? ");
			pstmt.setString(1,tagVal);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, size);
			
			rs = pstmt.executeQuery();
			List<Drama> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertDrama(rs));
			}
		
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Drama> select2(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			pstmt = conn.prepareStatement(
					 "SELECT DISTINCT tag FROM drama ");
			
			rs = pstmt.executeQuery();
			List<Drama> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertDrama2(rs));
			}
		
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	public List<Drama> select3(Connection conn, int startRow, int size) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			pstmt = conn.prepareStatement(
					 "SELECT @no:=@no+1 AS no,dno,title,contents,video,picture,tag FROM drama, (SELECT @no:=0) drama ORDER BY dno desc,no desc limit ?, ? where tag=?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, size);
			rs = pstmt.executeQuery();
			List<Drama> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertDrama(rs));
				
			}
		
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	private Drama convertDrama(ResultSet rs) throws SQLException {
		return new Drama(rs.getInt("DNO"),
				rs.getString("TITLE"),
				rs.getString("CONTENTS"),
				rs.getString("VIDEO"),
				rs.getString("PICTURE"),rs.getString("TAG"));
	}
	private Drama convertDrama2(ResultSet rs) throws SQLException {
		return new Drama(rs.getString("TAG"));
	}

	private Date toDate(Timestamp timestamp) {
		return new Date(timestamp.getTime());
	}
	
	public Drama selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from drama where dno = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Drama drama = null;
			if (rs.next()) {
				drama = convertDrama(rs);
			}
			return drama;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int update(Connection conn, int no, String title) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement(
						"update drama set TITLE = ?"+
						"where dno= ?")) {
			pstmt.setString(1, title);
			pstmt.setInt(2, no);
			return pstmt.executeUpdate();
		}
	}
	
	public void delete(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		try{
			String sql = "delete from drama where dno= ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,no);
			pstmt.executeUpdate();
		}finally{
			JdbcUtil.close(pstmt);
		}
		
	}
		
}
