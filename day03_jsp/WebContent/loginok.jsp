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
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");

		if (userid == null || userpw == null) {
			//바로 이페이지의 주소를 쳐서 들어왔을 때
			response.sendRedirect("loginview.jsp");
		} else {
			//apple님 비밀번호는 abcd1234 입니다.
			%>
			<form action="loginok.jsp" method="post">
				<label>아이디 <input type="text" name="userid"></label> <label>비밀번호
					<input type="password" name="userpw">
				</label> <input type="submit">
			</form>
			<p><%=userid%>님 비밀번호는
				<%=userpw%>
				입니다.
			</p>
			<%
				}
			%>
		</body>
		</html>