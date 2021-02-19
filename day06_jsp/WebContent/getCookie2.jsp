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
			for(Cookie c : cookies){
				if(c.getName().equals("username")){
					out.println(c.getName() + " : " + c.getValue());
					//지속 시간(0은 그냥 삭제)--유효기간-거의 삭제할 때만 쓰임
					//초단위, 음수 입력시 브라우저 종류때 쿠키삭제
					//쿠키는 사용자의 서비스의 편의를 위해 만드는 것이기 떄문에 보통 유효기간을 쓰지 않음
					c.setMaxAge(0);
					response.addCookie(c);
				}
			}
		}
	%>
	<a href="delete_check.jsp">삭제하기</a>
</body>
</html>