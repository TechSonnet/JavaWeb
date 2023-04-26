<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2023/4/25
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function (){
            var test = $("#test");
            test.click(function (){
                $.ajax({
                    url:'/ajax',
                    type:'post',
                    data:'id=1',
                    dataTypes:'text',
                    success:function (data){
                        alert(data)
                    }
                })
            })
        })
    </script>
</head>
<body>
<input id="test" type="button" value="提交">
</body>
</html>
