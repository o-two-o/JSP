<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	语文：<input type="text" name="yw"><br>
	英语：<input type="text" name="yy"><br>
	数学：<input type="text" name="sx"><br>
	物理：<input type="text" name="wl"><br>
	化学：<input type="text" name="hx"><br>
	<input type="submit" value="提交"><input type="reset" value="重置">
</form>

	总分：${param.yw+param.yy+param.sx+param.wl+param.hx}<br>
	平均分：${param.yw+param.yy+param.sx+param.wl+param.hx/5.0}
</body>
</html>