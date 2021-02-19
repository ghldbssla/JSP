package com.koreait.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() {
		Connection conn = null;
		String user = "web";
		String pw = "web";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
		} catch (SQLException e) {
			System.out.println("DB 접속 오류");
		} catch (Exception e) {
			System.out.println("알 수 없는 오류");
		}
		return conn;
	}
}
