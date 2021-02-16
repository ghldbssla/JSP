<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script Tag</title>
</head>
<body>
 	<h2>script Tag</h2>
 	<%!
	 	//선언문 태그
	 	//선언문 태그를 사용해서 자바 변수와 메소드 정의
	 	//count는 전역변수
	 	int count = 3;
	 	String makeItLower(String data){
	 		return data.toLowerCase();
	 	}
 	%>
 	<%
 		//스크립틀릿 태그
 		for(int i=1; i<=count; i++){
 			// h2밑에 써질 html내용
 			//=document.write
 			out.println(i+". JAVA Server Pages<br>");
 		}
 	%>
 	<!-- HTML 주석은 컴파일이 모두 되고 나서 페이지에 보이지 않게 된다. -->
 	<%--JSP 주석은 안에 작성된 모든 코드가 무시되므로 JSP 주석을 권장한다. --%>
 	<%--표현문 태그로 선언문의 메소드 호출하기 --%>
 	<%--표현문은 서블릿의 out.print()메소드의 매개변수에 전달 --%>
 	<%-- out.println(makeItLower("Hello World"));와 같은 문장임--%>
 	<%--따라서 표현문 내부에 메소드 호출시 세미콜론을 사용하면 안된다.--%>
 	<%=
 		//표현문태그
 		makeItLower("Hello World")
 	%>
</body>
</html>
