<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script Tag</title>
</head>
<body>
	<!-- JSP -->
	<table border ="1">
		<%
			for(int i=0; i<3; i++){
		%>
				<tr>
				<%
				for(int j=0; j<5; j++){
				%>
					<td><%=i+1 %>행<%=j+1 %>열</td>
				<%	
				}
				%>
				</tr>
		<%
			}
		%>
	</table>
	<hr>
	<!-- out.print -->
	<table border ="1">
		<% 
			for(int i=0; i<3; i++){
				out.print("<tr>");
				//클래스는 따로 써줘야 한다.
				for(int j=0; j<5; j++){
					out.print("<td>"+(i+1)+"행"+(j+1)+"열</td>");
					
				}
				out.print("</tr>");
			}
		%>
	</table>
	<hr>
	<!-- HTML -->
	<!-- 같은 코드지만 위 코드는 수정이 용이하고 코드가 짧다. -->
	<table border ="1">
		<tr>
			<td>1행1열</td>
			<td>1행2열</td>
			<td>1행3열</td>
			<td>1행4열</td>
			<td>1행5열</td>
		</tr>
		<tr>
			<td>2행1열</td>
			<td>2행2열</td>
			<td>2행3열</td>
			<td>2행4열</td>
			<td>2행5열</td>
		</tr>
		<tr>
			<td>3행1열</td>
			<td>3행2열</td>
			<td>3행3열</td>
			<td>3행4열</td>
			<td>3행5열</td>
		</tr>
	</table>
</body>
</html>

