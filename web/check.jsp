<%--
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
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin") && password.equals("123123")){
        request.setAttribute("username",username);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
