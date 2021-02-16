<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("UTF-8"); %>
	<form action="joinok.jsp" method="post" name="joinform">
		<p>
			<label>아이디 <input type="text" name="userid"></label>
		</p>
		<p>
			<label>비밀번호 <input type="password" name="userpw"></label>
		</p>
		<p>
			<label>이름 <input type="text" name="username"></label>
		</p>
		<p>
			성별<br>
			<label>남 <input name="usergender" type="radio" value="m" checked></label>
			<label>여 <input name="usergender" type="radio" value="w"></label>
		</p>
		<p>
			<label>핸드폰번호 <input type="text" name="userphone"></label>
		</p>
		
		<input type="button" value="회원가입" onclick="sendit();">
	</form>
</body>
<script>
	function sendit(){
		const joinform = document.joinform;
		if(joinform.userid.value == "" || joinform.userid.value==null){
			alert("아이디를 입력하세요.")
			joinform.userid.focus();
			return false;
		}
		if(joinform.userpw.value == "" || joinform.userpw.value == null){
			alert("비밀번호를 입력하세요.");
			joinform.userpw.focus();
			return false;
		}
		if(joinform.userpw.value.length < 8){
			alert("비밀번호는 8자 이상으로 해주세요.")
			joinform.userpw.focus();
			return false;
		}
		if(joinform.username.value == "" || joinform.username.value == null){
			alert("이름을 입력하세요.");
			joinform.username.focus();
			return false;
		}
		if(joinform.userphone.value == "" || joinform.userphone.value == null){
			alert("핸드폰 번호를 입력하세요.");
			joinform.userphone.focus();
			return false;
		}
		
		joinform.submit();
		
	}

</script>
</html>













