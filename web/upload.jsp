<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/23
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<form action="/upload2" method="post" enctype="multipart/form-data">
    <input name="text" type="file"  ><br>
    <input type="submit" value="上传文件">

</form>
</body>
</html>
