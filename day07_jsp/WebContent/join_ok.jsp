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
		String userid = "";
		String check = request.getHeader("Cookie");
		if (check != null) {
			Cookie[] cookies = request.getCookies();
			for (int i = 0; i < cookies.length; i++) {
				Cookie c = cookies[i];
				if (c.getName().equals("join_id")) {
					userid = c.getValue();
				}
			}
		}
	%>
	<p><%=userid%>님 회원가입 완료</p>
	<a href="login.jsp">로그인</a>
</body>
</html>






