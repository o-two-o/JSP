<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>SetMap</title>
</head>
<body>
	<%
		Map<String, String> map = new HashMap<String, String>();
		map.put("百度", "http://www.baidu.com");
		map.put("雅虎", "http://cn.yahoo.com");
		map.put("谷歌", "http://www.google.com");
		request.setAttribute("map", map);
	%>
	<table border="1">
		<c:forEach items="${map }" var="uri">
			<tr>
				<td><c:out value="${uri.key }" /></td>
				<td><c:out value="${uri.value }" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>