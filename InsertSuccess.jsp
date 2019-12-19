<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.lang.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <title>添加成功</title>
</head>
<body>
<%
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String type=request.getParameter("type");
    String simply=request.getParameter("simply");
    java.util.Date currentTime = new java.util.Date();
    SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String date=formatter.format(currentTime);
    Context ctx=null;
    DataSource ds=null;
    Statement stmt=null;
    Connection con=null;
    try {
        ctx = new InitialContext();
        ds = (DataSource) ctx.lookup("java:comp/env/jdbc/homework1");
        con = ds.getConnection();//创建数据库连接
        stmt = con.createStatement();
        stmt = con.createStatement();
        String sql = "insert into news(id,title,simply,content,type,time) values(0,'"+title+"','"+simply+"','"+content+"','"+type+"','"+date+"');";
        int n=stmt.executeUpdate(sql);
        if(n>0){
%>
添加成功！<a href="admin.jsp">返回管理页</a><%
}else{
%>连接数据库失败！<%
        }
    }catch(Exception e){
        out.print(e);
    }
%>
</body>
</html>
