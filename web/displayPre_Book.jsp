<%--
  Created by IntelliJ IDEA.
  User: asus1
  Date: 2017/12/28
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预订信息</title>
</head>
<body>
<%
    String kind = request.getParameter("kind");
    String price = request.getParameter("price");
%>
<form action="AffirmPre_Book" method="post">
    <input type="hidden" name="kind" value="<%=kind%>">
    <input type="hidden" name="price" value="<%=price%>">
    <input type="hidden" name="kind" value="<%=kind%>">
    <table align="center" border="0">
        <tr>
            <td>身份证</td>
            <td>${identification}</td>
        </tr>
        <tr>
            <td>入住日期</td>
            <td>${in_day}</td>
        </tr>
        <tr>
            <td>离开日期</td>
            <td>${out_day}</td>
        </tr>
        <tr>
            <td>房间种类</td>
            <td><%=kind%>
            </td>
        </tr>
        <tr>
            <td>价格</td>
            <td><%=price%>
            </td>
        </tr>
        <tr>
            <td>说明</td>
            <td><input type="text" size="40" name="addition"></td>
        </tr>
    </table>
    <div align="center"><input type="submit" value="确认订单"></div>
</form>
</body>
</html>
<!--<div align="center"><a href="AffirmPre_Book?id=${identification}&in_day=${in_day}&out_day=${out_day}&kind=<%=kind%>&price=<%=price%>">确认订单</a></div>
</body>
</html>
