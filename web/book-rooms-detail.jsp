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
                                <%--<form class="form-planner form-horizontal">
                                    <div class="col-md-3 col-xs-12">
                                        <div class="form-group">
                                            <label>入住时间</label>
                                            <input class="form-control __plannerInput" id="datetimepicker1" type="date"
                                                   value="2017-12-20" placeholder="2017-12-20">
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <div class="form-group">
                                            <label>离店时间</label>
                                            <input class="form-control __plannerInput" id="datetimepicker2" type="date"
                                                   value="2017-12-21" placeholder="2017-12-21">
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-6">
                                        <div class="form-group">
                                            <label>人数</label>
                                            <div class="theme-select">
                                                <select class="form-control __plannerSelect">
                                                    <option value="">1</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-6">
                                        <div class="form-group">
                                            <label>房间类型</label>
                                            <div class="theme-select">
                                                <select class="form-control __plannerSelect">
                                                    <option>标准间</option>
                                                    <option>大床房</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-xs-12">
                                        <div class="form-group">
                                            <a href="wizzard-step2.html" class="btn btn-default wizzard-search-btn">Search</a>
                                        </div>
                                    </div>
                                </form>--%>
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
    <!-- /room details -->
    <!-- chose best rooms -->
    <!--<section class="best-room">
        <div class="container">
            <h2 class="h2">Recent rooms</h2>
            <div class="best-room-carousel">
                <ul class="row best-room_ul">
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/1.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Grand super LUX</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 500</span>
                            </div>
                        </div>
                    </li>
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/2.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Special spa room</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 750</span>
                            </div>
                        </div>
                    </li>
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/3.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">President double LUXE</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 1,200</span>
                            </div>
                        </div>
                    </li>
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/4.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Grand super LUX</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 370</span>
                            </div>
                        </div>
                    </li>
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/5.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">Special spa room</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 1,610</span>
                            </div>
                        </div>
                    </li>
                    <li class="col-md-4 col-sm-6 col-xs-12 best-room_li">
                        <div class="best-room_img">
                            <a href="#"><img src="images/best-rooms/6.jpg" alt=""></a>
                            <div class="best-room_overlay">
                                <div class="overlay_icn"><a href="book-rooms-detail.jsp"></a></div>
                            </div>
                        </div>
                        <div class="best-room-info">
                            <div class="best-room_t"><a href="book-rooms-detail.jsp">President double LUXE</a></div>
                            <div class="best-room_desc">
                                At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque corrupti quos
                                dolores et quas molestias excepturi
                            </div>
                            <div class="best-room_price">
                                Night<span>$ 110</span>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>-->
    <!-- /choose best rooms -->
    <!-- footer -->
    <%--    <footer class="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-top_logo"><a href="index.jsp"><img src="images/logo/logo.png"
                                                                                  alt="Footer logo"></a></div>
                            <div class="footer-top_txt">
                                <p>Continual delighted as elsewhere am convinced unfeeling. Introduced stimulated attachment
                                    no by projection. To lady whom my mile sold four need introduced.</p>
                            </div>
                            <div class="footer-top_address">
                                <div><i class="fa fa-phone"></i> Phone: <span>8 (043) 567 - 89 - 30</span></div>
                                <div><i class="fa fa-envelope-o"></i> E-mail: <span><a href="mailto:support@email.com">support@email.com</a></span>
                                </div>
                                <div><i class="fa fa-home"></i> Location: <span>455 Martinson, Los Angeles</span></div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-top_rooms">
                                <ul>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/1.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">Grang Super Luxury</a></div>
                                            <div class="rooms_props">3 Bed / Wi-Fi / 2 - Bathroom<span>$119</span></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/2.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">President Room</a></div>
                                            <div class="rooms_props">4 Bed / Wi-Fi / 3 - Bathroom<span>$329</span></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/3.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">Spa Double Room</a></div>
                                            <div class="rooms_props">2 Bed / Wi-Fi / 2 - Bathroom<span>$749</span></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
                            <div class="footer-top_contact_form">
                                <div class="contact_form_t">Contact Form</div>
                                <form action="mail.php" method="POST" class="row form-horizontal form-wizzard">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="name" class="form-control" placeholder="Name ...">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <input type="email" name="email" class="form-control" placeholder="Email ...">
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea rows="6" name="message" class="form-control"
                                                  placeholder="Message ..."></textarea>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                                        <input type="submit" value="Send message" class="btn btn-default">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="footer-bottom_copy">Copyright &copy; 2017.Company name All rights reserved.<a
                                    target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="footer-bottom_links">
                                <a class="active" href="index.jsp">Home</a>
                                <a href="gallery.html">Gallery</a>
                                <a href="blog.html">Blog</a>
                                <a href="wizzard-step1.html">Reservation</a>
                                <a href="#">Purchase</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        </footer>--%>
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

