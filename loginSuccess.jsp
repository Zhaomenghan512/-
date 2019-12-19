<%--
  Created by IntelliJ IDEA.
  User: 。
  Date: 2019-11-18
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<%
    Context ctx=null;
    DataSource ds=null;
    Statement stmt=null;
    ResultSet rs=null;
    Connection con=null;
    String name=request.getParameter("userName").trim();
    String password=request.getParameter("passwd").trim();
    try{
        ctx = new InitialContext();
        ds = (DataSource)ctx.lookup("java:comp/env/jdbc/homework1");
        con = ds.getConnection();//创建数据库连接
        stmt = con.createStatement();
        rs=stmt.executeQuery("select * from password where username='"+name+"'");
        if(rs.next()){
            String username=rs.getString(1);
            String passwd=rs.getString(2);
            if(name.equals(username)&&password.equals(passwd)){
                session.setAttribute("username",username);%>
登录成功，<a href="manager.jsp">进入管理页面</a>。
<%
                response.sendRedirect("admin.jsp");
            }else{
                out.print("密码输入错误！！！<br>"+"<a href=\"login.jsp\">重新登录</a>");
            }
        }else{
            out.print("<font color=red>"+name+"</font>用户不存在！！！<br>"+"请联系管理员");
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
</body>
</html>
