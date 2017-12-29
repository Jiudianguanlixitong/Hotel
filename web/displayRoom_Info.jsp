<%@ page import="com.domain.Room_Info" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: asus1
  Date: 2017/12/28
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display</title>
</head>
<body>
<table align="center" border="1">
    <tr>
        <td>房间号</td>
        <td>楼层</td>
        <td>朝向</td>
        <td>房间介绍</td>
        <td>类型</td>
        <td>价格</td>
        <td>预订</td>
    </tr>
    <% ArrayList<Room_Info> room_infos = (ArrayList<Room_Info>) request.getAttribute("room_infos");
        for (int i = 0; i < room_infos.size(); i++) {
    %>
    <tr>
        <td><%=room_infos.get(i).getRoom_id() %>
        </td>
        <td><%=room_infos.get(i).getFloors() %>
        </td>
        <td><%=room_infos.get(i).getFace() %>
        </td>
        <td><%=room_infos.get(i).getFeature()%>
        </td>
        <td><%=room_infos.get(i).getKind()%>
        </td>
        <td><%=room_infos.get(i).getPrice()%>
        </td>
        <td><a href="displayPre_Book.jsp?roomId=<%=room_infos.get(i).getRoom_id()%>&kind=<%=room_infos.get(i).getKind()%>&price=<%=room_infos.get(i).getPrice()%>">预订</a>
        </td>
    </tr>
    <%
       }
    %>
</table>
</body>
</html>
