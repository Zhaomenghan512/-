<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新闻</title>
</head>
<body>
<form action="InsertSuccess.jsp" method="post">
    <table border="1">
        <tr>
            <td>标题：<input type="text" name="title"/></td>
        </tr>
        <tr>
            <td>内容</td>
        </tr>
        <tr>
            <td><textarea name="content" id="content" cols="80" rows="30"></textarea></td>
        </tr>
        <tr>
            <td>简略内容：<input type="text" name="simply"></td>
        </tr>
        <tr><td>类型</td></tr>
        <tr>
            <td><input type="radio" name="type" value="体育"/>体育</td>
        </tr>
        <tr>
            <td><input type="radio" name="type" value="娱乐"/>娱乐</td>
        </tr>
        <tr>
            <td><input type="radio" name="type" value="股票"/>股票</td>
        </tr>
        <tr>
            <td><input type="radio" name="type" value="财经"/>财经</td>
        </tr>
        <tr>
            <td><input type="radio" name="type" value="汽车"/>汽车</td>
        </tr>
        <tr>
            <td><input type="radio" name="type" value="科技"/>科技</td>
        </tr>

        <tr>
            <td><input type="submit" name="submit" value="添加"></td>
        </tr>
    </table>
</form>
</body>
</html>
