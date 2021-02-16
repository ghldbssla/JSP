<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="myErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page info="Date 클래스를 이용한 날짜 출력" %>
	Today is : <%=new Date() %>
	<%
		Integer.parseInt("abcd");
	%>
</body>
</html>
