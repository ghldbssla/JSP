package com.koreait.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public boolean join(UserBean user) {
		Connection conn = DBConnection.getConnection();
		
		try {
			PreparedStatement pstm=conn.prepareStatement("INSERT INTO TBL_0215 VALUES(?,?,?,?,?)");
			pstm.setString(1,user.getUserid());
			pstm.setString(2,user.getUserpw());
			pstm.setString(3,user.getUsername());
			pstm.setString(4,user.getUsergender());
			pstm.setString(5,user.getUserphone());
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
			PreparedStatement pstm=conn.prepareStatement("SELECT COUNT(*) FROM TBL_0215 WHERE USERID = ? AND USERPW = ?");
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
}









