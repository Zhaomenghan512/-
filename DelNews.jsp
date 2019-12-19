<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-25
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<html>
<head>
    <title>删除新闻</title>
</head>
<body>
<form method="post" action="delSuccess.jsp">
    <table border="1">
        <tr>
            <td></td><td>标题</td><td>类型</td><td>发布时间</td>
        </tr>
<%
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
        rs=stmt.executeQuery("select id,title,type,time from news");
        while(rs.next()) {
            int id=rs.getInt("id");
            String title=rs.getString("title");
            String type=rs.getString("type");
            String time=rs.getString("time");

%><tr>
        <td>
            <input type="checkbox" name="check" value="<%=id%>"/>
        </td>
        <td>
            <%=title%>
        </td>
        <td>
            <%=type%>
        </td>
        <td>
            <%=time%>
        </td>
    </tr>
      <%
        }
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
        <tr><td><input type="submit" name="delete" value="删除"></td></tr>
    </table>
</form>
</body>
</html>
