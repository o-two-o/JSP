<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="jsp.student"%>
<%
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"
					+request.getServerName()+":"
					+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
-->

<title>Insert title here</title>

<style type="text/css">
 #a{
	border-style:solid;
	border-width:2px;
	border-color:black;
	}
.b{
	border-style:solid;
	border-width:2px;
	border-color:black;
	}
</style>

</head>
<body>
<% 
  String []s=new String[]{"学号","姓名","性别","班级","成绩"};
  out.println("<table id='a'>");
  for(int i=0;i<s.length;i++){
	  out.println("<th class='b'>");
	  out.println(s[i]);
	  out.println("</th>");
	  
  }
  ArrayList<student> array=new ArrayList<student>();
  array.add(new student(001,"李白","男",01,723.0));
  array.add(new student(002,"孟浩然","男",02,689.0));
  array.add(new student(003,"杨玉环","女",03,600.0));
   java.util.Iterator<student> i=array.iterator();
  while(i.hasNext()){
	  student s1=(student)i.next(); 
	  out.println("<tr>");
	  out.println("<td class='b'>");
	  out.println(s1.num);
	  out.println("</td>");
	  out.println("<td class='b'>");
	  out.println(s1.name);
	  out.println("</td>");
	  out.println("<td class='b'>");
	  out.println(s1.sex);
	  out.println("</td>");
	  out.println("<td class='b'>");
	  out.println(s1.cla);
	  out.println("</td>");
	  out.println("<td class='b'>");
	  out.println(s1.sore);
	  out.println("</td>");
	  out.println("</tr>");
	  
  }
  out.println("</table>");
%>

</body>
</html>