<%--
  Created by IntelliJ IDEA.
  User: dccif
  Date: 2017/12/18
  Time: 下午 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Page</title>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <script src="js/home.js"></script>
</head>
<body>
<h1>This is a Test page.</h1>
<form action="Test" method="post">
    <input type="submit" value="OK">
    <input type="button" value="This is a js button" onclick="changeBgcolor()">
</form>
<h2>${timeNow}</h2>
</body>
</html>
