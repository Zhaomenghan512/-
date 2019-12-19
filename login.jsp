<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-18
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台登录</title>
</head>
<body>
<div>
    <form action="loginSuccess.jsp" method="post">
        <table border="1">
            <th>用户登录</th>
            <tr>
                <td>用户名：</td><td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;码：</td><td><input type="password" name="passwd"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"></td><td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
