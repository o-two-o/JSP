<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<h1>我的计算器</h1>
<hr>
<head>

<script type="text/javascript">
	    	function onClickCheck() {
		if (document.form1.num1.value == "" || document.form1.num2.value == "") {
			window.alert("该文本框里面的内容不能为空!!");
			return false;
		}
		if (Math.round(document.form1.num1.value) != document.form1.num1.value
				|| Math.round(document.form1.num2.value) != document.form1.num2.value) {
			window.alert("输入的字符非法!!");
			return false;
		}
	}
</script>


</head>
<body>
	<form name="form1" action="" method="post">
		请输入第一个数：<input type="text" name="num1"> <br> <br>
		请选择计算方式：<select name="flag">
			<option value=+>+</option>
			<option value=->-</option>
			<option value=*>*</option>
			<option value='/'>/</option>
		</select> 
		<br> <br> 
		请输入第二个数：<input type="text" name="num2"> 
		<br><br> 
		<input type="submit" value="计算" onclick="onClickCheck()"> 
		<input type="reset" value="重置">
			<br> <br> 
			结果：<input type="text" name="result" id="result">
		<%
			//接受第一个数
			String num1_get = request.getParameter("num1");
			//接受第二个数
			String num2_get = request.getParameter("num2");
			//接受运算符号
			String flag = request.getParameter("flag");
			//计算
			int num1 = 0;
			int num2 = 0;
			int result = 0;
			if (num1_get != null) {
				num1 = Integer.parseInt(num1_get);
				num2 = Integer.parseInt(num2_get);
				if (flag.equals("+")) {
					result = num1 + num2;
				} else if (flag.equals("-")) {
					result = num1 - num2;
				} else if (flag.equals("*")) {
					result = num1 * num2;
				} else {
					result = num1 / num2;
				}
				String rs=num1+""+flag+num2+"="+result;
				out.print("<br>"+rs);
				%>
				
				<!-- out.println("结果为:" + result); -->
				<script type="text/javascript">
						
						var text=document.getElementById("result");
						text.value=<%=result%>;
				</script>
				
		<%
			}
		%>
	</form>
</body>
</html>