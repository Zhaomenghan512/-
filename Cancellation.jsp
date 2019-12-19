<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注销成功</title>
</head>
<body>
<%
  session.removeAttribute("username");
  response.sendRedirect("login.jsp");
%>
</body>
</html>
