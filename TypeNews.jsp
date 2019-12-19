<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%String type=request.getParameter("type");%>
<html>
<head>
    <title><%=type%>新闻</title>
    <style type="text/css">
        .newsbox {
            width: 80%;
            height: auto;
            margin: 5%;
            padding: 5%;
            background-color: chocolate;
        }
    </style>
</head>
<body>
<jsp:include page="head.jsp"/>
<div class="newsbox">
    <table border="1">
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
                    String url = "jdbc:mysql://localhost:3306/homework1"; //数据库名
                    String username = "root";  //数据库用户名
                    String password = "123456";  //数据库用户密码
                    Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
                    if(conn!=null) {
                        Statement stmt = null;
                        ResultSet rs = null;
                        String sql = "SELECT id,title,simply FROM news where type='"+type+"';";  //查询语句
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);
                        while(rs.next()) {
                        String id=rs.getString("id");
                        String title = rs.getString("title");
                        String simply = rs.getString("simply");
            %>
        <tr>
            <td><a href="news.jsp?id=<%=id%>"><%=title%></a></td>
            <td><%=simply%></td>
        </tr>
            <%
                        }
                    }
                }catch(Exception e) {
                out.print(e);
            }
            %>
    </table>
</div>
<jsp:include page="bottom.jsp"/>
</body>
</html>
