<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param_result</title>
</head>
<body>
	<h2>아이디 : <%=request.getParameter("userid") %></h2>
	<h2><%=request.getParameter("username") %>님 어서오세요.</h2>
</body>
</html>