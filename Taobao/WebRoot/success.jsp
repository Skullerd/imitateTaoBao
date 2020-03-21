<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .content {
            width: 1190px;
            padding-top: 50px;
            margin: 0 auto;
        }

        .successInfo {
            background: linear-gradient(to right, #ff9000 0, #ff5000 100%);
            box-sizing: border-box;
            padding: 35px 20px;
            color: #fff;
        }

        .successInfo p {
            margin: 10px 0;
        }

        .btnBox {
            margin: 15px auto;
            width: 150px;
            height: 40px;
        }

        .btnBox a {
            display: block;
            width: 100%;
            height: 100%;
            text-decoration: none;
            text-align: center;
            line-height: 40px;
            border-radius: 10px;
            border: 2px solid #ff9000;
            color: #ff9000;
        }
    </style>
</head>

<body>
    <div class="content">
        <div class="successInfo">
            <p>买家已付款</p>
            <p>付款状态：成功</p>
            <p>等待卖家发货</p>
        </div>
        <div class="btnBox">
            <a href="deletecartcuid?cuid=${cartcuid.cuid}">确定</a>
        </div>
    </div>
</body>

</html>
