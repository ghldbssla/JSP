<%@page import="com.koreait.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="udao" class="com.koreait.dao.UserDAO"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		boolean check = udao.login(userid,userpw);
		if(check){
			session.setAttribute("session_user", userid);
			response.sendRedirect("main.jsp");
		}else{
	%>
		<script>
			alert("로그인 실패!");
			location.href = "login.jsp";
		</script>
	<%	
		}
	%>
</body>
</html>