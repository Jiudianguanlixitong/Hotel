<%@ page import="com.domain.Customer" %>
<%@ page import="com.domain.Pre_Book" %>
<%@ page import="com.domain.Room_Type" %>
<%@ page import="com.domain.Staff" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理面板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <h3>
            欢迎来到管理界面
        </h3>
        <div class="tabbale tabs-left">
            <div id="Consoletabs">
                <ul class="nav nav-tabs">
                    <li id="UserTab" class="active">
                        <a href="#UserInfo" data-toggle="tab">个人信息</a>
                    </li>
                    <li id="BookStatusTab">
                        <a href="#BookStatus" data-toggle="tab">预定状态</a>
                    </li>
                    <li id="BookSettingTab">
                        <a href="#BookSetting" data-toggle="tab" onclick="forwardOrder()">预定管理</a>
                    </li>
                    <li id="UserSettingTab">
                        <a href="#UserSetting" data-toggle="tab">用户管理</a>
                    </li>
                    <li id="RoomSettingTab">
                        <a href="#RoomSetting" data-toggle="tab">房间管理</a>
                    </li>
                    <li id="Graph">
                        <a href="#GraphTab" data-toggle="tab">图表</a>
                    </li>
                    <li id="logout">
                        <a href="index.jsp" data-toggle="tab" onclick="backurl()">退出</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="UserInfo" class="tab-pane active">
                        <h1>Welcome</h1>
                        <% if (session.getAttribute("username") != null) {%>
                        <%=session.getAttribute("username")%>
                        <%}%>
                    </div>
                    <div id="BookStatus" class="tab-pane">
                        <div id="BookForm">
                            <h2 class="header"><span class="icon"></span>预定状态</h2>
                            <form id="idForm" name="idForm1" action="StaffQueryBook#BookStatus" method="post">
                                <div class="form-group">
                                    <label>顾客身份证</label>
                                    <input type="hidden" value="Console.jsp" name="curUrl">
                                    <input type="text" name="identification">
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn-default btn" value="查询">
                                    <%--<button id="idSend" onclick="returnTab()"></button>--%>
                                </div>
                            </form>
                            <table class="table table-bordered">
                                <tr>
                                    <td>顾客身份证</td>
                                    <td>房间号</td>
                                    <td>入住日期</td>
                                    <td>离店日期</td>
                                    <td>房间类型</td>
                                    <td>特殊需求</td>
                                    <td>价格</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <% if (request.getAttribute("pre_books") != null) {
                                    ArrayList<Pre_Book> pre_books = (ArrayList<Pre_Book>) request.getAttribute("pre_books");
                                    for (Pre_Book inf : pre_books) {
                                %>
                                <form id="confirmBook" name="confirm1" action="StaffAffirmBook#BookStatus"
                                      method="post">
                                    <tr>
                                        <td><%=inf.getId() %>
                                        </td>
                                        <td>
                                            <input type="text" name="room_id" value="<%=inf.getRoom_id()%>">
                                        </td>
                                        <td>
                                            <input type="date" name="in_day" value="<%=inf.getIn_day()%>">
                                        </td>
                                        <td>
                                            <input type="date" name="out_day" value="<%=inf.getOut_day()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="kind" value="<%=inf.getKind()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="addition" value="<%=inf.getRequest()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="sum_price" value="<%=inf.getPrice()%>">
                                        </td>
                                        <td>
                                            <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                            <a onclick="formSubmit('#confirmBook')">提交</a>
                                        </td>
                                </form>
                                </td>
                                <td>
                                    <form id="delBook" action="StaffUpdateBook#BookStatus" method="post">
                                        <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                        <%--<input type="submit" value="删除">--%>
                                        <a onclick="formSubmit('#delBook')">删除</a>
                                    </form>
                                </td>
                                </tr>
                                <% }
                                } %>
                            </table>
                        </div>
                    </div>
                    <div id="BookSetting" class="tab-pane">
                        <div id="BookSetForm">
                            <h2 class="header">预定管理</h2>
                            <% if (request.getAttribute("allBook") != null) {%>
                            <table class="table table-bordered">
                                <tr>
                                    <td>顾客身份证</td>
                                    <td>房间号</td>
                                    <td>入住日期</td>
                                    <td>离店日期</td>
                                    <td>房间类型</td>
                                    <td>特殊需求</td>
                                    <td>价格</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <%
                                    ArrayList<Pre_Book> Allpre_books = (ArrayList<Pre_Book>) request.getAttribute("allBook");
                                    for (Pre_Book inf : Allpre_books) {
                                %>
                                <form id="confirmBook" name="confirm1" action="StaffAffirmBook#BookStatus"
                                      method="post">
                                    <tr>
                                        <td><%=inf.getId() %>
                                        </td>
                                        <td>
                                            <input type="text" name="room_id" value="<%=inf.getRoom_id()%>">
                                        </td>
                                        <td>
                                            <input type="date" name="in_day" value="<%=inf.getIn_day()%>">
                                        </td>
                                        <td>
                                            <input type="date" name="out_day" value="<%=inf.getOut_day()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="kind" value="<%=inf.getKind()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="addition" value="<%=inf.getRequest()%>">
                                        </td>
                                        <td>
                                            <input type="text" name="sum_price" value="<%=inf.getPrice()%>">
                                        </td>
                                        <td>
                                            <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                            <a onclick="formSubmit('#confirmBook')">提交</a>
                                        </td>
                                </form>
                                </td>
                                <td>
                                    <form id="deltheBook" action="StaffUpdateBook#BookStatus" method="post">
                                        <input type="hidden" name="identification" value="<%=inf.getId()%>">
                                        <%--<input type="submit" value="删除">--%>
                                        <a onclick="formSubmit('#deltheBook')">删除</a>
                                    </form>
                                </td>
                                </tr>
                                <%}%>
                            </table>
                            <%}%>
                        </div>
                    </div>
                    <div id="UserSetting" class="tab-pane">
                        <div id="UserForm">
                            <h2 class="header">用户管理</h2>
                            <%--<a href="QueryAllUser?type=cus#UserSetting" id="QueryUser" onclick="location.reload()">查看所有注册用户</a><br/>--%>
                            <form action="QueryAllUser" method="post">
                                <input type="hidden" name="type" value="cus">
                                <button type="submit" class="btn btn-default">查看所有注册用户</button>
                            </form>
                            <form action="QueryAllUser" method="post">
                                <input type="hidden" name="type" value="staff">
                                <button type="submit" class="btn btn-default">查看所有员工</button>
                            </form>
                            <% if (request.getAttribute("CusAll") != null) { %>
                            <table class="table table-bordered">
                                <tr>
                                    <td>用户名</td>
                                    <td>真实姓名</td>
                                    <td>性别</td>
                                    <td></td>
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
                                        <form action=""></form>
                                        <%--<input type="submit" value="删除"><br/>--%>
                                        <a onclick="formSubmit('#')">删除</a>
                                    </td>
                                </tr>
                                <% } %>
                            </table>
                            <%}%>

                            <% if (request.getAttribute("StaffAll") != null) {%>
                            <table class="table table-bordered">
                                <tr>
                                    <th>用户名</th>
                                    <th>职位</th>
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
                                        <form action="AccountSet" id="delStaff" method="get">
                                            <input type="hidden" value="<%= res.getUsername()%>"
                                                   name="username">
                                            <%--<input type="submit" value="删除">--%>
                                            <a onclick="formSubmit('#delStaff')">删除</a>
                                        </form>
                                    </td>
                                </tr>
                                <% }%>
                                <%}%>
                            </table>

                            <!-- 按钮触发模态框 -->
                            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                添加用户
                            </button>

                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">
                                                添加员工
                                            </h4>
                                        </div>
                                        <div class="modal-body">
                                            <form method="post" action="AccountSet#UserSetting" id="addUserInfo">
                                                <div class="form-group">
                                                    <label>用户名</label>
                                                    <input type="text" name="username">
                                                </div>
                                                <div class="form-group">
                                                    <label>密码</label>
                                                    <input type="password" name="password">
                                                </div>
                                                <div class="form-group">
                                                    <label>职位</label>
                                                    <select name="position">
                                                        <option value="经理">经理</option>
                                                        <option value="前台">前台</option>
                                                    </select>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                            </button>
                                            <button type="button" class="btn btn-primary" id="UserAdd"
                                                    onclick="formSubmit('#addUserInfo')">
                                                确定
                                            </button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal -->

                            </div>
                        </div>
                    </div>
                    <div id="RoomSetting" class="tab-pane">
                        <h2 class="header">房间设置</h2>
                        <form id="QueryAllRoom" method="post" action="QueryRoomType">
                            <button type="submit" class="btn btn-default">查看所有房间</button>
                        </form>
                        <% if (request.getAttribute("allRoomType") != null) {%>
                        <table class="table table-bordered">
                            <tr>
                                <th>类型</th>
                                <th>价格</th>
                                <th>剩余数量</th>
                            </tr>
                            <% ArrayList<Room_Type> disRoom = (ArrayList<Room_Type>) request.getAttribute("allRoomType");
                                for (Room_Type res : disRoom) {
                            %>
                            <form action="UpdataRoomType" id="UpdateRoom" method="post">
                                <tr>
                                    <td><%=res.getKind()%>
                                        <input type="hidden" name="kind" value="<%=res.getKind()%>">
                                    </td>
                                    <td><input type="text" name="price" value="<%=res.getPrice()%>">
                                    </td>
                                    <td><input type="text" name="free" value="<%=res.getFree()%>">
                                    </td>
                                    <td>
                                        <%--<input type="submit" value="删除"><br/>--%>
                                        <a onclick="formSubmit('#UpdateRoom')">更新</a>
                                    </td>
                                </tr>
                            </form>
                            <%}%>
                        </table>
                        <%}%>

                        <form id="roomset" action="RoomTypeSet#RoomDetail" method="post">
                            <label>类型</label>
                            <input type="text" name="kind"><br/>
                            <label>价格</label>
                            <input type="text" name="price"><br/>
                            <label>数量</label>
                            <input type="text" name="free"><br/>
                            <input type="submit" class="btn btn-default" value="添加">
                        </form>
                        <% int num = 0;
                            if (request.getAttribute("num") != null) {
                                num = Integer.parseInt((String) request.getAttribute("num"));
                            }
                            if (request.getAttribute("kind") != null && num > 0) {
                        %>
                        <h2>请填写房间详情</h2>
                        <table class="table table-bordered">
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
                                <td>
                                    <select name="face">
                                        <option value="东">东</option>
                                        <option value="南">南</option>
                                        <option value="西">西</option>
                                        <option value="北">北</option>
                                    </select>
                                </td>
                                <td><input type="text" name="feature"></td>
                                <td><%= request.getAttribute("kind")%>
                                    <input type="hidden" value="<%= request.getAttribute("kind")%>">
                                    <%--<input type="submit" value="确认">--%>
                                </td>
                                <td>
                                    <a onclick="formSubmit('#infoSet')">确认</a>
                                </td>
                            </tr>
                            </form>
                            <%
                                }%>
                        </table>
                        <%
                            }
                        %>
                    </div>
                    <div id="GraphTab" class="tab-pane">
                        <div>
                            <h2>图表</h2>
                            <canvas id="myChart" width="400" height="400">

                            </canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Scripts -->
<!--<script type="text/javascript" src="js/moment.min.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.smartmenus.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.parallax.min.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.shuffle.min.js"></script>-->
<!--<script type="text/javascript" src="js/owl.carousel.min.js"></script>-->
<!--&lt;!&ndash;-<script type="text/javascript" src="http://ditu.google.cn/maps/api/js"></script>-&ndash;&gt;-->
<!--<script type="text/javascript" src="js/main.js"></script>-->
<script type="text/javascript" src="js/console.js"></script>
<script type="text/javascript" src="js/Chart.min.js"></script>
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">-->
<script type="text/javascript" src="js/graph.js"></script>
</body>
</html>