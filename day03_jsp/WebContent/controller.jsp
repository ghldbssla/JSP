<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>controller</title>
</head>
<!-- request -->
<body>
	<%
		//naver, google, daum 셋중에 하나가 담긴다.
		String pagename = request.getParameter("site");
		String result=null;
		switch(pagename){
			case "naver" :
				//네이버로 이동
				result="forward_naver.jsp";
				break;
			case "google" :
				//구글로 이동
				result="forward_google.jsp";
				break;
			case "daum" :
				//다음으로 이동
				result="forward_daum.jsp";
				break;
			}
	%>
	<!-- java변수 result 사용 방법 -->
	<!-- 액션태그로 전송할 때는 파일을 열어준다. -->
	<jsp:forward page="<%=result%>"></jsp:forward>
</body>
</html>