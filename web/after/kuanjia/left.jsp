<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="./libyan/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="./libyan/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="./stylesheets/navbar.css">
    <link rel="stylesheet" type="text/css" href="./stylesheets/premium.css">
    <script src="./libyan/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="./libyan/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
</head>
<body class="theme-blue" >
<div class="sidebar-nav">
    <ul>
        <li><a href="./menu/index.html" target = "iframeContent" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard">
        </i> 学生信息<i class="fa fa-collapse"></i></a>
        </li>
        <li>
            <ul class="dashboard-menu nav nav-list collapse in">
                <li><a href="/cr/selectStudent?pageNumber=1" target="iframeContent"><span class="fa fa-caret-right"></span>查询学生信息</a></li>
                <li ><a href="<%=basePath%>after/kuanjia/student/addStudent.jsp" target="iframeContent"><span class="fa fa-caret-right"></span>添加学生信息</a></li>
                <li ><a href="menu/caidan1/listClasses.html" target="iframeContent"><span class="fa fa-caret-right"></span> 子菜单1-3</a></li>
                <li ><a href="menu/caidan1/listClasses.html" target="iframeContent"><span class="fa fa-caret-right"></span> 子菜单1-4</a></li>
                <li ><a href="menu/caidan1/listClasses.html" target="iframeContent"><span class="fa fa-caret-right"></span> 子菜单1-5</a></li>
            </ul>
        </li>
        <li data-popover="true" data-content="Items in this group require a <strong><a href='http://portnine.com/bootstrap-themes/aircraft' target='blank'>premium license</a><strong>." rel="popover" data-placement="right">
            <a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse">
                <i class="fa fa-fw fa-fighter-jet"></i> 菜单二<i class="fa fa-collapse"></i>
            </a>
        </li>
        <li><ul class="premium-menu nav nav-list collapse">
            <li ><a href="premium-profile.html"><span class="fa fa-caret-right"></span>子菜单1-1</a></li>
            <li ><a href="premium-blog.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-blog-item.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-pricing-tables.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-upgrade-account.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-widgets.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-timeline.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-users.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-media.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-invoice.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-build.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
            <li ><a href="premium-colors.html"><span class="fa fa-caret-right"></span> 子菜单1-1</a></li>
        </ul></li>
        <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-briefcase"></i> 账号 <span class="label label-info">+3</span></a></li>
        <li><ul class="accounts-menu nav nav-list collapse">
            <li ><a href="sign-in.html"><span class="fa fa-caret-right"></span> 登录</a></li>
            <li ><a href="sign-up.html"><span class="fa fa-caret-right"></span> 注册</a></li>
            <li ><a href="reset-password.html"><span class="fa fa-caret-right"></span> 重置密码</a></li>
        </ul></li>
        <li><a href="#" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i> 菜单三<i class="fa fa-collapse"></i></a></li>
        <li><ul class="legal-menu nav nav-list collapse">
            <li ><a href="privacy-policy.html"><span class="fa fa-caret-right"></span> 菜单三-1</a></li>
            <li ><a href="terms-and-conditions.html"><span class="fa fa-caret-right"></span> 菜单三-2</a></li>
        </ul></li>
        <li><a href="help.html" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> 帮助</a></li>
        <li><a href="faq.html" class="nav-header"><i class="fa fa-fw fa-comment"></i> 问题模板</a></li>
        <li><a href="http://portnine.com/bootstrap-themes/aircraft" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>获取更多的模板</a></li>
    </ul>
</div>
</body>
</html>
