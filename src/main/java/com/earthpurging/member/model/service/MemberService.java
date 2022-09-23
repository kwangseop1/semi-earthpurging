package com.earthpurging.member.model.service;

import java.sql.Connection;

import com.earthpurging.member.model.dao.MemberDao;
import com.earthpurging.member.model.vo.Member;

import common.JDBCTemplate;

public class MemberService {
	private MemberDao dao;

	public MemberService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new MemberDao();
	}

	public Member selectOneMember(Member member) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = dao.selectOneMember(conn, member);
		JDBCTemplate.close(conn);
		return m;
	}

	public Member selectOneMember(String memberId) {
		Connection conn = JDBCTemplate.getConnection();

		Member m = dao.selectOneMember(conn, memberId);

		JDBCTemplate.close(conn);

		return m;
	}


	public boolean selectOneMemberWhereNickname(String nickname) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = dao.selectOneMemberWhereNickname(conn, nickname);

		JDBCTemplate.close(conn);

		return result;
	}

	public int insertMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		int result = dao.insertMember(conn, m);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);

		return result;
	}
}
