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
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		//원래는 db처리를 해주는 곳이지만 생략
		if(userid.equals("apple")&&userpw.equals("abcd1234")){
			//로그인 성공
			//세션 세팅
			//session.setAttribute(name, value);
			//value의 타입은 object로 객체를 넣을 수 있다. -> 활용도가 높음
			//따라서 먼저 세팅된 객체를 dto로 묶어서 저장할 수 있다.
			//->getAttribute로 객체가 반환되기 때문에 다른 필드에 쉽게 접근 가능
			session.setAttribute("session_id", userid);
			//"login.jsp"로 이동
			response.sendRedirect("login.jsp");
		}else{
			//로그인 실패
			%>
			<script>
				alert("로그인 실패!");
				location.href="login.jsp";
			</script>
			<%
		}
	%>
</body>
</html>