<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-18
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
</head>
<body>
<%
    if (session.getAttribute("username")==null){
        %><jsp:include page="login.jsp"/><%
    } else {
        %><jsp:include page="manager.jsp"/><%
    }
%>
</body>
</html>
