package com.tc.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tc.db.SQLSessionManager;

public class chalDAO {

	SqlSessionFactory sqlSessionFactory = SQLSessionManager.getFactory();

//	메인 페이지 피드 
	public List<chalDTO> chalSelect() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<chalDTO> chalList = sqlSession.selectList("chalSelect");
		sqlSession.close();

		return chalList;
	}

//	피드 상세 페이지
	public List<chalDTO> detailchal() {
		// 1) sqlSession 빌려오기
		SqlSession sqlSession = null;
		List<chalDTO> detailChalList = null; // 리턴할 리스트 변수를 try 밖에서 선언 및 초기화

		// 2) sqlSession 사용하기 (select 여러 개 값)
		try {
			sqlSession = sqlSessionFactory.openSession(true); // 자동 커밋 활성화
			detailChalList = sqlSession.selectList("detailchal"); // "detailchal"는 Mapper XML의 id
		} catch (Exception e) {
			e.printStackTrace(); // 예외 로그 출력
		} finally {
			if (sqlSession != null) {
				System.out.println("연결 성공");
				sqlSession.close(); // SQL 세션 닫기
			}
		}

		// resultList가 null이 아니면 데이터를 반환, 아니면 빈 리스트 반환
		return detailChalList != null ? detailChalList : new ArrayList<chalDTO>();
	}

//	피드 페이지에 값 가져오기
	public List<chalDTO> getchal() {
		// 1) sqlSession 빌려오기
		SqlSession sqlSession = null;
		List<chalDTO> resultChalList = null; // 리턴할 리스트 변수를 try 밖에서 선언 및 초기화

		// 2) sqlSession 사용하기 (select 여러 개 값)
		try {
			sqlSession = sqlSessionFactory.openSession(true); // 자동 커밋 활성화
			resultChalList = sqlSession.selectList("getchal"); // "getchal"는 Mapper XML의 id
		} catch (Exception e) {
			e.printStackTrace(); // 예외 로그 출력
		} finally {
			if (sqlSession != null) {
				System.out.println("연결 성공");
				sqlSession.close(); // SQL 세션 닫기
			}
		}

		// resultList가 null이 아니면 데이터를 반환, 아니면 빈 리스트 반환
		return resultChalList != null ? resultChalList : new ArrayList<chalDTO>();
	}

//	피드 등록
	public int chal_insert(chalDTO dto) {
		SqlSession sqlSession = null;
		int cnt = 0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			cnt = sqlSession.insert("upload-chal", dto);
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

	public List<chalDTO> mychalSelect(chalDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<chalDTO> mychalList = sqlSession.selectList("mychalSelect", dto) ;
		
		sqlSession.close();
		
		return mychalList;
	}

}
