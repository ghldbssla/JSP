<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<form action="loginok.jsp" method="post" name="loginform">
		<label>아이디 <input type="text" name="userid"></label>
		<label>비밀번호 <input type="password" name="userpw"></label>
		<input type="button" value="로그인" onclick = "sendit();">
	</form>
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