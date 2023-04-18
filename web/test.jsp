<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/17
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    ArrayList<String> names = new ArrayList<>();
    names.add("zhangsan");
    names.add("lisi");
    names.add("wangwu");

    ArrayList<Integer> ages = new ArrayList<>();
    ages.add(21);
    ages.add(22);
    ages.add(23);
%>

<table>
    <tr>
        <th>姓名</th>
        <th>年龄</th>
    </tr>
    <%
        for (int i = 0; i < names.size(); i++) {
    %>
    <tr>
        <td>
            <%=names.get(i)%>
        </td>
        <td>
            <%=ages.get(i)%>
        </td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
