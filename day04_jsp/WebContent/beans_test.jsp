<%@page import="road.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Car mycar = new Car(); -->
	<jsp:useBean id="mycar" class="road.Car"/>
	<!-- mycar.setBrand("Ferrari"); -->
	<jsp:setProperty property="brand" name="mycar" value="Ferrari"/>
	<!-- mycar.setcolor("Red"); -->
	<jsp:setProperty property="color" name="mycar" value="Red"/>
	<h2>상태</h2>
	<p><%=mycar.engineStart()%></p>
	<p>색깔 : <jsp:getProperty property="color" name="mycar"/> </p>
</body>
</html>