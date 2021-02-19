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
	String sid = "";
	if(session.getAttribute("session_id")!=null){
		//session.getAttribute("session_id");의 타입이 Object이기때문에
		//String으로 다운 캐스팅.
		sid=(String)session.getAttribute("session_id");
	}
	//성공했다면 sid에 session_iddml value값이 들어간다.
	if(sid!=null&& !sid.equals("")){
		%>
		<p><%=sid %>님 환영합니다!</p>
		<a href="logout.jsp">로그아웃</a>
		<%
	}else{

%>
	<form action="login_ok.jsp" method="post" name="loginform">
		<p>
			아이디<input type="text" name="userid">
		</p>
		<p>
			비밀번호<input type="password" name="userpw">
		</p>
		<p>
		<!-- 내용이 없어도 submit이 가능하기 때문에 submit을 주로 사용하지는 않는다 -->
			<input type="button" onclick="sendit();" value="로그인">
		</p>
	
	</form>
	<%} %>
</body>
<script>
	function sendit(){
		const loginform = document.loginform;
		if(loginform.userid.value == null || loginform.userid.value == ""){
			alert("아이디를 입력하세요.");
			loginform.userid.focus();
			return false;
		}
		if(loginform.userpw.value == null || loginform.userpw.value == ""){
			alert("비밀번호를 입력하세요.");
			loginform.userpw.focus();
			return false;
		}
		loginform.submit();
	}
</script>
</html>