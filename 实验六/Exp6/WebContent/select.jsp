<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Select</title>
</head>
<body>
	<div style="margin: auto; width: 80%">
		<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/testdb?serverTimezone=Asia/Shanghai"
			user="root" password="" />
	<c:set var="empId" value="23" />
		<sql:query dataSource="${connection }" var="result">
			Select * from employees where age=?;
			<sql:param value="${empId }" />
		</sql:query>
		
		<table border="1" width="100%">
			<tr>
				<th>名字</th>
				<th>年龄</th>
				<th>薪水</th>
				<th>地址</th>
			</tr>

			<c:forEach var="row" items="${result.rows }">
				<tr>
					<td><c:out value="${row.name }" /></td>
					<td><c:out value="${row.age }" /></td>
					<td><c:out value="${row.salary }" /></td>
					<td><c:out value="${row.address }" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>