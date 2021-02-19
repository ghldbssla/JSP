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
		//쿠키 세팅
		//Cookie cookie = new Cookie("key","value");
		Cookie cookie = new Cookie("username","김사과");
		//response로 포장하면 자동으로 헤더의 쿠키라는 영역에 저장됨
		//이때 Cookie영역이 null이었다가 자동 생성됨
		response.addCookie(cookie);
	%>
	<a href="getCookie1.jsp">쿠키 보내기</a>
</body>
</html>