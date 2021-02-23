package com.koreait.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.dto.UserDTO;
import com.koreait.mybatis.config.SqlMapConfig;

//디비 접근을 위함
public class UserDAO {
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public UserDAO() {
		//true로 설정시 오토커밋
		sqlsession=sessionf.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", user.getUserid());
		datas.put("userpw", user.getUserpw());
		datas.put("username", user.getUsername());
		datas.put("usergender", user.getUsergender());
		datas.put("userphone", user.getUserphone());
		datas.put("postcode", user.getPostcode());
		datas.put("addr", user.getAddr());
		datas.put("detailaddr", user.getDetailaddr());
		datas.put("extraaddr", user.getExtraaddr());
		//성공하면 성공한 행의 개수(삽입은 성공시 1)가 return되므로 비교하여 불린으로 리턴해줌
		//*sqlsession.insert는 int타입이다.
		return 1==sqlsession.insert("User.join", datas);
	}

	public UserDTO login(String userid, String userpw) {
		//일단 회원가입까지만 구현해놨기 때문에 login은 구현을 하지 않았다.
		return null;
	}
}
