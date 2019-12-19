<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<html>
<head>
    <title>修改新闻</title>
</head>
<body>
<%
  String id=request.getParameter("id");
   Context ctx=null;
            DataSource ds=null;
            Statement stmt=null;
            ResultSet rs=null;
            Connection con=null;
            try{
                ctx = new InitialContext();
                ds = (DataSource)ctx.lookup("java:comp/env/jdbc/homework1");
                con = ds.getConnection();//创建数据库连接
                stmt = con.createStatement();
                rs=stmt.executeQuery("select title,simply,content,type,time from news where id ="+id+";");
                rs.next();
                String title=rs.getString("title");
                String simply=rs.getString("simply");
                String content=rs.getString("content");
                String type=rs.getString("type");
                String time=rs.getString("time");
%>
<form method="post" action="UpdateSuccess.jsp">
    <table border="1">
        <tr>
            <td>编号：<%=id%></td>
        </tr>
        <tr>
            <td>标题：<input type="text" name="title" value="<%=title%>"></td>
        </tr>
        <tr>
            <td>内容简介：<input type="text" name="simply" value="<%=simply%>"></td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <textarea name="content"><%=content%></textarea>
            </td>
        </tr>
        <tr>
            <td>类型：<input type="text" name="type" value="<%=type%>"></td>
        </tr>
        <tr>
            <td>发布时间：<input type="text" name="time" value="<%=time%>"></td>
        </tr>
        <tr>
            <td>确认修改<input type="radio" name="id" value="<%=id%>"></td>
        </tr>
        <tr>
            <td><a href="UpdateSuccess.jsp?id=<%=id%>"><input type="submit" value="修改"></a></td>
        </tr>
    </table>
</form>
<%
    }catch(Exception e){
    out.print(e);
    }finally{
    if(rs!=null)
    rs.close();
    if(stmt!=null)
    stmt.close();
    if(con!=null)
    con.close();
    }
%>
</body>
</html>