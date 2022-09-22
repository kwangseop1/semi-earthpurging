package com.earthpurging.mypage.model.service;

import com.earthpurging.mypage.model.dao.MypageDao;
import common.JDBCTemplate;

import java.sql.Connection;

public class MypageService {

    private MypageDao dao;

    public MypageService() {
        super();
        dao = new MypageDao();
    }


    public int[] selectInquiryCnt(String memberName, String memberEmail) {
        Connection conn = JDBCTemplate.getConnection();
        int[] inquiryCntarr = new int[2];
        inquiryCntarr = dao.selectInquiryCnt(conn, memberName, memberEmail);
        JDBCTemplate.close(conn);
        return inquiryCntarr;
    }
}
