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
				}else{
					//username의 키를 가지고 있는 쿠키는 없지만
					//우리가 설정하지 않은 쿠키가 남아있다.
					out.println("username의 쿠키가 없습니다.<br>");
					out.println("남아있는 쿠키<br>");
					out.println(c.getName() + " : " + c.getValue());
				}
			}
		}
	%>
</body>
</html>