<%@ page import="com.domain.Pre_Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<html lang="zh-cmn-Hans">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理面板</title>
    <script type="text/javascript" charset="UTF-8" src="js/prefixfree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/base.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/rear.css"/>
    <%--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <%--<link rel="stylesheet" href="css/responsive.css">--%>
</head>
<body>
<div class="page">
    <section class="demo">
        <div class="admin-panel clearfix">
            <div class="slidebar">
                <div class="logo">
                    <a href=""></a>
                </div>
                <ul>
                    <li><a href="#BookStatus" id="BookTa" onclick="changeMenu()">预订状态</a></li>
                    <li><a href="#BookSetting" id="BookSeTa" onclick="changeMenu()">预定管理</a></li>
                    <!--                    <li><a href="#links">links</a></li>
                                        <li><a href="#comments">comments</a></li>
                                        <li><a href="#widgets">widgets</a></li>
                                        <li><a href="#users">users</a></li>
                                        <li><a href="#tools">tools</a></li>-->
                    <li><a href="#settings">账号设置</a></li>
                </ul>
            </div>
            <div class="main">
                <ul class="topbar clearfix">
                    <li><a href="#">用户信息</a></li>
                    <% if (session.getAttribute("username") != null) {%>
                    <li><%=session.getAttribute("username")%>
                    </li>
                    <%}%>           <!--                    <li><a href="#">p</a></li>
                                        <li><a href="#">o</a></li>
                                        <li><a href="#">f</a></li>
                                        <li><a href="#">n</a></li>-->
                </ul>

                <div class="mainContent clearfix">
                    <div id="BookStatus">
                        <div id="BookForm">
                            <h2 class="header"><span class="icon"></span>预定状态</h2>
                            <form id="idForm" name="idForm1" action="StaffQueryBook#BookStatus" method="post">
                                <label>顾客身份证</label>
                                <input type="text" name="identification">
                                <input type="submit" value="查询">
                            </form>
                            <table class="table">
                                <tr>
                                    <td>顾客身份证</td>
                                    <td>房间号</td>
                                    <td>入住日期</td>
                                    <td>离店日期</td>
                                    <td>房间类型</td>
                                    <td>特殊需求</td>
                                    <td>价格</td>
                                </tr>
                                <% if (request.getAttribute("pre_books") != null) {
                                    ArrayList<Pre_Book> pre_books = (ArrayList<Pre_Book>) request.getAttribute("pre_books");
                                    for (Pre_Book inf : pre_books) {
                                %>
                                <tr>
                                    <td><%=inf.getId() %>
                                    </td>
                                    <td><%= inf.getRoom_id() %>
                                    </td>
                                    <td><%=inf.getIn_day() %>
                                    </td>
                                    <td><%= inf.getOut_day() %>
                                    </td>
                                    <td><%= inf.getKind() %>
                                    </td>
                                    <td><%= inf.getRequest() %>
                                    </td>
                                    <td><%= inf.getPrice() %>
                                    </td>
                                    <td>
                                        <form id="confirm1" name="confirm1" action="StaffAffirmBook#BookStatus"
                                              method="post">
                                            <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                            <input type="hidden" name="in_day" value="<%=inf.getIn_day()%>">
                                            <input type="hidden" name="out_day" value="<%=inf.getOut_day()%>">
                                            <input type="hidden" name="room_id" value="<%=inf.getRoom_id()%>">
                                            <input type="hidden" name="kind" value="<%=inf.getKind()%>">
                                            <input type="hidden" name="addition" value="<%=inf.getRequest()%>">
                                            <input type="hidden" name="sum_price" value="<%=inf.getPrice()%>">
                                            <input type="submit" value="确认">
                                        </form>
                                    </td>
                                    <td>
                                        <form id="del1" action="StaffUpdateBook#BookStatus" method="post">
                                            <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                            <input type="submit" value="删除">
                                        </form>
                                    </td>
                                </tr>
                                <% }
                                } %>
                            </table>
                        </div>
                    </div>
                    <div id="BookSetting">
                        <div id="BookSetForm">
                            <h2 class="header">预定管理</h2>
                            <form id="typeset" action="RoomTypeSet" method="post">
                                <label>类型</label>
                                <input type="text" name="kind"><br/>
                                <label>价格</label>
                                <input type="text" name="price"><br/>
                                <label>数量</label>
                                <input type="text" name="free"><br/>
                                <input type="submit" value="确认">
                            </form>
                        </div>
                    </div>
                    <div id="settings">
                        <h2 class="header">账户设置</h2>
                    </div>
                </div>
                <ul class="statusbar">
                    <li><a href="index.jsp"></a></li>
                    <li><a href="index.jsp"></a></li>
                    <li class="profiles-setting"><a href="index.jsp">s</a></li>
                    <li class="logout"><a href="index.jsp">k</a></li>
                </ul>
            </div>
        </div>
        <script type="text/javascript">
            // (function () {
            //     var initTarget = document.getElementById("BookTa");
            //     initTarget.click();
            // })();
            $(document).ready(function () {
                // var Bookform = $("#BookForm").detach();
                $("#BookTa").trigger("click")
            })
        </script>
    </section>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="js/jquery.parallax.min.js"></script>
<script type="text/javascript" src="js/jquery.shuffle.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/changemenu.js"></script>
</body>
</html>