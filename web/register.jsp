<%@ page contentType="text/html; charset=UTF-8" %>
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
                            <%--<a href="register.jsp">注册</a>--%>
                            <a href="login.jsp">登陆</a>
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
                    <h1 class="h1">注册</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <li class="active">注册</li>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><h2 class="h2">请填写些必要信息...</h2></div>
                    <div class="col-lg-3 col-md-2 col-sm-1 col-xs-1"></div>
                    <div class="col-lg-6 col-md-8 col-sm-11 col-xs-11">
                        <form action="CustomerRegister" method="post" class="form-horizontal form-wizzard">
                            <div class="row">
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="name-group" class="form-group">
                                        <label>用户名</label>
                                        <input type="text" id="username" name="new_username" class="form-control"
                                               placeholder="请输入您的用户名:"
                                               oninput="validateUsername()">
                                        <span id="user_help" class="col-lg-6 form-check"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="surname-group" class="form-group">
                                        <label>密码</label>
                                        <input type="password" name="new_password" id="pass" class="form-control"
                                               placeholder="请输入密码:">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12" id="level" class="pw-strength">
                                    <span class="pw-bar-on form-group"></span>
                                    <%--                                    <span class="pw-txt">
                                                                                    <span>弱</span>
                                                                                    <span>中</span>
                                                                                    <span>强</span>
                                                                                </span>--%>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="pass-group" class="form-group" style="margin-top: 32px">
                                        <label>确认密码</label>
                                        <input type="password" name="new_password" id="confipass" class="form-control"
                                               placeholder="请再输入一次密码:"
                                               onblur="validatePass(this,document.getElementById('confi_help'))">
                                        <span id="confi_help" class="col-lg-4 form-check"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="id-group" class="form-group">
                                        <label>身份证</label>
                                        <input type="text" name="new_id" class="form-control"
                                               placeholder="请输入您的身份证号:"
                                               onblur="validateID(this,document.getElementById('id_help'))">
                                        <span id="id_help" class="col-lg-4 form-check"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="phone-group" class="form-group">
                                        <label>真实姓名</label>
                                        <input type="text" name="new_name" class="form-control"
                                               placeholder="请输入您的真实姓名:">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-4 col-sm-12 col-xs-12">
                                    <div id="gender-group" class="form-group">
                                        <label>性别</label>
                                        <select name="new_gender" class="form-control">
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <input type="button" value="注册" class="btn btn-default" data-toggle="modal"
                                       data-target="#success" onclick="placeOrder(this.form)">
                            </div>
                        </form>
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
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<!-- /Scripts -->
</body>
</html>
