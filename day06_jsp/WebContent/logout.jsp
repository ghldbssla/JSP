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
		if(session.getAttribute("session_id")!=null){
			session.removeAttribute("session_id");
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>