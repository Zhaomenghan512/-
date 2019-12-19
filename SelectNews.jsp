<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.List" %><%--
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
</head>
<body>
<%
		int allRecord=0;//总的记录条数,不包含查询后的
  		int totalRecord=0;//总的记录条数,包含查询后的
  		int totalPage=1;//总的页面数，包含查询后的
  		int pageIndex=1;//当前页面号，用于控制页面翻转，默认为1
        try {
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/homework1"; //数据库名
            String username = "root";  //数据库用户名
            String password = "123456";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
            Statement stmt = null;
            ResultSet rs = null;
            String id,title,time;
            String sql;
            if(conn!=null) {
                sql = "select count(*) from news;";  //查询语句
                stmt = conn.createStatement();
                rs=stmt.executeQuery(sql);
                rs.next();
                allRecord=rs.getInt(1);
                totalPage=(allRecord-1)/10+1;
                sql = "select id,title,time from news limit "+(pageIndex-1)*10+",10;";
                rs = stmt.executeQuery(sql);
%>
<div class="container">
    <div class="top-left">
        <table border="1">
        	<tr>
        		<th width="10%">编号</th>
        		<th width="60%">标题</th>
        		<th width="30%">发布时间</th>
        	</tr>
        	<%
        	while(rs.next()) {
                id=rs.getString("id");
                title = rs.getString("title");
                time = rs.getString("time");%>
        	<tr>
        		<td><%=id%></td><td><%=title%></td><td><%=time%></td>
        	</tr>
			<%}%>
			<tr>
				<td></td>
				<td>
					共<%= allRecord %>条记录&nbsp;&nbsp;&nbsp;
                    共<%= totalPage %>页&nbsp;&nbsp;&nbsp;
                    每页10条&nbsp;&nbsp;&nbsp;
                    当前第<%= pageIndex %>页&nbsp;&nbsp;&nbsp;
                    <a href="javascript:void(0);" class="turnPage" onclick="turnTopPage()">上一页</a>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:void(0);" class="turnPage" onclick="turnBottomPage()">下一页</a>&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
        </table>
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
</body>
</html>
<script type="text/javascript">
    var pageIndex=<%=pageIndex %>;
    var totalPage=<%=totalPage %>;
    console.log(pageIndex);
    //上一页
    function turnTopPage(){
        if(pageIndex==1){
            return;
        }else{
            document.getElementById("pageIndex").value=pageIndex-1;
//            document.getElementById("searchForm").submit();
        }
    }
    //下一页
    function turnBottomPage(){
        if(pageIndex>=totalPage){    
            return;
           }else{
           document.getElementById("pageIndex").value=pageIndex+1;
//         document.getElementById("searchForm").submit();
           }
    }
//     function searchKeyword(){
//         document.getElementById("pageIndex").value=1;
//         document.getElementById("searchForm").submit();
//     }
</script>
</html>