<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mycar" class="day05_jsp.Car"/>
<!-- 무조건 기본생성자 자동 호출(다른 생성자를 사용 못함 -> Car(a,b,1);)
 <jsp:setProperty property="brand" value="request.~~" name="mycar"/>
 name이 같은 필드들에 값을 모두 넣어줌  따라서 input태그의 name을 일치 시켜야 한다.-->
<jsp:setProperty property="*" name="mycar"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>브랜드 : <%=mycar.getBrand() %></p>
	<p>색깔 : <%=mycar.getColor() %></p>
	<p>가격 : <%=mycar.getPrice() %></p>
</body>
</html>