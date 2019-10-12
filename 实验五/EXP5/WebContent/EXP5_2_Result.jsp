<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Result</title>
</head>
<body>
	<%
		String num = request.getParameter("number");
		int number = Integer.parseInt(num);
		for (int i = 1; i <= number; i++) {
			pageContext.setAttribute("i", i);
	%>
	${param.number }*${i }=${param.number*i }<br>
	<%
		}
	%>
</body>
</html>