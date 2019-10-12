<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--通过一个分割符将字符串划分为数组,并遍历出来--%>
	<c:forTokens var="ele" items="blue,red,green|yellow|pink,black|white"
		delims="|">

		<c:out value="${ele}" />||

</c:forTokens>

	<br>

	<%--通过多个分割符将字符串划分问数组,并遍历出来--%>

	<c:forTokens var="ele" items="blue,red!green|yellow;pink;black|white"
		delims="|;,!">

		<c:out value="${ele}" />||

</c:forTokens>
</body>
</html>