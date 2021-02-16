<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%response.setCharacterEncoding("UTF-8"); %>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		String usergender = request.getParameter("usergender");
		String userphone = request.getParameter("userphone");
		Connection conn = null;
		String user = "web";
		String pw = "web";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, pw);
		
		PreparedStatement pstm=conn.prepareStatement("INSERT INTO TBL_0215 VALUES(?,?,?,?,?)");
		pstm.setString(1,userid);
		pstm.setString(2,userpw);
		pstm.setString(3,username);
		pstm.setString(4,usergender);
		pstm.setString(5,userphone);
		
		pstm.executeUpdate();
				
		response.sendRedirect("loginview-db.jsp");
		
	%>
</body>
</html>
