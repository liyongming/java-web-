<%@ page import="demo.student" %>
<%@ page import="demo.classes" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<%
    int pageNumber = Integer.parseInt((String) request.getAttribute("pageNumber"));
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="./libyan/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="./libyan//font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="./stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="./stylesheets/premium.css">
    <script src="./libyan/lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="./libyan/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
</head>
<style>
    .content {
        margin-left:0px;
    }
</style>
<body>
<div class="content">
    <div class="header">
        <h1 class="page-title">Dashboard</h1>
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a> </li>
            <li class="active">Dashboard</li>
        </ul>
    </div>
    <div class="main-content">
        <div class="row">
            <div class="col-md-6">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab">
                            <div class="form-group">
                                <label >姓名</label>
                                <label><input type="text" value="" class="form-control"></label>
                            </div>
                        </form>
                    </div>
                    <p style="margin-left:500px;">
                        <a class="btn btn-info">查询</a>
                        <a class="btn btn-success">重置</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading no-collapse">列表的演示<span class="label label-warning">+10</span></div>
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>学生ID</th>
                        <th>班级名字</th>
                        <th>学生名字</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>修改删除</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<student> selectStudent = (List<student>)request.getAttribute("selectStudent");
                        for(int i = 0;i<selectStudent.size();i++){
                    %>
                    <tr>
                        <td><%=selectStudent.get(i).getStu_id()%></td>
                        <td><%=selectStudent.get(i).getClasses().getName()%></td>
                        <td><%=selectStudent.get(i).getStu_name()%></td>
                        <td><%=selectStudent.get(i).getSex()%></td>
                        <td><%=selectStudent.get(i).getAge()%></td>
                        <td> <a href="/cr/updateStudent?stu_id=<%=selectStudent.get(i).getStu_id()%>"><i class="fa fa-pencil"></i></a>
                            <a href="/cr/deleteStudent?stu_id=<%=selectStudent.get(i).getStu_id()%>" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a></td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
            <label class="info">当前是第<%=pageNumber%>页</label>
            <ul class="pagination" style="float:right">
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber-1%>">&laquo;</a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=1%>">首页</a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+0%>"><%=pageNumber+0%></a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+1%>"><%=pageNumber+1%></a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+2%>"><%=pageNumber+2%></a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+3%>"><%=pageNumber+3%></a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+4%>"><%=pageNumber+4%></a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=1%>">尾页</a></li>
                <li><a href="/cr/selectStudent?pageNumber=<%=pageNumber+1%>">&raquo;</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
