<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList
            <String[]> roomType = new ArrayList<>();
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
    <title>Home</title>
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
    <!-- parallax -->
    <section class="bg-parallax parallax-window">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="parallax-text">
                        <h2 class="parallax_t __white">New Grand Hotel 5*</h2>
                        <h2 class="parallax_t __green">available from 10.12.2017</h2>
                        <p>Offices parties lasting outward nothing age few resolve. Impression to discretion understood
                            to we interested he excellence. Him remarkably use projection collecting going about eat
                            forty world.</p>
                    </div>
                </div>
                <!-- planner-->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 planner">
                    <div class="planner-block">
                        <form action="QueryRoom_Info" method="post" class="form-planner form-horizontal">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label>入住时间</label>
                                        <input class="form-control __plannerInput" name="in_day" id="datetimepicker1"
                                               type="date"
                                               value="2017-12-20" placeholder="2017-12-20">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label>离店时间</label>
                                        <input class="form-control __plannerInput" name="out_day" id="datetimepicker2"
                                               type="date"
                                               value="2017-12-21" placeholder="2017-12-21">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label>房间类型</label>
                                        <div class="theme-select">
                                            <select name="kind" class="form-control __plannerSelect">
                                                <option value="all">全部</option>
                                                <option value="单人房">大床房</option>
                                                <option value="双人房">标准间</option>
                                                <option value="家庭房">家庭房</option>
                                                <option value="豪华房">豪华房</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="planner-check-availability">
                                        <input type="submit" class="btn btn-default" value="查询房间"/>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /planner-->
            </div>
        </div>
    </section>
    <!-- /parallax -->
    <!-- chose best rooms -->
    <section class="best-room">
        <div class="container">
            <div class="title-main">
                <h2 class="h2">Best Offer For Weekend<span class="title-secondary">Look Our Featured Rooms</span></h2>
            </div>
            <div class="best-room-carousel">
                <ul class="row best-room_ul">
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
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
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>${room[0][1]}</span> / two days
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/2.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[1][0]}&price=${room[1][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?best-rooms-detail.jsp?kind=${room[1][0]}&price=${room[1][1]}">${room[1][0]}</a>
                            </div>
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>${room[1][1]}</span> / two days
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
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
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>${room[2][1]}</span> / two days
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/4.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a
                                        href="book-rooms-detail.jsp?kind=${room[3][0]}&price=${room[3][1]}"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a
                                    href="book-rooms-detail.jsp?kind=${room[3][0]}&price=${room[3][1]}">${room[3][0]}</a>
                            </div>
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>${room[3][1]}</span> / two days
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/5.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Special Spa Room</a></div>
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>$199</span> / two days
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/6.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">President Double Luxury</a></div>
                            <div class="best-room_desc">Difficulty on insensible reasonable in. From as went he they.
                                Preference themselves me as thoroughly partiality considered.
                            </div>
                            <div class="best-room_price">
                                <span>$209</span> / two days
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="title-main"><h2 class="h2">Our Services<span class="title-secondary">Great. Safe. Free.</span>
            </h2></div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-globe"></i> Different Tours</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-taxi"></i> Taxi Service</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-glass"></i> Bar Included</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-life-ring"></i> Discount System</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-leaf"></i> Professional Staff</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h3 class="service_title"><i class="fa fa-eye"></i> Parking 24/7</h3>
                    <p>Improve ashamed married expense bed her comfort pursuit mrs. Four time took ye your as fail
                        lady.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- /enjoy our services -->
    <!-- testiomonials -->
</div>
<a href="managerlogin.jsp">管理员登陆</a>
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
