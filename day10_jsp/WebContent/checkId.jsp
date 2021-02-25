<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean id="udao" class="com.koreait.dao.UserDAO"/>
<%--<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%
		String userid = request.getParameter("userid");
		boolean check = udao.checkDup(userid);
		if(check){
			//중복아님
		%>
			<p>사용 가능한 아이디 입니다.</p>
		<%
			//확인버튼이 나옴 - 추가적인 처리 필요
		}else{
			//중복
		%>
			<p>중복된 아이디가 있습니다.</p>
		<%
			//아무 변화 없음 - 추가적인 처리 필요
		}
		
	%> --%>

<%
		String userid = request.getParameter("userid");
		if(udao.checkDup(userid)){
			out.print("ok");	
		}else{
			out.print("not ok");	
			
		}
//</body>
//</html> 
%>


