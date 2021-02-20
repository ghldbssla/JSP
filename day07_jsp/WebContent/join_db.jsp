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
		if(udao.join(udto)){
			Cookie cookie = new Cookie("join_id", udto.getUserid());
			response.addCookie(cookie);
			response.sendRedirect("join_ok.jsp");
		}else{
			%>
				<script>
					alert("잠시후 다시 시도해 주세요.");
				</script>
			<%
			response.sendRedirect("joinview.jsp");
		}
	%>
</body>
</html>