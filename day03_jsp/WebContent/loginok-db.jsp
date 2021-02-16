<%@page import="java.sql.ResultSet"%>
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
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		response.setCharacterEncoding("UTF-8");
	%>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");

		if (userid == null ||userid==""||userpw=="" || userpw == null) {
			//바로 이페이지의 주소를 쳐서 들어왔을 때
			response.sendRedirect("loginview.jsp");
		} else {
			Connection conn = null;
			String user = "web";
			String pw = "web";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);

			PreparedStatement pstm = conn.prepareStatement("select * from TBL_0215 where USERID=? and USERPW=?");
			pstm.setString(1, userid);
			pstm.setString(2, userpw);

			ResultSet rs = pstm.executeQuery();
			String result = "";
			while (rs.next()) {
				result = rs.getString(1);
			}

			if (result == "") {
	%>
	<p>실패</p>
	<%
		} else {
	%>
	<p>
		<%=userid%>님 로그인 성공 입니다.
	</p>
	<%
		}
		}
	%>
</body>
</html>
