<%@page import="com.koreait.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="newuser" class="com.koreait.beans.UserBean" />
<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
%>
<jsp:setProperty property="*" name="newuser" />
<body>
	<jsp:useBean id="udao" class="com.koreait.beans.UserDAO" />
	<%
		if (udao.join(newuser)) {
	%>
	<script>
			alert("<%=newuser.getUserid()%>" + "가입을 환영합니다!");
		location.href = "loginview.jsp";
	</script>
	<%
		} else {
	%>

	<script>
		alert("회원가입 실패! 다시 시도해 주세요.");
		location.href = "joinview.jsp";
	</script>
	<%
		}
	%>

</body>
</html>






