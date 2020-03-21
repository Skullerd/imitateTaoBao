<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Flash列表</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
	<div id="main">
	<form>
		<table width="200" border="0" cellpadding="0" cellspacing="3" class="datatb">
		<caption>Flash列表</caption>
  <tr>
    <th scope="col">ID</th>
    <th scope="col">商品名</th>
    <th scope="col">缩略图</th>
	<th scope="col">品牌</th>
    <th scope="col">操作</th>
    </tr>
  <c:forEach items="${productlist}" var="pro">
  <tr class="even">
    <td>${pro.pid}</td>
    <td>${pro.pname}</td>
    <td><img src="../uploads/${pro.ppic}" class="smallpic" /></td>
	<td><label>
	  ${pro.cname}
	</label></td>
    <td><a href="productiondelete?pid=${pro.pid}&ppic=${pro.ppic}"><img src="img/icon_delete.gif" />删除</a><a href="productionmodify?pid=${pro.pid}"><img src="img/icon_edit.gif" />修改</a><a href="#">添加flash展示</a></td>
    </tr>
</c:forEach>
</table>
</form>
<div class="pagenav">${pagenav}</div>
	</div>
</div>
</body>
</html>

