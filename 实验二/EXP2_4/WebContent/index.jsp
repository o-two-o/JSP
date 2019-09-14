<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID</title>
</head>
<body>
	<%!String[] ids = { "010020199601026929", "010020199711126928" };%>
	<form action="result.jsp" method="get">
		<table border="1">
			<tr>
				<td>身份证</td>
				<td>生日</td>
			</tr>
			<tr>
				<td name="id1"><%=ids[0]%></td>
				<td name="date1"><%=ids[0].substring(6, 10) + "-" + ids[0].substring(11, 12) + "-" + ids[0].substring(13, 14)%></td>
			</tr>
			<tr>
				<td name="id2"><%=ids[1]%></td>
				<td name="date2"><%=ids[1].substring(6, 10) + "-" + ids[1].substring(11, 12) + "-" + ids[1].substring(13, 14)%></td>
			</tr>
			</table>
	</form>
</body>
</html>