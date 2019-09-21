<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title></title>
  </head>
  <body>
   用户名：<%=request.getSession().getAttribute("username") %>
   <br>
密码 ：<%=request.getSession().getAttribute("password") %>
  </body>
</html>