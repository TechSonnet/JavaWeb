<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/18
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>test03</h1>
<%
    String idstr = (String) request.getAttribute("id");
    Integer id = Integer.parseInt(idstr);
    id++;
%>
<%=id%>
</body>
</html>
