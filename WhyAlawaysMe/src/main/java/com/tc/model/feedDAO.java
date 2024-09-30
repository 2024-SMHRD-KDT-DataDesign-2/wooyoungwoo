package com.tc.model;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tc.db.SQLSessionManager;

public class feedDAO {

	SqlSessionFactory sqlSessionFactory = SQLSessionManager.getFactory();

	// 게시글 등록 기능
	public int feed_insert(feedDTO dto) {
	    SqlSession sqlSession = null;
	    int cnt = 0;
	    try {
	        sqlSession = sqlSessionFactory.openSession(true);
	        cnt = sqlSession.insert("upload", dto);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 로그 출력
	    } finally {
	        if (sqlSession != null) {
	        	System.out.println("연결 성공");
	            sqlSession.close();
	        }
	    }
	    return cnt;
	}
	
	
}
