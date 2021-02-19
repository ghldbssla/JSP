<%@page import="com.koreait.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="udao" class="com.koreait.beans.UserDAO"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String userid=request.getParameter("userid");
	UserBean user = udao.selectAll(userid);
%>
<body>
	<form method="post" name="joinform">
		<p>
			<label>아이디 <input type="text" name="userid" value="<%=user.getUserid()%>"></label>
		</p>
		<p>
			<label>비밀번호 <input type="password" name="userpw"></label>
		</p>
		<p>
			<label>이름 <input type="text" name="username" value="<%=user.getUsername()%>"></label>
		</p>
		<p>
			성별 <input type="text" value="<%=user.getUsergender()%>">		
		</p>
		<p>
			<label>핸드폰번호 <input type="text" name="userphone" value="<%=user.getUserphone()%>"></label>
		</p>
		<p>
			<input type="text" name="postcode" id="sample6_postcode" value="<%=user.getPostcode()%>" placeholder="우편번호">
			<input type="text" name="addr" id="sample6_address" value="<%=user.getAddr() %>" placeholder="주소"><br>
			<input type="text" name="detailaddr" id="sample6_detailAddress" value="<%=user.getDetailaddr()%>" placeholder="상세주소">
			<input type="text" name="extraaddr" id="sample6_extraAddress" value="<%=user.getExtraaddr()%>" placeholder="참고항목">
		</p>
	</form>
</body>
</html>