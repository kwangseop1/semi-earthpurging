package com.earthpurging.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.earthpurging.member.model.vo.Member;

import common.JDBCTemplate;


public class MemberDao {

	public Member selectOneMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		String query = "select * from member_tbl where member_id=? and member_pw=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member();
				m.setMemberNo(rset.getInt("member_no"));
				m.setMemberId(rset.getString("member_id"));
				m.setMemberPw(rset.getString("member_pw"));
				m.setMemberName(rset.getString("member_name"));
				m.setMemberPhone(rset.getString("member_phone"));
				m.setMemberAddr(rset.getString("member_addr"));
				m.setMemberEmail(rset.getString("member_email"));
				m.setMemberLevel(rset.getInt("member_level"));
				m.setMemberBirth(rset.getString("member_birth"));
				m.setNickname(rset.getString("nickname"));
				m.setEnrollDate(rset.getString("enroll_date"));
				m.setTotalPoint(rset.getInt("total_point"));
				m.setMemberIntro(rset.getString("member_intro"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return m;
	}

	public Member selectOneMember(Connection conn, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		String query = "select * from member_tbl where member_id=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
//			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member();
				m.setMemberNo(rset.getInt("member_no"));
				m.setMemberId(rset.getString("member_id"));
				m.setMemberPw(rset.getString("member_pw"));
				m.setMemberName(rset.getString("member_name"));
				m.setMemberPhone(rset.getString("member_phone"));
				m.setMemberAddr(rset.getString("member_addr"));
				m.setMemberEmail(rset.getString("member_email"));
				m.setMemberLevel(rset.getInt("member_level"));
				m.setMemberBirth(rset.getString("member_birth"));
				m.setNickname(rset.getString("nickname"));
				m.setEnrollDate(rset.getString("enroll_date"));
				m.setTotalPoint(rset.getInt("total_point"));
				m.setMemberIntro(rset.getString("member_intro"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return m;
	}


	public boolean selectOneMemberWhereNickname(Connection conn, String nickname) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select * from member_tbl where nickname=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, nickname);
			rset = pstmt.executeQuery();

			result = rset.next();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return result;
	}

	public int insertMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into member_tbl values(member_seq.nextval, ?, ?, ?, ?, ?, ?, 3, ?, ?, to_char(sysdate, 'yyyy-mm-dd'), 0, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberPw());
			pstmt.setString(3, m.getMemberName());
			pstmt.setString(4, m.getMemberPhone());
			pstmt.setString(5, m.getMemberAddr());
			pstmt.setString(6, m.getMemberEmail());
			pstmt.setString(7, m.getMemberBirth());
			pstmt.setString(8,m.getNickname());
			pstmt.setString(9, m.getMemberIntro());

			result = pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}

		return result;
	}
}
