<%@ page import="com.techsonnet.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/20
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("name","zhangsan");

    User user = new User("lisi", "1", 22);
    request.setAttribute("user",user);
%>

name为：${name}<hr/>
${user}<hr/>
${user.id}
</body>
</html>
