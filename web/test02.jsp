<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/18
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Test02</h1>
<%
    String id = request.getParameter("id");
    String[] names = request.getParameterValues("names");
    int i = Integer.parseInt(id);
    request.setAttribute("id",id);
    request.getRequestDispatcher("test03.jsp").forward(request,response);
%>
<%=id%>
<%=Arrays.toString(names)%>
</body>
</html>
