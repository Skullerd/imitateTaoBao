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
    <link rel="stylesheet" href="css/admin.css">
    <script language="javascript" type="text/javascript" src="js/sidebar.js"></script>
</head>

<body>
    <div id="sidebar">
        <h2>控制面版</h2>
        <div id="list">
            <h3 onclick="explodeItems('newstitle','news')" id="newstitle">产品部分</h3>
            <ul id="news">
                <li><a href="productionadd" target="mainFrame">添加产品</a></li>
                <li><a href="productionmodify" target="mainFrame">管理产品</a></li>
                <li><a href="productionlist" target="mainFrame">产品列表</a></li>
            </ul>
            <h3 onclick="explodeItems('admintitle','admin')" id="admintitle">管理员设置</h3>
            <ul id="admin">
                <li><a href="#" target="mainFrame">添加新闻</a></li>
                <li><a href="#" target="mainFrame">新闻列表</a></li>
            </ul>
        </div>
    </div>
</body>

</html>
