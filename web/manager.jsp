<%@ page import="com.domain.Customer" %>
<%@ page import="com.domain.Pre_Book" %>
<%@ page import="com.domain.Staff" %>
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
                    <li><a href="#RoomDetail" id="RoomTa" onclick="changeMenu()">房间设置</a></li>
                    <li><a href="#BookSetting" id="BookSeTa" onclick="changeMenu()">预定管理</a></li>
                    <li><a href="#UserSetting" id="UserTa" onclick="changeMenu()">用户管理</a></li>
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
                    <li><a href="StaffLogin">登录</a></li>
                    <!--                    <li><a href="#">p</a></li>
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
                    <div id="RoomDetail">
                        <div id="RoomDetForm">
                            <h2 class="header">房间设置</h2>
                            <form id="roomset" action="RoomTypeSet#RoomDetail" method="post">
                                <label>房间类型</label>
                                <input type="text" name="kind"><br/>
                                <label>房间价格</label>
                                <input type="text" name="price"><br/>
                                <label>房间数量</label>
                                <input type="text" name="free"><br/>
                                <input type="submit" value="确认">
                            </form>
                            <% int num = 0;
                                if (request.getAttribute("num") != null) {
                                    num = Integer.parseInt((String) request.getAttribute("num"));
                                }
                                if (request.getAttribute("kind") != null && num > 0) {
                            %>
                            <table>
                                <tr>
                                    <th>房间号</th>
                                    <th>房间楼层</th>
                                    <th>房间朝向</th>
                                    <th>房间特色</th>
                                    <th>房间类型</th>
                                    <th></th>
                                        <% for (int i = 0; i < num; i++) {
                                %>
                                    <form method="post" action="RoomInfoSet" id="infoSet">
                                <tr>
                                    <td><input type="text" name="room_id"></td>
                                    <td><input type="text" name="floors"></td>
                                    <td><input type="text" name="face"></td>
                                    <td><input type="text" name="feature"></td>
                                    <td><%= request.getAttribute("kind")%>
                                        <input type="hidden" value="<%= request.getAttribute("kind")%>">
                                        <input type="submit" value="确认">
                                    </td>
                                </tr>
                                </form>
                                <%
                                    }%>
                            </table>
                            <%
                                }
                            %>
                            </tr>
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
                    <div id="UserSetting">
                        <div id="UserForm">
                            <h2 class="header">用户管理</h2>
                            <a href="AllUser?type=cus#UserSetting">查看所有注册用户</a><br/>
                            <a href="AllUser?type=staff#UserSetting">查看所有职员</a><br/>
                            <% if (request.getAttribute("CusAll") != null) { %>
                            <table class="table">
                                <tr>
                                    <th>用户名</th>
                                    <th>真实姓名</th>
                                    <th>性别</th>
                                    <th></th>
                                </tr>
                                <% ArrayList<Customer> disCus = (ArrayList<Customer>) request.getAttribute("CusAll");
                                    for (Customer res : disCus) {
                                %>
                                <tr>
                                    <td><%=res.getUsername()%>
                                    </td>
                                    <td><%=res.getName()%>
                                    </td>
                                    <td><%=res.getGender()%>
                                    </td>
                                    <td>
                                        <input type="submit" value="删除"><br/>
                                    </td>
                                </tr>
                                <% } %>
                            </table>
                            <% } %>
                            <% if (request.getAttribute("StaffAll") != null) {%>
                            <table>
                                <tr>
                                    <th>用户名</th>
                                    <th>职位</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                <% ArrayList<Staff> disStaff = (ArrayList<Staff>) request.getAttribute("StaffAll");
                                    for (Staff res : disStaff) {
                                %>
                                <tr>
                                    <td><%= res.getUsername()%>
                                    </td>
                                    <td><%=res.getPosition()%>
                                    </td>
                                    <td>
                                        <form action="AccountSet" method="get">
                                            <input type="hidden" value="<%= res.getUsername()%>" name="username">
                                            <input type="submit" value="删除">
                                        </form>
                                    </td>
                                    <td>
                                        <form action="" method="">

                                        </form>
                                    </td>
                                </tr>
                                <%
                                    }%>
                            </table>
                            <% }
                            %>
                        </div>
                    </div>
                    <div id="settings">
                        <h2 class="header">账户设置</h2>
                    </div>
                </div>
                <ul class="statusbar">
                    <li><a href=""></a></li>
                    <li><a href=""></a></li>
                    <li class="profiles-setting"><a href="">s</a></li>
                    <li class="logout"><a href="">k</a></li>
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