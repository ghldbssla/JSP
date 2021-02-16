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
	<%response.setCharacterEncoding("UTF-8"); %>
	<h2>로그인 페이지 입니다.</h2>
	<form action="loginok-db.jsp" method="post" name="joinform">
		<p>
			<label>아이디 <input type="text" name="userid"></label>
		</p>
		<p>
			<label>비밀번호 <input type="password" name="userpw"></label>
		</p>
		<input type="button" value="로그인" onclick="sendit();">
	</form>
</body>
<script>
	function sendit(){
		const joinform = document.joinform;
		if(joinform.userid.value == "" || joinform.userid.value==null){
			alert("아이디를 입력하세요.");
			joinform.userid.focus();
			return false;
		}
		if(joinform.userpw.value == "" || joinform.userpw.value == null){
			alert("비밀번호를 입력하세요.");
			joinform.userpw.focus();
			return false;
		}
		//false가 한번도 안나옴 - 조건을 다 만족
		joinform.submit();
	}
</script>
</html>