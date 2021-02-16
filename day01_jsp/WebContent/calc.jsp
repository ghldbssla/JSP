<%@page import="com.koreait.calculator.Calc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	response.setContentType("text/html; charset=UTF-8");
	String input = request.getParameter("input");
	String opers = "+-*/";
	boolean flag = false;
	char oper = ' ';
	for (int i = 0; i < input.length(); i++) {
		char ch = input.charAt(i);
		if (opers.contains(ch + "")) {
			flag = true;
			oper = ch;
		}
	}
	String result = "";
	//10+7
	if (flag) {

		String[] numbers = input.split("\\" + oper);
		Calc c = new Calc(oper, numbers[0], numbers[1]);
		result = c.submit();
	} else {
		result = "수식을 입력하세요.";
	}
%>
</head>
<body>
	<p>
		결과 : <%=result%><a href="index.html">다시 계산하기</a>
	</p>
</body>
</html>


