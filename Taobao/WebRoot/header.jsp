<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="top_nav_wrap">
            <div class="top_nav">
                <ul class="top_nav_l">
                    <li class="top_nav_menu china" id="select_con">
                        <span class="c_span">中国大陆</span>
                        <span class="bg_pic xsj_pic"></span>
                        <div class="country" id="gj">
                            <ul>
                                <li><a href="#">全球</a></li>
                                <li><a href="#">中国大陆</a></li>
                                <li><a href="#">香港</a></li>
                                <li><a href="#">台湾</a></li>
                                <li><a href="#">澳门</a></li>
                                <li><a href="#">马来西亚</a></li>
                                <li><a href="#">澳大利亚</a></li>
                                <li><a href="#">新加坡</a></li>
                                <li><a href="#">新西兰</a></li>
                                <li><a href="#">加拿大</a></li>
                                <li><a href="#">美国</a></li>
                                <li><a href="#">日本</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="top_nav_menu login_sign">
                        <c:choose>
						<c:when test="${not empty sessionScope.sUser}">
        					<li class="login" style="color:#f40; cursor: pointer;">${sessionScope.sUser.uname}，你好！<a href="logout" class="login">注销</a></li>
        				</c:when>
        				<c:otherwise>
							<a href="login" class="login">亲，请登录</a>
						</c:otherwise>
						</c:choose>
						<a href="register" class="sign">免费注册</a>
                    </li>
                    <li class="top_nav_menu">
                        <a href="#">手机逛淘宝</a>
                    </li>
                </ul>
                <ul class="top_nav_r">
                    <li class="top_nav_menu my_taobao" id="mytb">
                        <a href="#">我的淘宝</a>
                        <span class="bg_pic xsj_pic"></span>
                        <div class="top_nav_menu_mybaby" id="mybaby">
                            <a href="#">已买到的宝贝</a>
                            <a href="#">我的足迹</a>
                        </div>
                    </li>
                    <li class="top_nav_menu shop_cart">
                        <a href="showcart">
                            <span class="bg_pic shopCart_pic"></span>
                            <span>购物车</span>
                        </a>
                        <span class="bg_pic xsj_pic"></span>
                    </li>
                    <li class="top_nav_menu like" id="shoucan">
                        <a href="#">
                            <span class="bg_pic like_pic"></span>
                            <span>收藏夹</span>
                        </a>
                        <span class="bg_pic xsj_pic"></span>
                        <div class="top_nav_menu_collect" id="collect">
                            <a href="#">收藏的宝贝</a>
                            <a href="#">收藏的店铺</a>
                        </div>
                    </li>
                    <li class="top_nav_menu goods">
                        <a href="productlistindex">商品分类</a>
                    </li>
                    <li class="top_nav_menu cut_off">
                        <span>|</span>
                    </li>
                    <li class="top_nav_menu seller" id="mjzx">
                        <a href="#">
                            <span class="c_span">卖家中心</span>
                            <span class="bg_pic xsj_pic"></span>
                        </a>
                        <div class="top_nav_menu_sell" id="mj">
                            <a href="#">免费开店</a>
                            <a href="#">已卖出的宝贝</a>
                            <a href="#">出售中的宝贝</a>
                            <a href="#">卖家服务市场</a>
                            <a href="#">卖家培训中心</a>
                            <a href="#">已卖出的宝贝</a>
                            <a href="#">体验中心</a>
                            <a href="#">问商友</a>
                        </div>
                    </li>
                    <li class="top_nav_menu customer" id="customer_service">
                        <a href="#">
                            <span class="c_span">联系客服</span>
                            <span class="bg_pic xsj_pic"></span>
                        </a>
                        <div class="top_nav_menu_service" id="kf">
                            <a href="#">消费者客服</a>
                            <a href="#">卖家客服</a>
                        </div>
                    </li>
                    <li class="top_nav_menu web_nav" id="webnav">
                        <a href="#">
                            <span class="bg_pic web_nav_pic"></span>
                            <span>网站导航</span>
                        </a>
                        <span class="bg_pic xsj_pic"></span>
                        <div class="top_nav_menu_web" id="wzdh">
                            <div class="web_theme">
                                <h4 style="color: #fc4200;">主题市场</h4>
                                <ul>
                                    <li>
                                        <a href="#">女装<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装<span><img src="img/new.gif" /></span></a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣</a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">女装</a>
                                        <a href="#">男装</a>
                                        <a href="#">内衣<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">鞋靴</a>
                                    </li>
                                    <li>
                                        <a href="#">汽车</a>
                                        <a href="#">二手车</a>
                                        <a href="#">办公</a>
                                        <a href="#">定制</a>
                                    </li>
                                    <li>
                                        <a href="#">教育</a>
                                        <a href="#">卡卷</a>
                                        <a href="#">本地</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="web_ts">
                                <h4 style="color: #9fb838;">特色市场</h4>
                                <ul>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀</a>
                                        <a href="#">全球购<span><img src="img/hot.gif" /></span></a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀<span><img src="img/new.gif" /></span></a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">美妆秀</a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街<span><img src="img/new.gif" /></span></a>
                                        <a href="#">美妆秀</a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀</a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀</a>
                                        <a href="#">全球购</a>
                                    </li>
                                    <li>
                                        <a href="#">爱逛街</a>
                                        <a href="#">美妆秀</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="web_ali">
                                <h4 style="color: #d75696;">阿里APP</h4>
                                <ul>
                                    <li>
                                        <a href="#">淘宝<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">天猫</a>
                                        <a href="#">支付宝</a>
                                    </li>
                                    <li>
                                        <a href="#">聚划算<span><img src="img/new.gif" /></span></a>
                                        <a href="#">飞猪</a>
                                        <a href="#">蚂蚁聚宝</a>
                                    </li>
                                    <li>
                                        <a href="#">旺信</a>
                                        <a href="#">咸鱼<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">阿里钱盾</a>
                                    </li>
                                    <li>
                                        <a href="#">淘宝<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">天猫</a>
                                        <a href="#">支付宝</a>
                                    </li>
                                    <li>
                                        <a href="#">聚划算</a>
                                        <a href="#">飞猪</a>
                                        <a href="#">蚂蚁聚宝</a>
                                    </li>
                                    <li>
                                        <a href="#">旺信<span><img src="img/new.gif" /></span></a>
                                        <a href="#">咸鱼</a>
                                        <a href="#">阿里钱盾</a>
                                    </li>
                                    <li>
                                        <a href="#">网商银行</a>
                                        <a href="#">阿里邮箱<span><img src="img/new.gif" /></span></a>
                                        <a href="#">阿里众包</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="web_jctj">
                                <h4 style="color: #2e9fdb;">精彩推荐集</h4>
                                <ul>
                                    <li>
                                        <a href="#">余额宝<span><img src="img/hot.gif" /></span></a>
                                        <a href="#">大牌捡宝</a>
                                    </li>
                                    <li>
                                        <a href="#">淘公仔</a>
                                        <a href="#">浏览器</a>
                                    </li>
                                    <li>
                                        <a href="#">余额宝</a>
                                        <a href="#">大牌捡宝</a>
                                    </li>
                                    <li>
                                        <a href="#">淘公仔</a>
                                        <a href="#">浏览器</a>
                                    </li>
                                    <li>
                                        <a href="#">余额宝</a>
                                        <a href="#">大牌捡宝</a>
                                    </li>
                                    <li>
                                        <a href="#">淘公仔<span><img src="img/new.gif" /></span></a>
                                        <a href="#">浏览器<span><img src="img/new.gif" /></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

