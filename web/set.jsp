<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/20
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" value="zhangsan" scope="session"></c:set>
${name}<hr/>
<c:out value="${name}" ></c:out><hr/>
<c:out value="${test}" default="undefined"></c:out><hr/>

<c:remove var="name" scope="session"></c:remove>
<c:out value="${name}" default="beremoved"></c:out><hr/>

<c:catch var="error">
    <%
        int a = 10/0;
    %>
</c:catch>
${error}
</body>
</html>
