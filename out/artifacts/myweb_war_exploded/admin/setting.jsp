<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <link rel="icon" type="image/png" href="../../../../">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- 后台标题 -->
    <title>安柯影视系统后台管理</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'>
    <meta name="viewport" content="width=device-width">

    <!-- Canonical SEO -->
    <link rel="canonical" href="../../../../product/light-bootstrap-dashboard-pro.css">

    <!--  Social tags      -->
    <meta name="keywords" content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap dashboard, bootstrap, css3 dashboard, bootstrap admin, light bootstrap dashboard, frontend, responsive bootstrap dashboard">

    <meta name="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta itemprop="description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">

    <!-- Twitter Card data -->

    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Light Bootstrap Dashboard PRO by Creative Tim">

    <meta name="twitter:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:data1" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta name="twitter:label1" content="Product Type">
    <meta name="twitter:data2" content="$29">
    <meta name="twitter:label2" content="Price">

    <!-- Open Graph data -->
    <meta property="og:title" content="Light Bootstrap Dashboard PRO by Creative Tim">
    <meta property="og:type" content="article">
    <meta property="og:description" content="Forget about boring dashboards, get an admin template designed to be simple and beautiful.">
    <meta property="og:site_name" content="Creative Tim">

    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet">

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo.css" rel="stylesheet">


    <!--     Fonts and icons     -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href='css/685fd913f1e14aebad0cc9d3713ee469.css' rel='stylesheet' type='text/css'>
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>

    <script>
        $(function () {
            $.get('findUsersServlet',function (data) {
                var qqhead = "http://q1.qlogo.cn/g?b=qq&nk="+ data.user_qq +"&s=640"
                $('#qqhead').attr('src',qqhead);
                $('#adname').html(data.user_name);
            })

            $.get('findOptionsServlet',function (data) {
                $('#sitename').val(data.sitename);
                $('#siteurl').val(data.siteurl);
                $('#describe').html(data.describe);
                $('#keyword').val(data.keyword);
                $('#copyright').val(data.copyright);
                $('#icp').val(data.icp);
                $('#cnzz').val(data.cnzz);
                $('#stage').attr('href',data.siteurl);
            })
            $('#btn1').click(function () {
                $.get('updateOptionsServlet', function () {
                    alert("修改成功");
                })
            })
        })

    </script>

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="../assets/img/full-screen-image-3.jpg">

        <div class="logo">
            <a href="javascript:;" class="logo-text">
                <!-- 系统名字 -->
                安柯解析
            </a>
        </div>
        <div class="logo logo-mini">
            <a href="javascript:;" class="logo-text">
                AK
            </a>
        </div>

        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <!-- 头像显示设置 -->
                    <img src="" id="qqhead">
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="" class="collapsed">
                        <!-- 管理员名字 -->
                        <span id="adname"></span>
                    </a>

                </div>
            </div>

            <ul class="nav">
                <li>
                    <a href="index.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>后台首页</p>
                    </a>
                </li>
                <li class="active">
                    <a class="collapse" href="setting.jsp">
                        <i class="pe-7s-plugin"></i>
                        <p>站点设置
                        </p>
                    </a>

                </li>

                <li>
                    <a class="collapse" href="interface.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>接口设置
                        </p>
                    </a>

                </li>

                <li>
                    <a class="collapse" href="title.jsp">
                        <i class="pe-7s-news-paper"></i>
                        <p>导航设置
                        </p>
                    </a>

                </li>
                <li>
                    <a class="collapse" href="user.jsp">
                        <i class="pe-7s-graph1"></i>
                        <p>管理员设置
                        </p>
                    </a>

                </li>
                <li>
                    <a class="collapse" href="" id="stage">
                        <i class="pe-7s-map-marker"></i>
                        <p>访问前台
                        </p>
                    </a>

                </li>
                <li>
                    <a class="collapse" href="logout">

                        <i class="pe-7s-close"></i>
                        <p>退出登录
                        </p>
                    </a>

                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-minimize">
                    <button id="minimizeSidebar" class="btn btn-warning btn-fill btn-round btn-icon">
                        <i class="fa fa-ellipsis-v visible-on-sidebar-regular"></i>
                        <i class="fa fa-navicon visible-on-sidebar-mini"></i>
                    </button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">站点设置</a>
                </div>
            </div>
        </nav>



        <!-- --------------------------------------分割线---------------------------------- -->

        <div class="content">
            <form  class="form-horizontal" role="form" action="updateOptionsSevlet" method="post">
                <div class="form-group">
                    <label  class="col-sm-2  control-label" >&nbsp;&nbsp;&nbsp;&nbsp;网站名字：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="sitename" placeholder="请输入网站名字" value="" name="sitename">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;网址：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="siteurl" placeholder="记得添加http://" value="" name="siteurl">
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;网站描述：</label>
                    <div class="col-sm-8">
                  <textarea rows="2" class="col-sm-12 col-xs-12" name="describe" id="describe">
                  </textarea>
                    </div>

                </div>
                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;网站关键字：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="keyword" placeholder="请输入网站关键字" value="" name="keyword">
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;版权说明：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="copyright" placeholder="请输入版权说明" value="" name="copyright">
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;ICP备案号：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="icp" placeholder="请输入ICP备案号" value="" name="icp">
                    </div>
                </div>


                <div class="form-group">
                    <label  class="col-sm-2  control-label">&nbsp;&nbsp;&nbsp;&nbsp;统计信息：</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="cnzz" placeholder="请输CNZZ信息" value="" name="cnzz">
                    </div>
                </div>


                <div class="col-sm-offset-2 col-sm-8"><input type="submit" id="btn1" name="submit" value="提交" class="btn btn-success form-control" style="background-color: #5cb85c;color: #fff;font-size: 16px"><br>
                </div>
                <!-- <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" name="" id="" value="提交"  class="btn btn-primary form-control col-sm-offset-0 col-sm-6"/>
                  </div>
                </div> -->
            </form>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    <a href="javascript:;">安柯工作室版权所有</a>
                </p>
            </div>
        </footer>

    </div>





