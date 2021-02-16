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
	<form action="loginok.jsp" method="post">
		<label>아이디 <input type="text" name="userid"></label>
		<label>비밀번호 <input type="password" name="userpw"></label>
		<input type="submit">
	</form>
</body>
</html>