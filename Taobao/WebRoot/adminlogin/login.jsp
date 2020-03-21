<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
    <div class="login-box">
        <div class="logo-box">
            <a href="#">
                <img src="img/logo.png" alt="">
            </a>
        </div>
        <div class="login-from">
            <h1>淘宝管理员系统欢迎你！</h1>
            <form action="login" method="post">
                <div class="user-input" >
                    用户名:<input type="text" name="aname">
                </div>
                <div class="pwd-input">
                    密码:<input type="password" name="apwd">
                </div>
                <div class="submit-input">
                    <input type="submit" value="登录">
                </div>
            </form>
        </div>
    </div>
</body>

</html>
