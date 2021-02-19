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
		//null이면 cookie에 담긴게 없다.
		//					헤더를 가져와라(쿠키 헤더의 이름--키값)
		String check = request.getHeader("Cookie");
		if(check!=null){
			//request.getCookies()의 리턴값이 Cookie[]타입
			Cookie[] cookies = request.getCookies();
			for(int i=0; i<cookies.length;i++){
				Cookie c = cookies[i];
				//키값 비교
				if(c.getName().equals("username")){
					out.println(c.getName() + " : " + c.getValue());
					//c값의 value값 바꾸기
					c.setValue("반하나");
					//(c는 쿠기값을 받아온 객체라서 동일객체가 아니므로 c를 바꾼뒤 다시 쿠키영역에 보내야한다.)
					//바뀐 c값을 다시 respone로 포장해서 Cookie영역으로 보냄.
					response.addCookie(c);
				}
			}
		}
	%>
	<a href="getCookie2.jsp">수정된 값 확인하기</a>
	</body>
</html>