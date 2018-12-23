package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import member.model.Member;

public class MemberDao {

	public Member selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from member where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Member member = null;
			if (rs.next()) {
				member = new Member(rs.getString("id"), rs.getString("pw"), rs.getString("name"), rs.getString("email"),
						rs.getString("addr"), rs.getString("phone"));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	// �떆媛꾩궫�엯, �슦由щ뒗 �븞�� �굹以묒뿉 �벝吏��룄?

	/*
	 * private Date toDate(Timestamp date) { return date == null ? null : new
	 * Date(date.getTime()); }
	 */

	public void insert(Connection conn, Member mem) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?)")) {
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPw());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getEmail());
			pstmt.setString(5, mem.getAddr());
			pstmt.setString(6, mem.getPhone());

			pstmt.executeUpdate();
		}
	}

	// 諛붽��닔 �엳�뒗 媛쒖씤�젙蹂� 醫낅쪟�뒗 �븘吏� �븞�젙�뻽�뒗�뜲
	public void update(Connection conn, Member mem) throws SQLException {
		try (PreparedStatement pstmt = conn
				.prepareStatement("update member set name = ?, pw = ? ,email=?, addr=?, phone=? where id = ?")) {
			pstmt.setString(6, mem.getId());
			pstmt.setString(2, mem.getPw());
			pstmt.setString(1, mem.getName());
			pstmt.setString(3, mem.getEmail());
			pstmt.setString(4, mem.getAddr());
			pstmt.setString(5, mem.getPhone());
			pstmt.executeUpdate();

		}
	}

	public String idCheck(Connection conn, String name, String phone) throws SQLException {
		String sql = "select id from member where name = ? and phone = ?";
		ResultSet rs = null;
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString("id");
			} else {
				return null;
			}

		} finally {
			JdbcUtil.close(rs);

		}
	}

	public boolean pwChangeCheck(Connection conn, String id, String phone) throws SQLException {
		String sql = "select id,phone from member where id = ? and phone =?";
		ResultSet rs = null;
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("id").equals(id) && rs.getString("phone").equals(phone)) {

					return true;
				} else {
					return false;
				}
			} else {

				return false;
			}
		}finally{
			JdbcUtil.close(rs);
		}
	}

	public void pastPwdChange(Connection conn, String id, String password) throws SQLException {
		String sql = "update member set pw = ? where id = ? ";
		try (PreparedStatement psmt = conn.prepareStatement(sql)) {
			psmt.setString(1, password);
			psmt.setString(2, id);
			psmt.executeUpdate();

		}
	}
}
