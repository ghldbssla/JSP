package com.koreait.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory sqlfactory;

	//클래스 초기화 블럭(클래스가 처음 로딩될 때 한번 수행)
	static {
		try {
			//처음 공장에 설정을 해줌(xml파일)
			String resource = "./com/koreait/mybatis/config/config.xml";
			//그 설정을 읽고 어떤 정보가 있는지를 가지고있음
			Reader reader = Resources.getResourceAsReader(resource);
			//SqlSessionFactoryBuilder객체에게 만들어달라고 넘김
			//이러한 객체가 담긴 변수를 static으로 담음
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			System.out.println("초기화 문제 발생 : "+e);
		}
	}

	public static SqlSessionFactory getSqlMapInstance() {
		return sqlfactory;
	}
	
}
