<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-12-05
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<html>
<head>
    <title>删除成功</title>
</head>
<body>
<%
String id[]=request.getParameterValues("check");
Context ctx=null;
DataSource ds=null;
Statement stmt=null;
ResultSet rs=null;
Connection con=null;
try {
    ctx = new InitialContext();
    ds = (DataSource)ctx.lookup("java:comp/env/jdbc/homework1");
    con = ds.getConnection();//创建数据库连接
    stmt = con.createStatement();
    for(int n=0;n<id.length;n++) {
        stmt.executeUpdate("delete from news where id ="+id[n]+";");
        out.print("已删除,编号为"+ id[n]+ "的文章<br/>");
    }%>
    删除成功！<a href="admin.jsp">返回管理页面</a>
    <%
}catch(Exception e){
        out.print(e);
    }finally{
        if(rs!=null){
            rs.close();
        }
        if(stmt!=null){
            stmt.close();
        }
        if(con!=null){
            con.close();
        }
    }
%>
</body>
</html>
