<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-21
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        . {
            background-image: url("images/bg.jpg");
        }
        .top-left {
            background-color: black;
            float: left;
            width: 30%;
            height: 500px;
            margin:0 2.5% 5px 2.5%;
        }
        .top-mid {
            background-color: black;
            float: left;
            width: 30%;
            height: 500px;
            margin-bottom: 5px;
        }
        .top-right {
            background-color: black;
            width: 30%;
            height: 500px;
            float: right;
            margin:0 2.5% 5px 2.5%;
        }
        .bottom-left {
            background-color: black;
            float: left;
            width: 30%;
            height: 500px;
            margin:5px 2.5% 0 2.5%;
        }
        .bottom-mid {
            background-color: black;
            width: 30%;
            height: 500px;
            float: left;
            margin-top: 5px;
        }
        .bottom-right {
            background-color: black;
            width: 30%;
            height: 500px;
            float: right;
            margin:5px 2.5% 0 2.5%;
        }
    </style>
</head>
<body>
<%
        try {
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/homework1"; //数据库名
            String username = "root";  //数据库用户名
            String password = "123456";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
%>
<div class="container">
    <div class="top-left">
        <h4 align="center">体育</h4>
        <%
            Statement stmt = null;
            ResultSet rs = null;
            String id,title,simply;
            String sql;
            if(conn!=null) {
                sql = "SELECT id,title,simply FROM news where type='体育'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
    <div class="top-mid">
        <h4 align="center">娱乐</h4>
        <% }
            if(conn!=null) {
                stmt = null;
                rs = null;
                sql = "SELECT id,title,simply FROM news where type='娱乐'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
    <div class="top-right">
        <h4 align="center">股票</h4>
        <% }
            if(conn!=null) {
                stmt = null;
                rs = null;
                sql = "SELECT id,title,simply FROM news where type='股票'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
    <div class="bottom-left">
        <h4 align="center">财经</h4>
        <%}
            if(conn!=null) {
                stmt = null;
                rs = null;
                sql = "SELECT id,title,simply FROM news where type='财经'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
    <div class="bottom-mid">
        <h4 align="center">汽车</h4>
        <%}
            if(conn!=null) {
                stmt = null;
                rs = null;
                sql = "SELECT id,title,simply FROM news where type='汽车'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
    <div class="bottom-right">
        <h4 align="center">科技</h4>
        <%}
            if(conn!=null) {
                stmt = null;
                rs = null;
                sql = "SELECT id,title,simply FROM news where type='科技'  limit 4;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                id=rs.getString("id");
                title = rs.getString("title");
                simply = rs.getString("simply");
        %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/><%
        rs.next();
        id=rs.getString("id");
        title = rs.getString("title");
        simply = rs.getString("simply");
    %>
        <a href="news.jsp?id=<%=id%>"><%=title%></a><br/>
        <%=simply%><br/>
    </div>
</div>
<%
        }else {
            out.print("连接数据库失败！");
        }
    }catch(Exception e) {
        out.print(e);
    }
%>
%>
</body>
</html>
