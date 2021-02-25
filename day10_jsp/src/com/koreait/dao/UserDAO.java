package com.koreait.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.dto.UserDTO;
import com.koreait.mybatis.config.SqlMapConfig;

//디비 접근을 위함
public class UserDAO {
	//만들었던 공장을 불러옴
	SqlSessionFactory sqlfactory=SqlMapConfig.getInstance();
	//생수병를 불러옴
	SqlSession sqlsession;

	public UserDAO() {
		//true로 오토커밋(db에서 쿼리문 실행후 바로 저장됨)
		sqlsession = sqlfactory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		 //	HashMap<String, String> datas = new HashMap<>();
		 //	datas.put("USERID", user.getUserid());
		 //	datas.put("USERPW", user.getUserpw());
		 //	datas.put("USERNAME", user.getUsername());
		 //	datas.put("USERGENDER", user.getUsergender());
		 //	datas.put("USERPHONE", user.getUserphone());
		 //	datas.put("POSTCODE", user.getPostcode());
		 //	datas.put("ADDR", user.getAddr());
		 //	datas.put("DETAILADDR", user.getDetailaddr());
		 //	datas.put("EXTRAADDR", user.getExtraaddr());
		 //그냥 dto로 보내고 싶다!!
		//user.xml에있는 User안의 join에 userdto객체를 넘겨줘라
		//성공시 1을 리턴 => 성공한 행의 개수
		//따라서 성공여부를 불린으로 처리한뒤 리턴!
		return sqlsession.insert("User.join", user)==1;
	}

	public boolean checkDup(String userid) {
		int result = sqlsession.selectOne("User.checkId",userid);
		return result!=1;
	}
	
	public boolean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("USERID", userid);
		datas.put("USERPW", userpw);
		//sqlsession.selectOne("User.login", datas)가 Object타입이기 때문에 다운캐스팅을 해준다.
		//이미 오토박싱이 integer형으로 되고, Object로 업캐스팅이 된 상태이기 때문에
		//integer타입으로 다운캐스팅이 되면 int형이랑 비교할때 알아서 오토 언박싱으로 int형이 된다
		return (Integer)sqlsession.selectOne("User.login", datas)==1;
		
	}
}
