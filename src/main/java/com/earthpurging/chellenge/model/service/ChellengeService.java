package com.earthpurging.chellenge.model.service;

import java.net.ConnectException;
import java.sql.Connection;

import com.earthpurging.chellenge.model.dao.ChellengeDao;
import com.earthpurging.chellenge.model.vo.Chellenge;
import com.earthpurging.chellenge.model.vo.ChellengeInfo;

import common.JDBCTemplate;

public class ChellengeService {
	private ChellengeDao dao;

	public ChellengeService() {
		super();
		dao = new ChellengeDao();
		// TODO Auto-generated constructor stub
	}

	public int insertChellenge(Chellenge chellenge) {
		Connection conn = JDBCTemplate.getConnection();
		int result = dao.insertChellenge(conn,chellenge);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int insertChellengeInfo(ChellengeInfo ci) {
		Connection conn = JDBCTemplate.getConnection();
		int result = dao.insertChellenge(conn,ci);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
}
