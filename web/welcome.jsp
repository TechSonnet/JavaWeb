<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/18
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
%>
欢迎您：<%=username%>
您的SessionID为：<%=session.getId()%>
</body>
</html>
