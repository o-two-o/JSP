<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<font color="red">${sessionScope.error}</font>
	<form action="computServlet">
		<h2>请输入三角形的三条边的长度</h2>
		<p>请输入第一条边的长度<input type="text" name="length1"></p>
		<p>请输入第一条边的长度<input type="text" name="length2"></p>
		<p>请输入第一条边的长度<input type="text" name="length3"></p>
		<input type="submit" value="计算面积">
	</form>
</body>
</html>