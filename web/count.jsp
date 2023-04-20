<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/19
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count = (Integer)application.getAttribute("count");

    if(count == null){
        count = 1;
        application.setAttribute("count",count);
    }else {
        count++;
        application.setAttribute("count",count);
    }
%>

您是第：<%=count%> 位访客；
</body>
</html>
