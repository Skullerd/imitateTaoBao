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
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .page {
            width: 100%;
            height: 100%;
        }

        .header {
            width: 1500px;
            height: 650px;
            /* border: 1px solid red; */
            margin: 0 auto;
        }

        .logo {
            width: 1200px;
            height: 75px;
            margin: auto;
            /* border: 1px solid red; */
            margin-top: 13px;
        }



        .logo img {
            width: 110px;
            height: 70px;
            background-size: 100% 100%;
            /* border: 1px solid red; */
            float: left;
        }

        .logo .logo-msg {
            width: 880px;
            height: 30px;
            background-color: #fef2f2;
            text-align: center;
            /* border: 1px solid red; */
            float: left;
            line-height: 30px;
            margin-top: 20px;
            margin-left: 50px;
        }

        .logo .logo-msg p {

            font-size: 12px;

        }

        .content {
            width: 100%;
            height: 100%;
            position: relative;
            float: left;

        }


        .content-img img {
            width: 1500px;
            height: 600px;
            background-size: 100% 100%;

        }

        .login-box {
            width: 350px;
            height: 350px;
            position: absolute;
            top: 120px;
            right: 210px;
            /* border: 1px solid red; */
            background: #e9e9e9;

        }

        .box {
            width: 300px;
            height: 300px;
            top: 25px;
            /* border: 1px solid red; */
            box-sizing: border-box;
            position: relative;
            margin: 0 auto;
        }

        .content .login-box .login-title {
            font-size: 22px;
            height: 50px;
        }

        .content .login-box .message label {
            display: block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            background: #c4c4c4;
            position: absolute;
            text-align: center;
        }

        .content .login-box .message img {
            width: 20px;
            height: 20px;
            background-size: 100% 100%;
            position: absolute;

            top: 10px;
            right: 10px
        }


        .content .login-box .message .username_1 {
            width: 240px;
            font-size: 18px;
            line-height: 38px;
            height: 38px;
            border: 1px solid #dddddd;
            border-left: none;
            padding-left: 50px;
        }

        .content .login-box .message .pwd1 {
            display: block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            background: #c4c4c4;
            position: absolute;
            text-align: center;
            margin-top: 20px;
        }

        .content .login-box .message .pwdname_1 {
            width: 240px;
            font-size: 18px;
            line-height: 38px;
            height: 38px;
            border: 1px solid #dddddd;
            border-left: none;
            /* margin-left: 40px; */
            padding-left: 50px;
            margin-top: 20px;
        }

        .content .login-box .submit button {
            width: 290px;
            height: 42px;
            display: inline-block;
            overflow: hidden;
            vertical-align: middle;
            line-height: 42px;
            font-size: 16px;
            font-weight: 700;
            color: #fff;
            background: #f40;
            border: 0;
            border-radius: 3px;
            cursor: pointer;
            zoom: 1;
            margin: 0 auto;
            margin-top: 20px;
        }

        .content .login-box ul {
            list-style: none;
            height: 16px;
            width: 300px;
            /* border: 1px solid red; */
            margin-top: 20px;

        }

        .content .login-box ul li {
            float: left;

            line-height: 16px;
            height: 16px;

        }

        .content .login-box ul li span {
            display: block;
            height: 16px;
            line-height: 16px;
            font-size: 12px;
            color: #6e6e6e
        }

        .content .login-box ul li span:hover {
            color: #f40;
        }

        .content .login-box ul li span img {
            width: 16px;
            height: 16px;
            background-size: 100% 100%；
        }

        .content .login-box .denglu2 {
            margin-left: 20px;

        }

        .content .login-box .login-links {
            width: 300px;
            height: 16px;
            margin-top: 30px;
            /* border: 1px solid red; */
            line-height: 16px;
            font-size: 12px;
        }

        .content .login-box .login-links a {
            text-decoration: none;
            color: #6e6e6e;

        }

        .content .login-box .login-links a:hover {
            color: #f40;
        }

        .content .login-box .login-links .a1 {
            margin-left: 100px;
        }

        .content .login-box .login-links .a2 {
            margin-left: 10px;
        }

        .content .login-box .login-links .a3 {
            margin-left: 10px;
        }

        .page .footer {
            width: 1500px;
            height: 167px;
            /* border: 1px solid #6e6e6e; */
            float: left;
            margin: 0 auto;



        }

        .page .footer .footer-hd {
            width: 1200px;
            height: 40px;
            border: 1px solid #6e6e6e;
            margin: 0 auto;
            border-left: none;
            border-right: none;
            line-height: 40px;
            font-size: 12px;

        }

        .page .footer .footer-hd a {
            text-decoration: none;
            color: #6e6e6e;
        }

        .page .footer .footer-hd a:hover {
            color: #f40;
        }

        .page .footer .footer-hd span {
            margin-left: 5px;
            margin-right: 5px;
            color: #6e6e6e;
            font-size: 10px
        }

        .page .footer .footer-content {
            width: 1200px;
            height: 40px;
            line-height: 40px;
            font-size: 12px;
            margin: 0 auto;
        }

        .page .footer .footer-content a {
            text-decoration: none;
            color: #6e6e6e;
        }

        .page .footer .footer-content a:hover {
            color: #f40;
        }

        .page .footer .footer-content span {
            color: #9c9c9c;
            margin-left: 50px;

        }

        .page .footer .footer-last {
            width: 1200px;
            height: 40px;
            line-height: 40px;
            font-size: 12px;
            margin: 0 auto;
        }

        .page .footer .footer-last span {
            color: #9c9c9c;
            margin-left: 2px;
            margin-right: 2px;
            font-size: 12px;
        }

        .page .footer .footer-gif {
            width: 1200px;
            height: 40px;
            line-height: 40px;
            font-size: 12px;
            margin: 0 auto;
        }
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
                    <p>为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定
                        手机。如您还未绑定，请尽快完成，感谢您的理解及支持！
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
                            密码登录
                        </div>
                        <form action="checkuser" method="post">
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
                            </div>
                            <div class="submit">
                                <button class="TB_submit">登 录</button>
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