<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 param</title>
</head>
<body>
	<h3>param 액션태그</h3>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:forward page="param_result.jsp">
		<jsp:param value="apple" name="userid"/>
		<jsp:param value="김사과" name="username"/>
	</jsp:forward>
</body>
</html>