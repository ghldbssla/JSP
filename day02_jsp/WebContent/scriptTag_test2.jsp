<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script Tag</title>
<%
	out.print(myMethod(0));
%>
<%!
	public int myMethod(int count){
		return ++count;
	}
%>
</head>
<body>

</body>
</html>
