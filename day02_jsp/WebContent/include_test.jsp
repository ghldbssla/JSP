<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		int pageCnt=0;
		void addCnt(){
			pageCnt++;
		}
	%>
	<%@include file="header.jsp" %>
	<h4>----------------------현재 페이지 영역-----------------------</h4>
	<%
		addCnt();
	%>
	<p>이 사이트 방문은 <%= pageCnt %>번째 입니다.</p>
	<%@include file="footer.jsp" %>
</body>
</html>
