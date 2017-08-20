<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href=" <%=basePath%>">
    <title>后台首页</title>
</head>
<style>
    #iframeTop{
        width: 100%;
        height: 50px;
    }
    #iframeLeft{
        width:15%;
        height: 650px;
        float: left;
    }
    #iframeContent{
        width: 85%;
        height: 650px;
    }
    #iframebottom {
        width:100%;
        height:50px;
    }
</style>
<body>
<div>
    <iframe id="iframeTop" name="iframeTop" frameborder="0" src="<%=basePath%>after/kuanjia/top.jsp"></iframe>
    <iframe id="iframeLeft" name="iframeLeft" frameborder="0" src="<%=basePath%>after/kuanjia/left.jsp" scrolling="no"></iframe>
    <iframe id="iframeContent" name="iframeContent" frameborder="0" src="<%=basePath%>after/kuanjia/right.jsp"></iframe>
    <iframe id="iframebottom" name="iframebuttom" frameborder="0" src="<%=basePath%>after/kuanjia/footer.jsp" scrolling="no"></iframe>
</div>
</body>
</html>
