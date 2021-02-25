package com.koreait.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory sqlfactory;
	
	//메소드 안에 소스코드를 만들어야 하기 때문에
	//static안에 소스코드를 사용한다.(메소드를 따로 만들기 싫어서)
	static {
		try {
			//설계도 역할의 config.xml의 파일 경로
			String resource = "./com/koreait/mybatis/config/config.xml";
			//Reader로 번역해주는 역할
			Reader reader = Resources.getResourceAsReader(resource);
			//reader로 번역된 설게도로 공장을 짓는 역할
			//builer는 공장을 건설하는 건설사?
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			System.out.println("초기화 문제 발생 : "+e);
		}
		
	}
	//getter 메소드
	//getInstance이라는 이름이 있으면 거의 싱글톤으로 쓰임
	public static SqlSessionFactory getInstance() {
		return sqlfactory;
	}
}
