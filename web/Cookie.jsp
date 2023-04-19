<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/19
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for(Cookie cookie:cookies){
        System.out.println(cookie.getName()+": "+cookie.getValue());
    }

    Cookie cookie = new Cookie("name","zhangsan");
    response.addCookie(cookie);
%>

</body>
</html>
