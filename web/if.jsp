<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/20
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="num1" value="1"></c:set>
<c:set var="num2" value="2"></c:set>
<c:if test="${num1 > num2}">0k</c:if>
<c:if test="${num1 < num2}">fail</c:if>
<hr/>
<c:choose>
    <c:when test="${num1 > num2}">ok</c:when>
    <c:otherwise>fail</c:otherwise>
</c:choose>

</body>
</html>
