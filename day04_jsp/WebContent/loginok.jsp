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
<jsp:useBean id="udao" class="com.koreait.beans.UserDAO"></jsp:useBean>
<body>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");

		if (userid == null || userid=="" || userpw=="" || userpw == null) {
	%>
		<script>
			alert("로그인 후 이용하세요!");
			location.href = "loginview.jsp";
		</script>
	<%
		} else {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
	%>
	<form action="loginok.jsp" method="post">
		<label>아이디 <input type="text" name="userid"></label> <label>비밀번호
			<input type="password" name="userpw">
		</label> <input type="submit">
	</form>
	<%
		if(udao.login(userid, userpw)){
	%>
		<script>
			alert("로그인 성공!");
			location.href="beans_test.jsp";
		</script>
	<%
		}else{
	%>
		<script>
			alert("로그인 실패!");
			location.href = "loginview.jsp";
		</script>
	<%
		}
	}
	%>
</body>
</html>







