<%@page import="com.koreait.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="udao" class="com.koreait.beans.UserDAO"/>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//요청에 의해 전송되어 온 데이터 꺼내오기
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		String usergender = request.getParameter("usergender");
		String userphone = request.getParameter("userphone");
		
		//DAO로 보내기 위해 전송할 데이터들을 포장
		UserBean newuser = new UserBean();
		newuser.setUserid(userid);
		newuser.setUserpw(userpw);
		newuser.setUsername(username);
		newuser.setUsergender(usergender);
		newuser.setUserphone(userphone);
		
		if(udao.join(newuser)){
	%>
		<script>
			alert("<%=userid%>"+"님 가입을 환영합니다!");
			location.href = "loginview.jsp";
		</script>
	<%
		}else{
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






