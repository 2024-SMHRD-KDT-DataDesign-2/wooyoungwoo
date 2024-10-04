package com.tc.util;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            // MyBatis 설정 파일 경로
            String resource = "com/tc/config/mybatis-config.xml";
            Reader reader = Resources.getResourceAsReader(resource);

            // SqlSessionFactory 객체 생성
            if (sqlSessionFactory == null) {
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("SqlSessionFactory 객체를 생성하는 도중 오류가 발생했습니다: " + e.getMessage());
        }
    }

    // SqlSessionFactory 객체 반환 메서드
    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }
}
