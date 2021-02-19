package com.koreait.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public boolean join(UserBean user) {
		Connection conn = DBConnection.getConnection();
		
		try {
			PreparedStatement pstm=conn.prepareStatement("INSERT INTO TBL_0217 VALUES(?,?,?,?,?,?,?,?,?)");
			pstm.setString(1,user.getUserid());
			pstm.setString(2,user.getUserpw());
			pstm.setString(3,user.getUsername());
			pstm.setString(4,user.getUsergender());
			pstm.setString(5,user.getUserphone());
			pstm.setString(6, user.getPostcode());
			pstm.setString(7, user.getAddr());
			pstm.setString(8, user.getDetailaddr());
			pstm.setString(9, user.getExtraaddr());
			int check = pstm.executeUpdate();
			
			return check==1;
		} catch (SQLException e) {
			System.out.println("쿼리문 전송 오류");
		}
		return false;
	}
	
	public boolean login(String userid,String userpw) {
		Connection conn = DBConnection.getConnection();
		int size=0;
		try {
			PreparedStatement pstm=conn.prepareStatement("SELECT COUNT(*) FROM TBL_0217 WHERE USERID = ? AND USERPW = ?");
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				size=rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("쿼리문 전송 오류");
		}
		return size==1;
	}
	
	public UserBean selectAll(String userid) {
		Connection conn = DBConnection.getConnection();
		UserBean user = null;
		try {
			PreparedStatement pstm=conn.prepareStatement("SELECT * FROM TBL_0217 WHERE USERID = ?");
			pstm.setString(1, userid);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				user = new UserBean();
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
		} catch (SQLException e) {
			System.out.println("쿼리문 전송 오류");
		}
		return user;
	}
}









