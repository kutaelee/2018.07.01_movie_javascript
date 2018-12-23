package auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class IdCheckService {

	private MemberDao memberDao = new MemberDao();

	public String check(String name, String phone) {
		try (Connection conn = ConnectionProvider.getConnection()) {

			return memberDao.idCheck(conn, name, phone);

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public boolean PwChangevalidate(String id, String phone) throws SQLException {
		try (Connection conn = ConnectionProvider.getConnection()) {
			if (memberDao.pwChangeCheck(conn, id, phone)) {
				return true;
			} else {
				return false;
			}
		}

	}

	public void PwdChange(String pwd, String id) throws SQLException {
		try (Connection conn = ConnectionProvider.getConnection()) {
			memberDao.pastPwdChange(conn, id, pwd);

		}
	}
}
