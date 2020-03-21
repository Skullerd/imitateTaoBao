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
    <title>注册</title>
    <link rel="stylesheet" href="css/registe.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
    <style>

    </style>
</head>

<body>
	<div class="wrapper">
        <%@ include file="header.jsp" %>      
    </div>
    <div class="page">
        <div class="header">
            <div class="logo">
                <div class="logo-img">
                    <h1>
                        <a href="index">
                            <img src="img/login_logo.jpg" alt="">
                        </a>
                    </h1>
                </div>
                <div class="logo-msg">
                    <p>为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定 手机。如您还未绑定，请尽快完成，感谢您的理解及支持！
                    </p>
                </div>
            </div>
            <div class="content">
                <div class="content-img">
                    <img src="img/tb1.iofxuh2gk0jszfesuwqmpxa.png" alt="">
                </div>
                <div class="login-box">
                    <div class="box">
                        <div class="login-title">
                            免费注册
                        </div>
                        <form action="register" method="post">
                            <div class="message">
                                <label for="user-name1">
                                    <img src="img/1218470.png" alt="">
                                </label>
                                <input type="text" name="uname" class="username_1" value maxlength="32"
                                    value="会员名/邮箱/手机号">


                                <label for="pwd" class="pwd1">
                                    <img src="img/1197100.png" alt="">
                                </label>
                                <input type="password" name="upwd" class="pwdname_1" value maxlength="32"
                                    value="会员名/邮箱/手机号">


                                <label for="pwd" class="pwd1">
                                    <img src="img/1197100.png" alt="">
                                </label>
                                <input type="password" name="urepw" class="pwdname_1" value maxlength="32"
                                    value="会员名/邮箱/手机号">

                                <label for="e-mail" class="E-mail">
                                    <img src="img/1229326.png" alt="">
                                </label>
                                <input type="email" name="uemail" class="pwdname_1" value maxlength="32" value="">
                            </div>
                            <div class="submit">
                                <button class="TB_submit">注 册</button>
                            </div>
                            <ul>
                                <li>
                                    <span class="denglu1"><img src="img/1230529.png" alt="">微博登录</span>
                                </li>
                                <li>
                                    <span class="denglu2"><img src="img/1226611.png" alt="">支付宝登录</span>
                                </li>
                            </ul>
                            <div class="login-links">
                                <a href="#" class="a1">忘记密码</a>
                                <a href="#" class="a2">忘记会员名</a>
                                <a href="#" class="a3">免费注册</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="footer-hd">
                    <p>
                        <a href="#">阿里巴巴集团</a>
                        <span>|</span>
                        <a href="#">阿里巴巴国际站</a>
                        <span>|</span>
                        <a href="#">阿里巴巴中国站</a>
                        <span>|</span>
                        <a href="#">全球速卖通</a>
                        <span>|</span>
                        <a href="#">淘宝网</a>
                        <span>|</span>
                        <a href="#">天猫</a>
                        <span>|</span>
                        <a href="#">聚划算</a>
                        <span>|</span>
                        <a href="#">一淘</a>
                        <span>|</span>
                        <a href="#">阿里妈妈</a>
                        <span>|</span>
                        <a href="#">飞猪</a>
                        <span>|</span>
                        <a href="#">虾米</a>
                        <span>|</span>
                        <a href="#">阿里云计算</a>
                        <span>|</span>
                        <a href="#">云OS</a>
                        <span>|</span>
                        <a href="#">万网</a>
                        <span>|</span>
                        <a href="#">支付宝</a>
                        <span>|</span>
                        <a href="#">来往</a>
                    </p>
                </div>
                <div class="footer-content">
                    <a href="#">关于淘宝</a>
                    <a href="#">合作伙伴</a>
                    <a href="#">营销中心</a>
                    <a href="#">廉正举报</a>
                    <a href="#">练习客服</a>
                    <a href="#">开放平台</a>
                    <a href="#">诚征英才</a>
                    <a href="#">联系我们</a>
                    <a href="#">网站地图</a>
                    <a href="#">法律声明</a>
                    <a href="#">隐私权政策</a>
                    <span>© 2019 Taobao.com 版权所有</span>
                </div>
                <div class="footer-last">
                    <span>网络文化经营许可证：浙网文[2016]0132-032号</span>
                    <span>|</span>
                    <span>增值电信业务经营许可证：浙B2-20080224-1</span>
                    <span>|</span>
                    <span>信息网络传播视听节目许可证：1109364号</span>
                </div>
                <div class="footer-gif">
                    <img src="img/wj.gif" alt="">
                </div>
            </div>
        </div>

    </div>
</body>

</html>