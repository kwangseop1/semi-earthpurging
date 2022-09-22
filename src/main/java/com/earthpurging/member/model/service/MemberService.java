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
	
	
}
