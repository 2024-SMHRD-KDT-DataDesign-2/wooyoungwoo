package com.chall.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.chall.db.SQLSessionManager;

public class memberDAO {
	SqlSessionFactory sqlSessionFactory = SQLSessionManager.getFactory();

	public int join(memberDTO dto) {
		System.out.println("session 확인 : "+sqlSessionFactory);
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("join", dto);

		sqlSession.close();

		return cnt;
	}

	public memberDTO login(memberDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		memberDTO resultDTO = sqlSession.selectOne("login", dto);

		sqlSession.close();

		return resultDTO;
	}
}
