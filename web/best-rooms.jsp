<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<String[]> roomType = new ArrayList<>();
    roomType.add(new String[]{"双人房", "￥150"});
    roomType.add(new String[]{"单人房", "￥100"});
    roomType.add(new String[]{"家庭房", "￥200"});
    roomType.add(new String[]{"豪华房", "￥400"});
    session.setAttribute("room", roomType);
%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>房间介绍</title>
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
                    <h1 class="h1">房间介绍</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <li class="active">房间介绍</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- chose best rooms -->
    <section class="gallery best-room">
        <div class="container">
            <h2 class="h2">Best Rooms For Your Comfort</h2>
            <ul class="portfolio-sorting">
                <li><a href="#" data-group="all" class="active">All</a></li>
                <li><a href="#" data-group="double">Double</a></li>
                <li><a href="#" data-group="lux">Luxury</a></li>
                <li><a href="#" data-group="standard">Standard</a></li>
                <li><a href="#" data-group="economic">Economic</a></li>
            </ul>
            <div class="container best-room-carousel">
                <div id="grid" class="row best-room_ul best-rooms-isotope-page">
                    <div data-groups="[&quot;economic&quot;, &quot;standard&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/1.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[0][0]}&price=${room[0][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?kind=${room[0][0]}&price=${room[0][1]}">${room[0][0]}</a>
                            </div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>${room[0][1]}</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>


                    <div data-groups="[&quot;double&quot;, &quot;standard&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/4.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[1][0]}&price=${room[1][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?kind=${room[1][0]}&price=${room[1][1]}">${room[1][0]}</a>
                            </div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>${room[1][1]}</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;double&quot;, &quot;lux&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/3.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[2][0]}&price=${room[2][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?kind=${room[2][0]}&price=${room[2][1]}">${room[2][0]}</a>
                            </div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>${room[2][1]}</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;economic&quot;, &quot;double&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/2.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[3][0]}&price=${room[3][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?kind=${room[3][0]}&price=${room[3][1]}">${room[3][0]}</a>
                            </div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>${room[3][1]}</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>


                    <div data-groups="[&quot;economic&quot;, &quot;lux&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/6.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">President double LUXE</a></div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>$109</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;double&quot;, &quot;standard&quot;]"
                         class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/5.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Special spa room</a></div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>$1.449</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;lux&quot;]" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/1.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Grand super LUX</a></div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>$499</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;standard&quot;]" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/3.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">President double LUXE</a></div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>$99</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div data-groups="[&quot;economic&quot;]" class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/2.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Special spa room</a></div>
                            <div class="best-room_desc">Mr do raising article general norland my hastily. Its companions
                                say uncommonly pianoforte favourable. Education affection consulted by mr attending he
                                therefore.
                            </div>
                            <div class="best-room_price">
                                <span>$349</span> / night
                            </div>
                            <div class="best-room_footer">
                                <div class="footer_el __bed"><i class="fa fa-bed"></i> 2</div>
                                <div class="footer_el __ppl"><i class="fa fa-user"></i> 4</div>
                                <div class="footer_el __wifi">Free WiFi</div>
                                <div class="footer_el __area">60 sqm</div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
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