</div>


<footer class="footer">
    <div class="container-fluid">
        <p class="copyright pull-right">
            <a href="javascript:;">安柯工作室版权所有</a>
        </p>
    </div>
</footer>

</div>
</div>

<!-- --------------------------------------分割线---------------------------------- -->


<div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title">主题设置</li>

            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>主题色</p>
                    <div class="pull-right">
                        <span class="badge filter" data-color="black"></span>
                        <span class="badge filter badge-azure" data-color="azure"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange active" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                        <span class="badge filter badge-purple" data-color="purple"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">导航背景</li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="picture/full-screen-image-1.jpg">
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="picture/full-screen-image-2.jpg">
                </a>
            </li>
            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="picture/full-screen-image-3.jpg">
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="picture/full-screen-image-4.jpg">
                </a>
            </li>



        </ul>
    </div>
</div>

</body>
<!--   Core JS Files and PerfectScrollbar library inside jquery.ui   -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>


<!--  Forms Validations Plugin -->
<script src="js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="js/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script src="js/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script src="js/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script src="js/b1362c6f-3f2c-4590-91db-3e3230213bef.js"></script>

<!--  Charts Plugin -->
<script src="js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="js/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="js/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="js/jquery-jvectormap.js"></script>

<!--  Google Maps Plugin    -->
<script src="js/aa743e8f448a4792bad10d201a7080f6.js"></script>

<!-- Wizard Plugin    -->
<script src="js/jquery.bootstrap.wizard.min.js"></script>

<!--  Bootstrap Table Plugin    -->
<script src="js/bootstrap-table.js"></script>

<!--  Plugin for DataTables.net  -->
<script src="js/jquery.datatables.js"></script>


<!--  Full Calendar Plugin    -->
<script src="js/fullcalendar.min.js"></script>

<!-- Light Bootstrap Dashboard Core javascript and methods -->
<script src="js/light-bootstrap-dashboard.js"></script>

<!--   Sharrre Library    -->
<script src="js/jquery.sharrre.js"></script>

<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="js/demo.js"></script>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-46172202-1', 'auto');
    ga('send', 'pageview');

</script>

</html>
