<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/19
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
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
      <iframe id="iframeTop" name="iframeTop" frameborder="0" src="./publicFile/top.html"></iframe>
      <iframe id="iframeLeft" name="iframeLeft" frameborder="0" src="./publicFile/left.html" scrolling="no"></iframe>
      <iframe id="iframeContent" name="iframeContent" frameborder="0" src="./publicFile/right.html"></iframe>
      <iframe id="iframebottom" name="iframebuttom" frameborder="0" src="./publicFile/footer.html" scrolling="no"></iframe>
    </div>
  </body>
</html>
