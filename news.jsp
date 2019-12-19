<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-25
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id=request.getParameter("id");
    try {
        Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
        String url = "jdbc:mysql://localhost:3306/homework1"; //数据库名
        String username = "root";  //数据库用户名
        String password = "123456";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
        if(conn!=null) {
            Statement stmt = null;
            ResultSet rs = null;
            String sql = "SELECT title,content FROM news where id='"+ id +"';";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            String title = rs.getString("title");
            String content = rs.getString("content");
%>
<html>
<head>
    <title><%=title%></title>
    <style type="text/css">
        .news_content {
            width: 80%;
            height: auto;
            background-color: black;
            margin: 5%;
            padding: 5%;
            font-family: "微软雅黑", "Microsoft Yahei", "Hiragino Sans GB", tahoma, arial, "宋体";
        }

    </style>
</head>
<body>
<jsp:include page="head.jsp"/>
<div>
    <h2 align="center"><%=title%></h2>
    <div class="news_content"><%=content%></div>
</div>
<jsp:include page="bottom.jsp"/>
</body>
</html>
<%
        }else {
            out.print("连接数据库失败！");
        }
    }catch(Exception e) {
        out.print(e);
    }
%>
%>