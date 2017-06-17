<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/17
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<h1>注册</h1>
<form action="user" method="post">
    <input type="hidden" name="action" value="register">
    <input type="text" name="username" placeholder="用户名"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="注册">
</form>
</body>
</html>
