<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 forward</title>
</head>
<!-- request 객체에 세팅해서 보냄 , 뷰단-->
<body>
	<!-- site라는 속성을 변수처럼 사용해 site에 option중 한가지를 세팅된 채로 날라간다. -->
	<form action="controller.jsp">
		<select name="site">
			<option value="naver">네이버</option>
			<option value="google">구글</option>
			<option value="daum">다음</option>
		</select>
		<input type="submit" value="전송">
	</form>
</body>
</html>