<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>关于我们</title>
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
    <section class="breadcrumbs" style="background-image: url(images/breadcrumbs/about.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="h1">关于我们</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <li class="active">关于我们</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- about -->
    <section class="about">
        <div class="container">
            <h2 class="h2">About Our DeluxHotel</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="about_img"><img class="img-responsive" src="images/about/1.jpg" alt=""></div>
                </div>
                <div class="col-md-6">
                    <div class="about_info">
                        <div class="about_t">From 1990 to now...</div>
                        <p>May musical arrival beloved luckily adapted him. Shyness mention married son she his started
                            now. Rose if as past near were. To graceful he elegance oh moderate attended entrance
                            pleasure. Vulgar saw fat sudden edward way played either. Thoughts smallest at or peculiar
                            relation breeding produced an. <br><br>At depart spirit on stairs. She the either are wisdom
                            praise things she before. Be mother itself vanity favour do me of. Begin was power joy after
                            had walls miles. Wise busy past both park when an ye no. Nay likely her length sooner thrown
                            lively income.</p>
                        <a class="btn btn-default" href="register.jsp">Contact us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /about -->
    <!-- Our mission -->
    <section class="mission">
        <div class="container">
            <h2 class="h2">Our Mission</h2>
            <div class="row">
                <div class="col-md-6">
                    <ul class="mission_ul">
                        <li>Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus</li>
                        <li>If you have any questiong about our products or something else</li>
                        <li>iStock customers get 15% off 6 or more credits, use the code</li>
                        <li>Cras mattis consectetur purus sit amet fermentum. Etiam porta sem</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="mission_ul">
                        <li>You can c reate various skin to use on color/parallax section easily.</li>
                        <li>This will help you to be able to create various color tone within your site.</li>
                        <li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>
                        <li>ivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- /Our mission -->
    <!-- lux banner parallax -->
    <section class="banner bg-parallax2">
        <div class="overlay"></div>
        <div class="banner-parallax">
            <div class="container">
                <div class="text-center">
                    <div class="banner-parallax_raiting">
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star"></span></a>
                        <a href="#"><span class="star"></span></a>
                    </div>
                    <h2 class="banner-parallax_t">Double Luxury Room</h2>
                    <div class="banner-parallax_price"><span>$560</span> / Night (Only This Week)</div>
                    <a href="#" class="btn btn-default">Book this room</a>
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
