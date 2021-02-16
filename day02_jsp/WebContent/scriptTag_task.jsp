<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script Tag</title>
</head>
<body>
	<!-- 
	1행1열
	2행1열 2행2열
	3행1열 3행2열 3행3열
	4행1열 4행2열 4행3열 4행4열
	5행1열 5행2열 5행3열 5행4열 5행5열
	6행1열 6행2열 6행3열 6행4열 6행5열
	7행1열 7행2열 7행3열 7행4열
	8행1열 8행2열 8행3열
	9행1열 9행2열
	10행1열
	 -->
	<table border ="1">
		<%
			for(int i=1; i<=10; i++){
		%>
				<tr>
				<%
				for(int j=1; j<=5; j++){
				%>
				<%
					if(i<=5){
				%>						
					<td><%=i %>행 <%=j %>열</td>
				<%
						if(i==j){
							break;
						}
					}else{
				%>
					<td><%=i %>행 <%=j %>열</td>
				<%	
						if((11-i)==j){
							break;
						}
					}
				}
				%>
				</tr>
		<%
			}
		%>
	</table>
	<hr>

</body>
</html>