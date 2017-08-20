<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <title>注册</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="./publicFile/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="./publicFile/lib/font-awesome/css/font-awesome.css">
    <script src="./publicFile/lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="./publicFile/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="./publicFile/stylesheets/premium.css">
</head>
<body class=" theme-blue">
<script type="text/javascript">
    $(function() {
        var match = document.cookie.match(new RegExp('color=([^;]+)'));
        if(match) var color = match[1];
        if(color) {
            $('body').removeClass(function (index, css) {
                return (css.match (/\btheme-\S+/g) || []).join(' ')
            })
            $('body').addClass('theme-' + color);
        }
        $('[data-popover="true"]').popover({html: true});
    });
</script>
<style type="text/css">
    #line-chart {
        height:300px;
        width:800px;
        margin: 0px auto;
        margin-top: 1em;
    }
    .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
        color: #fff;
    }
</style>
<script type="text/javascript">
    $(function() {
        var uls = $('.sidebar-nav > ul > *').clone();
        uls.addClass('visible-xs');
        $('#main-menu').append(uls.clone());
    });
</script>
<div class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span>
            注册界面
        </span></a></div>
    <div class="navbar-collapse collapse" style="height: 1px;">
    </div>
</div>
</div>
<form action="/cr/registServlet" method="post">
    <div class="dialog">
    <div class="panel panel-default">
        <p class="panel-heading no-collapse">注册</p>
        <div class="panel-body">
            <form>
                <div class="form-group">
                    <label>姓名</label>
                    <input type="text" class="form-control span12" name="username">
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="password" class="form-control span12" name="password">
                </div>
                <div class="form-group">
                    <label>年龄</label>
                    <input type="text" class="form-control span12" name ="age">
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="text" class="form-control span12" name="email">
                </div>
                <div class="form-group">
                    <label>地址</label>
                    <input type="text" class="form-control span12" name="address">
                </div>
                <div class="form-group">
                    <label>电话</label>
                    <input type="text" class="form-control span12" name="phone">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">注册</button>
                </div>
            </form>
        </div>
    </div>
</div>
</form>
<script src="lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function() {
        $('.demo-cancel-click').click(function(){return false;});
    });
</script>
</body>
</html>
