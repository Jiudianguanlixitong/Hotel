﻿
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>房间预定</title>
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
                                        class="icon-bar"></span></button>
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
    <section class="breadcrumbs" style="background-image: url(images/breadcrumbs/best-room.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="h1">房间预定</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <!--<li><a href="#">房间预定</a><i class="fa fa-angle-right"></i></li>-->
                        <li class="active">房间预定</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- room details-->
    <section class="room-detail">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="row reservation-top">
                        <div class="module __reservation">
                            <div class="module-block">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 marg50"><h2 class="h2">${param.kind}</h2></div>
                <div class="col-lg-3 col-md-3 col-sm-3"></div>
                <%--<div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="owl-carousel owl_gallery">
                        <div class="item"><img class="img-responsive" src="images/gallery/3.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/2.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/1.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/4.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/5.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/6.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/7.jpg"></div>
                        <div class="item"><img class="img-responsive" src="images/gallery/8.jpg"></div>
                    </div>
                </div>--%>
                <div class="col-lg-6 col-md-6">
                    <div class="room-detail_overview">
                        <form action="AffirmPre_Book" method="post">
                            <input type="hidden" name="kind" value="${param.kind}">
                            <input type="hidden" name="price" value="${param.price}">
                            <input type="hidden" name="room_id" value="${param.room_id}">
                            <table class="simple">
                                <tr>
                                    <td><strong>房间号:</strong></td>
                                    <td>${param.room_id}</td>
                                </tr>
                                <tr>
                                    <td><strong>价格:</strong></td>
                                    <td><span>${param.price}</span> / a night</td>
                                </tr>
                                <tr>
                                    <td><strong>入住日期</strong></td>
                                    <td>${in_day}</td>
                                </tr>
                                <tr>
                                    <td><strong>离店日期</strong></td>
                                    <td>${out_day}</td>
                                </tr>
                                <tr>
                                    <td><strong>身份证</strong></td>
                                    <td>${identification}</td>
                                </tr>
                                <tr>
                                    <td><strong>Wi-Fi:</strong></td>
                                    <td>Avaible</td>
                                </tr>
                                <tr>
                                    <td><strong>Room Service:</strong></td>
                                    <td>Avaible</td>
                                </tr>
                                <tr>
                                    <td><strong>Breakfast:</strong></td>
                                    <td>Included</td>
                                </tr>
                                <tr>
                                    <td><strong>Laundry:</strong></td>
                                    <td>Avaible</td>
                                </tr>
                                <tr>
                                    <td><strong>Taxi to Airport:</strong></td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td>额外的需求:</td>
                                    <td><textarea class="form-control" rows="2" name="addition"></textarea></td>
                                </tr>
                                <tr>
                                    <td class="col-lg-3"></td>
                                    <%--<td><input type="submit" class="btn btn-default" value="提交"></td>--%>
                                </tr>
                            </table>
                            <div class="col-lg-4"></div>
                            <input type="submit" class="btn btn-default" value="提交">
                        </form>
                    </div>
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
<script type="text/javascript" src="js/main.js"></script>
<!-- /Scripts -->
</body>
</html>

