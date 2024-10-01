package com.tc.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tc.db.SQLSessionManager;

public class feedDAO {

	SqlSessionFactory sqlSessionFactory = SQLSessionManager.getFactory();

	public List<feedDTO> feedSelect() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<feedDTO> feedList = sqlSession.selectList("feedSelect") ;
		sqlSession.close();
		
		return feedList ;
	}
	
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
