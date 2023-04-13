<%--
  Created by IntelliJ IDEA.
  User: 李宁
  Date: 2023/3/30
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <style>
        input[type=text], select {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=password], select {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 50%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }


    </style>
</head>
<body>

<h1>用户注册</h1>
<form action="${pageContext.request.contextPath}/userRegister" method="post" aligh="center">
    <span style="color: red">${msg}</span><br>
    <span style="color: red">${msg1}</span><br>
    <label for="email">邮箱</label>
    <input type="text" id="email" name="email" ><br>
    <div id="div"></div>


    <label for="password">密码</label>
    <input type="password" id="password" name="password" ><br>

    <label for="checkCode">验证码</label>
    <input type="text" id="checkCode" name="checkCode" >
    <img id="checkCodeImg" src="${pageContext.request.contextPath}/checkCode">
    <a href="" id="changeImg" >看不清？</a>

    <input type="submit" value="注册" >
</form>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/vue.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/axios.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.js"></script>
<script>
    $(function() {
        $("#email").blur(function() {
            $.post("${pageContext.request.contextPath}/checkUser", {
                email : $(this).val()
            }, function(data) {
                if (data =="true") {
                    $("#div").html("该邮箱名已存在！");
                    $(this).select();
                }else{
                    $("#div").html("ok！");
                }
            });
        });
    });
</script>

</body>
</html>
