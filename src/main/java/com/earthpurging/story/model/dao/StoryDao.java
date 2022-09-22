package com.earthpurging.story.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.earthpurging.story.model.vo.Story;

import common.JDBCTemplate;

public class StoryDao {

	public ArrayList<Story> selectStoryList(Connection conn, int start, int end) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Story> list = new ArrayList<Story>();
		
		String query = "SELECT * FROM(SELECT ROWNUM AS RNUM, S.* FROM(SELECT M.NICKNAME, S.*FROM STORY_TBL S LEFT JOIN MEMBER_TBL M ON S.STORY_WRITER = M.MEMBER_NO ORDER BY STORY_NO DESC)S) WHERE RNUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			System.out.println(start);
			System.out.println(end);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Story s = new Story(); 
				s.setStoryNo(rset.getInt("story_no"));
				s.setStoryContent(rset.getString("story_content"));
				s.setStoryReadCount(rset.getInt("story_read_count"));
				s.setStoryRegDate(rset.getString("story_reg_date"));
				s.setPhotoPath(rset.getString("photo_path"));
				s.setStoryWriter(rset.getInt("story_writer"));
				s.setLikeCount(rset.getInt("like_count"));
				s.setNickname(rset.getString("nickname"));
				list.add(s);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		
		return list;
		
	}

	public int selectStoryCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int totalCount = 0;
		
		String query ="select count(*) as cnt from story_TBL";
		
		try {
			pstmt= conn.prepareStatement(query);
			rset= pstmt.executeQuery();
			
			if(rset.next()) {
				totalCount = rset.getInt("cnt");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return totalCount;
	}

	public int insertStory(Connection conn, Story s) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into story_TBL values(story2_seq.nextval,?,0,to_char(sysdate,'yyyy-mm-dd'),?,?,0)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, s.getStoryContent());
			pstmt.setString(2, s.getPhotoPath());
			pstmt.setInt(3, s.getStoryWriter());
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	//스토리번호
	public Story selectOneStory(Connection conn, int storyNo) {
		PreparedStatement pstmt= null;
		ResultSet rset = null;
		Story s = null;
		String query = "SELECT M.NICKNAME, S.*FROM STORY_TBL S LEFT JOIN MEMBER_TBL M ON S.STORY_WRITER = M.MEMBER_NO where s.story_no=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, storyNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				s = new Story();
				s.setStoryNo(rset.getInt("story_no"));
				s.setStoryContent(rset.getString("story_content"));
				s.setStoryReadCount(rset.getInt("story_read_count"));
				s.setStoryRegDate(rset.getString("story_reg_date"));
				s.setPhotoPath(rset.getString("photo_path"));
				s.setStoryWriter(rset.getInt("story_writer"));
				s.setLikeCount(rset.getInt("like_count"));
				s.setNickname(rset.getString("nickname"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}

		return s;
	}

	public int updateStory(Connection conn, Story s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update story_TBL set story_content =?, photo_path=? where story_no=? ";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, s.getStoryContent());
			pstmt.setString(2, s.getPhotoPath());
			pstmt.setInt(3, s.getStoryNo());
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		
		return result;
	}

	public int deleteStory(Connection conn, int storyNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query ="delete from story_TBL where story_no = ?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, storyNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}



}
