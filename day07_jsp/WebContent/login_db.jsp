<%@page import="com.koreait.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="udao" class="com.koreait.dao.UserDAO"/>
<jsp:useBean id="udto" class="com.koreait.dto.UserDTO"/>
<jsp:setProperty property="*" name="udto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join_db</title>
</head>
<body>
	<!-- udao 불러와서  -->
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		UserDTO user =udao.login(userid,userpw); 
		if(user!=null){
			session.setAttribute("session_user", user);
			response.sendRedirect("main.jsp");
		}else{
			%>
				<script>
					alert("로그인 실패");
				</script>
			<%
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>