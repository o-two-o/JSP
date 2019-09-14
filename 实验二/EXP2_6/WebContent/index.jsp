<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">欢迎注册Web前端编程学习网站</h2>
	<form action="result.jsp" method="post">
		<table border="1">
			<tbody>
				<tr>
					<td width="101">用户名</td>
					<td width="1158"><input type="text" name="username"
						id="textfield"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="text" name="password" id="textfield2"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="sex" value="男" id="sex_0">男
						<input type="radio" name="sex" value="女" id="sex_1">女</td>
				</tr>
				<tr>
					<td>爱好</td>
					<td><input type="checkbox" name="hobby" value="唱歌"
						id="hobby_0"> 唱歌 <input type="checkbox" name="hobby"
						value="跳舞" id="hobby_1">跳舞 <input type="checkbox"
						name="hobby" value="运动" id="hobby_2">运动 <input
						type="checkbox" name="hobby" value="阅读" id="hobby_3">阅读</td>
				</tr>
				<tr>
					<td>学历</td>
					<td><select name="education" id="select">
							<option value="大学">大学</option>
							<option value="大专">大专</option>
							<option value="高中">高中</option>
							<option value="初中">初中</option>
							<option value="小学">小学</option>
					</select></td>
				</tr>
				<tr>
					<td height="45">备注说明</td>
					<td><textarea name="tip" cols="20" rows="5" id="tip"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="submit" id="submit" value="注册"> <input type="reset"
						name="reset" id="reset" value="重置"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>