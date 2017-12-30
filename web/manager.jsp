<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<html lang="zh-cmn-Hans">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理面板</title>
    <script type="text/javascript" charset="UTF-8" src="js/prefixfree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/base.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/rear.css"/>
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
                    <li><a href="#RoomStatus" id="targeted">房间状态</a></li>
                    <li><a href="#RoomDetail">房间详情</a></li>
                    <li><a href="#BookSetting">预定管理</a></li>
                    <li><a href="#UserSetting">用户管理</a></li>
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
                    <!--                    <li><a href="#">p</a></li>
                                        <li><a href="#">o</a></li>
                                        <li><a href="#">f</a></li>
                                        <li><a href="#">n</a></li>-->
                </ul>
                <div class="mainContent clearfix">
                    <div id="RoomStatus">
                        <h2 class="header"><span class="icon"></span>房间状态</h2>
                        <div class="monitor">
                            <h4>Right Now</h4>
                            <div class="clearfix">
                                <ul class="content">
                                    <li>content</li>
                                    <li class="posts"><span class="count">179</span><a href="">posts</a></li>
                                    <li class="pages"><span class="count">13</span><a href="">pages</a></li>
                                    <li class="categories"><span class="count">21</span><a href="">categories</a></li>
                                    <li class="tags"><span class="count">305</span><a href="">tags</a></li>
                                </ul>
                                <ul class="discussions">
                                    <li>discussions</li>
                                    <li class="comments"><span class="count">353</span><a href="">comments</a></li>
                                    <li class="approved"><span class="count">319</span><a href="">approved</a></li>
                                    <li class="pending"><span class="count">0</span><a href="">pending</a></li>
                                    <li class="spam"><span class="count">34</span><a href="">spam</a></li>
                                </ul>
                            </div>
                            <p>Theme <a href="">Twenty Eleven</a> with <a href="">3 widgets</a></p>
                        </div>
                        <div class="quick-press">
                            <h4>Quick Press</h4>
                            <form action="" method="post">
                                <input type="text" name="title" placeholder="Title"/>
                                <input type="text" name="content" placeholder="Content"/>
                                <input type="text" name="tags" placeholder="Tags"/>
                                <button type="button" class="save">l</button>
                                <button type="button" class="delet">m</button>
                                <button type="submit" class="submit" name="submit">Publish</button>
                            </form>
                        </div>
                    </div>
                    <div id="RoomDetail">
                        <h2 class="header">房间详情</h2>
                    </div>
                    <div id="BookSetting">
                        <h2 class="header">预定管理</h2>
                    </div>
                    <div id="UserSetting">
                        <h2 class="header">用户管理</h2>
                    </div>
                    <!--<div id="links">
                        <h2 class="header">links</h2>
                    </div>
                    <div id="comments">
                        <h2 class="header">comments</h2>
                    </div>
                    <div id="widgets">
                        <h2 class="header">widgets</h2>
                    </div>
                    <div id="users">
                        <h2 class="header">users</h2>
                    </div>
                    <div id="tools">
                        <h2 class="header">tools</h2>
                    </div>-->
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
            /*(function () {
                var initTarget = document.getElementById("targeted");
                initTarget.click();
            })();*/
        </script>
    </section>
</div>
</body>
</html>