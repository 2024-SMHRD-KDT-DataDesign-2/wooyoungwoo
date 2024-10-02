package com.tc.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tc.db.SQLSessionManager;

public class feedDAO {

	SqlSessionFactory sqlSessionFactory = SQLSessionManager.getFactory();

//	메인 페이지 피드 
	public List<feedDTO> feedSelect() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<feedDTO> feedList = sqlSession.selectList("feedSelect");
		sqlSession.close();

		return feedList;
	}

//	피드 상세 페이지
	public List<feedDTO> detailFeed() {
		// 1) sqlSession 빌려오기
		SqlSession sqlSession = null;
		List<feedDTO> detailList = null; // 리턴할 리스트 변수를 try 밖에서 선언 및 초기화

		// 2) sqlSession 사용하기 (select 여러 개 값)
		try {
			sqlSession = sqlSessionFactory.openSession(true); // 자동 커밋 활성화
			detailList = sqlSession.selectList("detailFeed"); // "detailFeed"는 Mapper XML의 id
		} catch (Exception e) {
			e.printStackTrace(); // 예외 로그 출력
		} finally {
			if (sqlSession != null) {
				System.out.println("연결 성공");
				sqlSession.close(); // SQL 세션 닫기
			}
		}

		// resultList가 null이 아니면 데이터를 반환, 아니면 빈 리스트 반환
		return detailList != null ? detailList : new ArrayList<feedDTO>();
	}

//	피드 페이지에 값 가져오기
	public List<feedDTO> getFeed() {
		// 1) sqlSession 빌려오기
		SqlSession sqlSession = null;
		List<feedDTO> resultList = null; // 리턴할 리스트 변수를 try 밖에서 선언 및 초기화

		// 2) sqlSession 사용하기 (select 여러 개 값)
		try {
			sqlSession = sqlSessionFactory.openSession(true); // 자동 커밋 활성화
			resultList = sqlSession.selectList("getFeed"); // "getFeed"는 Mapper XML의 id
		} catch (Exception e) {
			e.printStackTrace(); // 예외 로그 출력
		} finally {
			if (sqlSession != null) {
				System.out.println("연결 성공");
				sqlSession.close(); // SQL 세션 닫기
			}
		}

		// resultList가 null이 아니면 데이터를 반환, 아니면 빈 리스트 반환
		return resultList != null ? resultList : new ArrayList<feedDTO>();
	}

//	피드 등록
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
