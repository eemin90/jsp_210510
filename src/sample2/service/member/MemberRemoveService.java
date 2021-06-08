package sample2.service.member;

import java.sql.Connection;

import sample2.dao.BoardDao;
import sample2.dao.MemberDao;
import sample2.util.DBConnection;

public class MemberRemoveService {
	
	private BoardDao bdao = null;
	private MemberDao mdao = null;
	
	public MemberRemoveService() {
		this.bdao = new BoardDao();
		this.mdao = new MemberDao();
	}
	
	public void remove(String id) {
		Connection con = null;
		try {
			con = DBConnection.getConnection();
			con.setAutoCommit(false); // auto commit을 off
			
			this.bdao.removeByMember(id, con); // member id의 foreign key인 board memberId를 먼저 삭제
			this.mdao.remove(id, con);
			
			con.commit(); // 위 메소드 2개가 전부 실행에 성공하면 commit
		} catch (Exception e) {
			e.printStackTrace();
			DBConnection.rollback(con); // 오류가 나는 경우는 rollback
		} finally {
			DBConnection.close(con); // 사용 후 connection을 close
		}
	}
}
