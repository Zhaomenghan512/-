<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-18
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
</head>
<style type="text/css">
    .loginState {
        width: 10%;
        height: auto;
        float: right;
    }
    .managerArea {
        width: 80%;
        height: auto;
        margin: 2.5%;
        padding: 2.5%;
        text-align: center;
        float: left;
    }
</style>
<body>
<%
    if(session.getAttribute("username") == null){%>
        <jsp:include page="login.jsp"/><%
    }else {
%>
<div class="managerArea">
<table border="1">
    <tr><a href="InsertNews.jsp"><input  style="width:200px;height:50px" type="button" value="发布新闻"></a>
    <a href="DelNews.jsp"><input style="width:200px;height:50px" type="button" value="删除新闻"></a>
    <a href="UpdateNews.jsp"><input style="width:200px;height:50px" type="button" value="修改新闻"></a>
    <a href="SelectNews.jsp"><input type="button" style="width:200px;height:50px" value="查询新闻"></a></tr>
</table>
</div>
<div class="loginState">
    <%String user=(String)session.getAttribute("username");%>
    <%=user%>，欢迎登陆<br/>
    <a href="Cancellation.jsp"><input type="button" value="注销登陆"></a>
</div>
<%
    }
%>
</body>
</html>
