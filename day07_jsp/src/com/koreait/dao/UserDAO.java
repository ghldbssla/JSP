package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.koreait.dto.UserDTO;

public class UserDAO {
	// java.naming
	Context context;
	DataSource datasource;
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;

	public boolean join(UserDTO user) {
		// dbConnection 만들고 연결하는 코드
		try {
			context = new InitialContext(null);
			// Object객체라서 다운 캐스팅을 해줌
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
			conn = datasource.getConnection();
			
			//커넥션 잡기 끝
			
			String sql = "INSERT INTO WEB.TBL_USER"
					+ "(USERID, USERPW, USERNAME, USERGENDER, USERPHONE, POSTCODE, ADDR, DTAILADDR, EXTRAADDR)"
					+ "VALUES(?,?,?,?,?,?,?,?,?)";

			pstm = conn.prepareStatement(sql);
			pstm.setString(1, user.getUserid());
			pstm.setString(2, user.getUserpw());
			pstm.setString(3, user.getUsername());
			pstm.setString(4, user.getUsergender());
			pstm.setString(5, user.getUserphone());
			pstm.setString(6, user.getPostcode());
			pstm.setString(7, user.getAddr());
			pstm.setString(8, user.getDetailaddr());
			pstm.setString(9, user.getExtraaddr());
			return pstm.executeUpdate() == 1;
			
		} catch (NamingException ne) {
			System.out.println(ne);
		} catch (SQLException sqle) {
			System.out.println(sqle);
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException sqle) {
				System.out.println(sqle);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return false;

	}
	
	public UserDTO login(String userid, String userpw) {
		// dbConnection 만들고 연결하는 코드
		UserDTO user = null;
		try {
			context = new InitialContext(null);
			// Object객체라서 다운 캐스팅을 해줌
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
			conn = datasource.getConnection();
			
			//커넥션 잡기 끝
			String sql = "SELECT * FROM TBL_USER WHERE USERID=? AND USERPW=?";

			pstm = conn.prepareStatement(sql);
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			rs = pstm.executeQuery();
			if(rs.next()) {
				user = new UserDTO();
				user.setUserid(rs.getString(1));
				user.setUserpw(rs.getString(2));
				user.setUsername(rs.getString(3));
				user.setUsergender(rs.getString(4));
				user.setUserphone(rs.getString(5));
				user.setPostcode(rs.getString(6));
				user.setAddr(rs.getString(7));
				user.setDetailaddr(rs.getString(8));
				user.setExtraaddr(rs.getString(9));
			}
			
		} catch (NamingException ne) {
			System.out.println("로그인 부분 : "+ne);
		} catch (SQLException sqle) {
			System.out.println("로그인 부분 : "+sqle);
		} catch (Exception e) {
			System.out.println("로그인 부분 : "+e);
		} 
		return user;

	}
}
