<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.domain.Room_Info" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>
<body>
<!-- main wrapper -->
<div class="wrapper">
    <!-- header -->
    <header class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
                        <div class="header-location"><i class="fa fa-home"></i> <a href="#">酒店</a></div>
                        <div class="header-email"><i class="fa fa-envelope-o"></i> <a href="mailto:support@email.com">support@email.com</a>
                        </div>
                        <div class="header-phone"><i class="fa fa-phone"></i> <a href="#">12345678</a></div>
                    </div>
                    <div class="col-lg-3 col-md-8 col-sm-8 col-xs-12 pull-right">
                        <div class="header-social pull-right">
                            <% if (session.getAttribute("username") == null) {%>
                            <a href="register.jsp">注册</a>
                            <a href="login.jsp?curUrl=${pageContext.request.requestURI}">登陆</a>
                            <% } else {%>
                            欢迎 ${sessionScope.username}
                            <a href="logout?curUrl=${pageContext.request.requestURI}">注销</a>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <nav class="navbar navbar-universal navbar-custom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo"><a href="index.jsp" class="navbar-brand page-scroll"><img
                                    src="images/logo/logo.png" alt="logo"></a></div>
                        </div>
                        <div class="col-lg-9">
                            <div class="navbar-header">
                                <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse"
                                        class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span
                                        class="icon-bar"></span><span class="icon-bar"></span><span
                                        class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse navbar-main-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="index.jsp">主页</a></li>
                                    <li><a href="about-us.jsp">关于我们</a></li>
                                    <li><a href="best-rooms.jsp">房间介绍</a></li>
                                    <li><a href="book-rooms-detail.jsp">房间预定</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- /header -->
    <!-- breadcrumbs -->
    <section class="breadcrumbs" style="background-image: url(images/breadcrumbs/reservation.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="h1">房间查询</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <li class="active">房间查询</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <section class="contact-block">
        <div class="container">
            <div class="contact-block_form">
                <div class="container-fluid marg50">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><h2 class="h2">以下是可预定房间</h2></div>
                    <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1"></div>
                    <div class="col-lg-8 col-md-8 col-sm-11 col-xs-11">
                        <table class="table table-striped table-bordered table-hover">
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
                                <%--<td><a href="QueryPre_Book?id=<%=room_infos.get(i).getRoom_id()%>">预订</a></td>--%>
                                <td>
                                    <a href="book-rooms-detail.jsp?room_id=<%=room_infos.get(i).getRoom_id()%>&kind=<%=room_infos.get(i).getKind()%>&price=￥<%=room_infos.get(i).getPrice()%>">预订</a>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1"></div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /footer -->
<!-- Scripts -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="js/jquery.parallax.min.js"></script>
<script type="text/javascript" src="js/jquery.shuffle.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<!---<script type="text/javascript" src="http://ditu.google.cn/maps/api/js"></script>--->
<script type="text/javascript" src="js/map.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<!-- /Scripts -->
</body>
</html>
