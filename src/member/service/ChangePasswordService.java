package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class ChangePasswordService {

	private MemberDao memberDao = new MemberDao();
	
	public Member changeinfo(String userId, String name, String email,String addr,String phone,String pw) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Member member = memberDao.selectById(conn, userId);
			if (member == null) {
				throw new MemberNotFoundException();
			}
		/*	if (!member.matchPassword(curPwd)) {
				throw new InvalidPasswordException();
			}*/
			member.changeinfo(name,email,addr,phone,pw);
			memberDao.update(conn, member);
			conn.commit();
			member=memberDao.selectById(conn, member.getId());
			System.out.println(member.getName());
			conn.commit();
			return member;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
