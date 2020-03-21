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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="./css/cart.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
</head>

<body>
	<div class="wrapper">
        	<%@ include file="header.jsp" %>
    	</div>
    <div id="content">
        <div id="J_Header" class="header tb-header">
            <h1 id="logo" class="cart-logo">
                <a href="index">
                    购物车
                </a>
            </h1>
            <div class="search" id="J_Search">
                <div class="search-triggers">
                    <ul class="ks-switchable-nav">
                        <li class="J_SearchTab">
                            <a href="">天猫</a>
                        </li>
                    </ul>
                    <s>
                        <s></s>
                    </s>
                </div>
                <div class="search-panel search-hp-panel ks-switchable-content">
                    <form action="" id="J_TSearchForm">
                        <div class="search-button">
                            <button class="btn-search" type="submit">搜 索</button>
                        </div>
                        <div class="search-panel-fields search-hp-fields search-common-panel">
                            <div class="search-combobox" id="ks-component226">
                                <div class="search-combobox-input-wrap">
                                    <input id="q" style="text-indent:26px" name="q" aria-label="请输入搜索文字" accesskey="s"
                                        autofocus="true" autocomplete="off" class="search-combobox-input">
                                </div>
                            </div>
                            <i id="J_SearchIcon" style="display: inline;"></i>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="cart-layout-TB">
            <div id="J_Cart" class="cart">
                <div id="crumbs">
                    <strong>您的位置：</strong>
                    <ol class="crumbs">
                        <li><a href="//www.taobao.com">首页</a></li>
                        <li><a href="//i.taobao.com/my_taobao.htm">我的淘宝</a></li>
                        <li class="current">我的购物车</li>
                    </ol>
                    <span class="cart-tip">购物车帮您一次性完成批量购买与付款，下单更便捷，付款更简单！
                        <a href="//service.taobao.com/support/help-11746.htm?spm=a1z0d.1.0.0.ogEwpx"
                            target="_blank">如何使用购物车</a>
                    </span>
                </div>
                <div id="empty" style="display: none;">
                    <h2 data-spm-anchor-id="a1z0d.6639537.0.i0.4dc27484pa9GSf">您的购物车还是空的，赶紧行动吧！您可以：</h2>
                    <ul>
                        <li>看看 <a href="//shoucang.taobao.com/shop_collect_list.htm" target="_blank">我的收藏夹</a></li>
                        <li>看看 <a href="//trade.taobao.com/trade/itemlist/list_bought_items.htm"
                                target="_blank">已买到的宝贝</a></li>
                    </ul>
                </div>
                <div id="J_FilterBar" class="cart-filter-bar">
                    <ul id="J_CartSwitch" class="switch-cart">
                        <li class="btn-switch-cart switch-cart-0 current">
                            <a href="" class="J_MakePoint">
                                <em>全部商品</em>
                                <span class="number">1</span>
                                <span class="pipe"></span>
                            </a>
                        </li>
                        <li class="btn-switch-cart switch-cart-2 disabled">
                            <a href="" class="J_MakePoint">
                                <em>降价商品</em>
                                <span class="number">0</span>
                                <span class="pipe"></span>
                            </a>
                        </li>
                        <li class="btn-switch-cart switch-cart-4 disabled">
                            <a href="" class="J_MakePoint">
                                <em>库存紧张</em>
                                <span class="number">0</span>
                                <span class="pipe"></span>
                            </a>
                        </li>
                    </ul>
                    <div class="cart-sum">
                        <span class="pay-text">已选商品（不含运费）</span>
                        <strong class="price">
                            <em id="J_SmallTotal">
                                <span class="total-symbol">&nbsp;</span>
                                0.00
                            </em>
                        </strong>
                        <a id="J_SmallSubmit" class="submit-btn submit-btn-disabled">结&nbsp;算</a>
                    </div>
                    <div class="wrap-line">
                        <div class="floater" style="width: 123px; left: -1px;"></div>
                    </div>
                </div>
                <form action="updatenum" method="post">
                <div id="J_CartMain" class="cart-main">
                    <div class="cart-table-th">
                        <div class="wp">
                            <div class="th th-chk">
                                <div id="J_SelectAll1" class="select-all J_SelectAll">
                                    <div class="cart-checkbox">
                                        <input class="J_CheckBoxShop" id="J_SelectAllCbx1" type="checkbox"
                                            name="select-all" value="true">
                                        <label for="J_SelectAllCbx1">勾选购物车内所有商品</label>
                                    </div>
                                    &nbsp;&nbsp;全选
                                </div>
                            </div>
                            <div class="th th-item">
                                <div class="td-inner">商品信息</div>
                            </div>
                            <div class="th th-info">
                                <div class="td-inner">&nbsp;</div>
                            </div>
                            <div class="th th-price">
                                <div class="td-inner">单价</div>
                            </div>
                            <div class="th th-amount">
                                <div class="td-inner">数量</div>
                            </div>
                            <div class="th th-sum">
                                <div class="td-inner">金额</div>
                            </div>
                            <div class="th th-op">
                                <div class="td-inner">操作</div>
                            </div>
                            <div class="th th-vil hidden">
                                <div class="td-inner">购买客户信息</div>
                            </div>
                        </div>
                    </div>
                    <div id="J_OrderList">
                    	<c:forEach items="${cartlist}" var="cart">
                        <div class="J_Order clearfix order-body   ">
                            <div class="J_ItemHead shop clearfix">
                                <div class="shop-info">
                                    <div class="cart-checkbox ">
                                        <input class="J_CheckBoxShop" id="J_CheckShop_s_2981481474_1" type="checkbox">
                                        <label for="J_CheckShop_s_2981481474_1">勾选此店铺下所有商品</label>
                                    </div>&nbsp;&nbsp;<span class="icon-golden-seller" title="金牌卖家"></span>
                                    <span class="icon-enterprise-seller" title="企业店铺"></span>店铺：<a href=""
                                        target="_blank" title="WASSUP中国" class="J_MakePoint">中国淘宝</a>
                                    <span class="ww-light ww-small">
                                        <a href="" class="ww-inline ww-online">
                                            <span>旺旺在线</span>
                                        </a>
                                    </span>
                                    <span class="shop-coupon-trigger J_MyShopCoupon">
                                        <em>优惠券</em>
                                        <span class="arrow"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="order-content">
                                <div class="item-list">
                                    <div class="bundle  bundle-last ">
                                        <div class="bundle-hd">
                                            <div class="td-chk"></div>
                                            <div class="bd-title">49包邮收货返券限量<i class="icon-bd-title"></i></div>
                                            <div class="bd-promos">
                                                <div class="bd-has-promo">已享优惠:<span
                                                        class="bd-has-promo-content">送20元优惠券</span>&nbsp;&nbsp;</div>
                                                <div class="act-promo">
                                                    <div class="act-promo-wrapper">
                                                        <ul class="act-promo-hint J_ScrollingPromoHint">
                                                            <li>满49,送优惠券</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="bundle-main">
                                            <div class="item-list">
                                                <div class="item-holder">
                                                    <div
                                                        class="J_ItemBody item-body clearfix item-act  first-item  last-item   ">
                                                        <ul class="item-content clearfix">
                                                            <li class="td td-chk">
                                                                <div class="td-inner">
                                                                    <div class="cart-checkbox ">
                                                                        <input class="J_CheckBoxItem" type="checkbox">
                                                                        <label
                                                                            for="J_CheckBox_1661987328833">勾选商品</label>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-item" style="width:303px;">
                                                                <div class="td-inner">
                                                                    <div class="item-pic J_ItemPic img-loaded">
                                                                        <a href="" target="_blank"
                                                                            class="J_MakePoint J_GoldReport">
                                                                            <img src="uploads/${cart.ppic}"
                                                                                class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="" target="_blank"
                                                                                class="item-title J_GoldReport J_MakePoint">${cart.pname}</a>
                                                                        </div>
                                                                        <div class="item-other-info">
                                                                            <div class="promo-logos"></div>
                                                                            <div class="item-icon-list clearfix">
                                                                                <div
                                                                                    class="item-icons J_ItemIcons  item-icons-fixed ">
                                                                                    <span class="item-icon item-icon-0"
                                                                                        title="支持信用卡支付">
                                                                                        <img src="https://assets.alicdn.com/sys/common/icon/trade/xcard.png"
                                                                                            alt="">
                                                                                    </span>
                                                                                    <a href="" target="_blank"
                                                                                        class="item-icon item-icon-1 J_MakePoint">
                                                                                        <img src="https://img.alicdn.com/tps/i3/T1bnR4XEBhXXcQVo..-14-16.png"
                                                                                            alt="">
                                                                                    </a>
                                                                                    <a href="" target="_blank"
                                                                                        class="item-icon item-icon-2 J_MakePoint">
                                                                                        <img src="https://gtms04.alicdn.com/tps/i4/TB14MJXLVXXXXaraXXXAz6UFXXX-16-16.png"
                                                                                            alt="">
                                                                                    </a>
                                                                                    <a href="" target="_blank"
                                                                                        class="item-icon item-icon-3 J_MakePoint">
                                                                                        <img src="https://img.alicdn.com/tps/i1/T1EQA5FpVgXXceOP_X-16-16.jpg"
                                                                                            alt="">
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="item-tips"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-info">
                                                                <div class="item-props item-props-can">
                                                                    <p class="sku-line" tabindex="0"></p>
                                                                    <p class="sku-line" tabindex="0"></p><span
                                                                        tabindex="0"
                                                                        class="btn-edit-sku J_BtnEditSKU J_MakePoint"
                                                                        data-point="tbcart.8.10">修改</span>
                                                                </div>
                                                            </li>
                                                            <li class="td td-price">
                                                                <div class="td-inner">
                                                                    <div class="item-price price-promo-">
                                                                        <div class="price-content">
                                                                            <div class="price-line"><em
                                                                                    class="price-original"></em>
                                                                            </div>
                                                                            <div class="price-line"><em
                                                                                    class="J_Price price-now"
                                                                                    tabindex="0">￥${cart.pprice}</em></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-amount">
                                                                <div class="td-inner">
                                                                    <div class="amount-wrapper ">
                                                                        <div class="item-amount ">
                                                                            <a href="#" class="J_Minus no-minus">-</a>
                                                                            <input name="nums" type="text" value="${cart.cnum}"
                                                                                class="text text-amount J_ItemAmount"/>
                                                                                <input name="cids" type="hidden" value="${cart.cid}" class="stxt" />
                                                                            <a href="#" class="J_Plus plus">+</a>
                                                                        </div>
                                                                        <div class="amount-msg J_AmountMsg"></div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-sum">
                                                                <div class="td-inner">
                                                                    <em tabindex="0"
                                                                        class="J_ItemSum number">￥${cart.pprice*cart.cnum}</em>
                                                                    <div class="J_ItemLottery"></div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-op">
                                                                <div class="td-inner">
                                                                    <a title="移入收藏夹" class="btn-fav J_Fav J_MakePoint"
                                                                        href="#">移入收藏夹</a>
                                                                    <a href="deletecart?cid=${cart.cid}"
                                                                        class="J_Del J_MakePoint">删除</a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div id="J_FloatBarHolder" class="float-bar-holder">
                    <div id="J_FloatBar" class="float-bar clearfix default">
                        <div class="float-bar-wrapper">
                            <div id="J_SelectAll2" class="select-all J_SelectAll">
                                <div class="cart-checkbox">
                                    <input class="J_CheckBoxShop" id="J_SelectAllCbx2" type="checkbox" name="select-all"
                                        value="true">
                                    <label for="J_SelectAllCbx2">勾选购物车内所有商品</label>
                                </div>
                                &nbsp;全选
                            </div>
                            <div class="operations">
                                <a href="deletecartcuid?cuid=${cartcuid.cuid}" hidefocus="true" class="J_DeleteSelected">删除所有</a>
                                <a href="#" hidefocus="true" class="J_ClearInvalid hidden">清除失效宝贝</a>
                                <a href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a>
                                <a href="#" hidefocus="true" class="J_BatchShare"><input style="cursor: pointer;" type="submit" value="更新"/></a>
                            </div>
                            <div class="float-bar-right">
                                <div id="J_ShowSelectedItems" class="amount-sum">
                                    <span class="txt">已选商品</span>
                                    <em id="J_SelectedItemsCount">0</em>
                                    <span class="txt">件</span>
                                    <div class="arrow-box">
                                        <span class="selected-items-arrow"></span>
                                        <span class="arrow"></span>
                                    </div>
                                </div>
                                <div id="J_CheckCOD" class="check-cod" style="display: none;">
                                    <span class="icon-cod"></span>
                                    <span class="s-checkbox J_CheckCOD"></span>
                                    货到付款
                                </div>
                                <div class="pipe"></div>
                                <div class="price-sum">
                                    <span class="txt">合计（不含运费）：</span>
                                    <strong class="price">
                                        <em id="J_Total">
                                            <span class="total-symbol">&nbsp;</span>
                                            ${total}
                                        </em>
                                    </strong>
                                </div>
                                <div class="btn-area">
                                    <a href="javascript:void(0)" style="cursor: pointer;" id="J_Go" class="submit-btn submit-btn-disabled"
                                        aria-label="请注意如果没有选择宝贝，将无法结算" onclick="location.href='order'">
                                        <span>结&nbsp;算</span>
                                        <b></b>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            	</form>
            </div>
        </div>
    </div>
</body>

</html>
