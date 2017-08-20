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
    <link rel="stylesheet" type="text/css" href="../../publicFile/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../../publicFile/lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="../../publicFile/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="../../publicFile/stylesheets/premium.css">
    <script src="../../publicFile/lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="../../publicFile/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
</head>
<style>
    p{
        margin-left:600px;
        margin-top:20px;
    }
</style>
<body class="">
    <p class="">
        © 2014 <a href="http://www.portnine.com" target="_blank">Portnine</a>
        A
        <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a>
        by <a href="http://www.portnine.com" target="_blank">Portnine</a>
    </p>
</body>
</html>
