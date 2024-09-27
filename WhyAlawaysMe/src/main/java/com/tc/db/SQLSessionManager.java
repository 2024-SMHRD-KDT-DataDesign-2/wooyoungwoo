package com.tc.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SQLSessionManager {
	// 전역 변수로 쓸수 있는 변수 지정;
	public static SqlSessionFactory sqlSessionFactory;

	// 초기화 블럭 => static{}
	// 클래스가 로딩되거나 호출될 때 자동으로 실행될 수 있는 구조
	// 주로 초기화 해야 하는 작업이 있을 때 static{} 을 사용한다
	static {
		try {
			String resource = "com/chall/db/Mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		} catch (Exception e) {
			e.printStackTrace(); // 오류 발생 시 스택 트레이스 출력
		}
	}

	// 해당 클래스의 메소드를 호출하면 결과적으로 만들어진 salSessionFactory 를 가져갈 없는
	// 구조가 필요 => DAO 에서 DB 접근을 위하여 SqlSession을 대여/반납 위한 기능
	public static SqlSessionFactory getFactory() {
		System.out.println("return 확인 : "+sqlSessionFactory);
		return sqlSessionFactory;
	}
}
