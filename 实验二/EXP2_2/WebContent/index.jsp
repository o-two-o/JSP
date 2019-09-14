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
		String[] colors = { "Green", "Cyan", "Black", "Red", "Yellow", "Pink" };
		for (int i = 0; i < colors.length; i++) {
	%>
	<hr color="<%=colors[i]%>"></hr>

	<%
		}
	%>
</body>
</html>