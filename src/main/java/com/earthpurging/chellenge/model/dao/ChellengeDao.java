package com.earthpurging.chellenge.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.earthpurging.chellenge.model.vo.Chellenge;
import com.earthpurging.chellenge.model.vo.ChellengeInfo;
import com.earthpurging.member.model.vo.Member;

import common.JDBCTemplate;

public class ChellengeDao {

	public int insertChellenge(Connection conn, Chellenge chellenge) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query ="insert into chellenge_list values(CHELLENGE_SEQ.nextval,?,?,?,?,?,?,?,?,to_char(sysdate,'yyyy-mm-dd'),?,?,'N',?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, chellenge.getQuestArea());
			pstmt.setInt(2, chellenge.getQuestCan());
			pstmt.setInt(3, chellenge.getQuestPla());
			pstmt.setInt(4, chellenge.getQuestGlass());
			pstmt.setInt(5, chellenge.getQuestPaper());
			pstmt.setInt(6, chellenge.getQuestWrapper());
			pstmt.setInt(7, chellenge.getQuestTabacoo());
			pstmt.setInt(8, 
					 chellenge.getQuestCan()*3
					+chellenge.getQuestPla()*3
					+chellenge.getQuestGlass()*2
					+chellenge.getQuestPaper()*2
					+chellenge.getQuestWrapper()*1
					+chellenge.getQuestTabacoo()*1);
			pstmt.setString(9, chellenge.getPhotopath());
			pstmt.setInt(10, chellenge.getqMemberNo());
			pstmt.setString(11, chellenge.getMemberThink());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int insertChellenge(Connection conn, ChellengeInfo ci) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into chellengeinfo values(CHELLENGEINFO_SEQ.nextval,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ci.getChellengeName());
			pstmt.setString(2, ci.getChellengePhone());
			pstmt.setString(3, ci.getChellengeEmail());
			pstmt.setString(4, ci.getChellengeAddr());
			pstmt.setInt(5, ci.getiMemberNO());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
}
