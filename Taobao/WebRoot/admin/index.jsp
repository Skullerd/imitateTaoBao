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
</head>

<frameset rows="*" cols="171,*" frameborder="yes" border="1" framespacing="0">
    <frame src="left.jsp" name="leftFrame" scrolling="yes" noresize="noresize" id="leftFrame" />
    <frameset rows="50,*" cols="*" framespacing="0" frameborder="no" border="0">
        <frame src="header.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
        <frame src="main.jsp" name="mainFrame" id="mainFrame" />
    </frameset>
</frameset>
<noframes>

    <body>
    </body>
</noframes>

</html>