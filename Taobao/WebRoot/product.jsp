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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/productIndex.css">
   
    
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
</head>

<body>
<div class="wrapper">
        	<%@ include file="header.jsp" %>
    	</div>
    <div class="wrapper2">
        <div class="container">
            <div class="main-box">
                <!-- 小方块 -->
                <div class="mask"></div>

                <!-- 事件层 -->
                <div class="event-mask"></div>
            </div>

            <div class="img-list">
                <ul>
                    <li class="item active" data-src="uploads/${product.ppic}" data-clone="uploads/${product.ppic}">
                        <img style="width:100%; height:100%;" src="uploads/${product.ppic}" alt="">
                    </li>
                    <li class="item" data-src="img/big02.jpg" data-clone="img/bigMore02.jpg">
                        <img src="img/small02.jpg" alt="">
                    </li>
                    <li class="item" data-src="img/big03.jpg" data-clone="img/bigMore03.jpg">
                        <img src="img/small03.jpg" alt="">
                    </li>
                    <li class="item" data-src="img/big04.jpg" data-clone="img/bigMore04.jpg">
                        <img src="img/small04.jpg" alt="">
                    </li>
                    <li class="item" data-src="img/big05.jpg" data-clone="img/bigMore05.jpg">
                        <img src="img/small05.jpg" alt="">
                    </li>
                </ul>
            </div>

            <div class="cloneBig">

            </div>
        </div>
        <div class="productInfo">
            <div class="tb-detail-hd">
                <h1>${product.pname}</h1>
                <p class="newp">DWR防泼水面料 550蓬松度鹅绒填充</p>
            </div>
            <div class="tm-fcs-panel">
                <dl class="tm-price-panel">
                    <dt class="tb-metatit">价格</dt>
                    <dd>
                        <em class="tm-yen">￥</em>
                        <span class="tm-price">${product.pprice}</span>
                    </dd>
                </dl>
            </div>
            <div class="tb-meta">
                <dl class="tm-delivery-panel">
                    <dt class="tb-metatit">运费</dt>
                    <dd>
                        <div class="tb-postAge">
                            <span class="mui_addr_tri">
                                <span class="mui_addr_tri_1">
                                    杭州
                                    <i class="mui_addr_icon">
                                        <img src="./img/xsj.png" alt="">
                                    </i>
                                </span>
                            </span>
                        </div>
                    </dd>
                </dl>
            </div>
            <ul class="tm-ind-panel">
                <li class="tm-ind-item">
                    <div class="tm-indcon">
                        <span class="tm-label">累计评价</span>
                        <span class="tm-count">14</span>
                    </div>
                </li>
                <li class="tm-ind-item">
                    <div class="tm-indcon">
                        <span class="tm-label">送天猫积分</span>
                        <span class="tm-count style-green">949</span>
                    </div>
                </li>
            </ul>
            <div class="tb-key">
                <div class="tb-skin">
                    <div class="tb-sku">
                        <dl class="tb-prop">
                            <dt class="tb-metatit">尺码</dt>
                            <dd>
                                <ul class="J_TSaleProp">
                                    <li>
                                        <a href="#">
                                            <span>S</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>M</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>L</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>XL</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>XXL</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span>XXXL</span>
                                        </a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="tb-prop tm-img-prop">
                            <dt class="tb-metatit">颜色分类</dt>
                            <dd>
                                <ul class="J_TSaleProp tb-img">
                                    <li>
                                        <a href="#"
                                            style="background: url(https://img.alicdn.com/imgextra/i4/928417138/O1CN01ng7i8k22bFffsMaI1_!!928417138.png_40x40q90.jpg) center no-repeat;">
                                            <span>QZ1/蓝色</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            style="background: url(https://img.alicdn.com/imgextra/i1/928417138/O1CN01wZBppp22bFfkLg17K_!!928417138.png_40x40q90.jpg) center no-repeat;">
                                            <span>4NX/绿色</span>
                                        </a>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                        <dl class="tb-amount">
                            <dt class="tb-metatit">数量</dt>
                            <dd>
                                <span>
                                    <input type="text" class="tb-text mui-amount-input" value="1" maxlength="8"
                                        title="请输入购买量">
                                    <span class="mui-amount-btn">
                                        <span class="mui-amount-increase"></span>
                                        <span class="mui-amount-decrease"></span>
                                    </span>
                                    <span class="mui-amount-unit">件</span>
                                </span>
                            </dd>
                        </dl>
                        <div class="tb-action tm-clear">
                            <div class="tb-btn-buy tb-btn-sku">
                                <a id="J_LinkBuy" href="#" rel="nofollow" data-addfastbuy="true"
                                    title="点击此按钮，到下一步确认购买信息。" role="button">
                                    立即购买
                                </a>
                            </div>
                            <div class="tb-btn-basket tb-btn-sku tb-hidden">
                                <a href="addcart?pid=${product.pid}" rel="nofollow" id="J_LinkBasket" role="button">
                                    <i>
                                        <img src="./img/cart.png" alt="">
                                    </i>
                                    加入购物车
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tb-ser">
                <dl class="tm-clear">
                    <dt class="tb-metatit">服务承诺</dt>
                    <dd class="tm-laysku-dd">
                        <ul class="tb-serPromise">
                            <li><a href="#">正品保证</a></li>
                            <li><a href="#">极速退款</a></li>
                            <li><a href="#">七天无理由退换</a></li>
                        </ul>
                    </dd>
                </dl>
                <div class="tm-pay-box">
                    <div class="tm-pay">
                        <em class="pay-title">支付方式</em>
                        <em title="显示所有信息" class="pay-toggler" id="J_Toggler" style="display: inline;">></em>
                    </div>
                </div>
            </div>
            <div class="" style="margin:0 10px;color:#999;font-size: 14px;">
                检测到您当前处于非安全网络环境，部分商品信息可能不准确，请在交易支付页面再次确认商品价格信息。
            </div>
        </div>
    </div>
    <div id="bd">
        <div class="grid-s5m0">
            <div class="col-main tm-clear">
                <div id="mainwrap">
                    <div id="J_TabBarBox" style="width: 788px;">
                        <ul id="J_TabBar" class="tabbar tm-clear"
                            data-spm-anchor-id="a220o.1000855.0.i3.44c54293z6wWBZ">
                            <li tabindex="0" role="tab" class="tm-selected" aria-selected="true">
                                <a tabindex="-1" href="#description">
                                    商品详情
                                </a>
                            </li>
                            <li tabindex="0" role="tab" aria-selected="false">
                                <a tabindex="-1" href="#J_Reviews" rel="nofollow" hidefocus="true" data-index="1">
                                    累计评价
                                    <em class="J_ReviewsCount" style="display: inline;">18</em>
                                </a>
                            </li>
                            <li class="tm-qrcode-icon ">
                                <a class="tm-qr-togger">手机购买</a>
                                <img class="tm-qrcode-pic"
                                    src="http://gcodex.alicdn.com/qrcode.do?biz_code=tmallpc&amp;content=https%3A%2F%2Fpages.tmall.com%2Fwow%2Fmit%2Fact%2Fdownload%3Ftype%3Ddetail%26iframe%3D1%26key%3D602690842674%26src%3Dpcdetail%26mmstat%3Ddetail_pctab%26biz%3Dtmall%26dl_redirect%3Dhttps%253A%252F%252Fdetail.tmall.com%252Fitem.htm%253Fid%253D602690842674&amp;size=175&amp;margin=0&amp;logo_url=http%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1xrwucwMPMeJjy1XcXXXpppXa-198-198.png&amp;channel_id=1"
                                    style="display: none;">
                            </li>
                        </ul>
                    </div>
                    <div id="attributes">
                        <div class="attributes-list">
                            <div class="tm-clear tb-hidden tm_brandAttr" id="J_BrandAttr">
                                <div class="name">
                                    商品详情：
                                </div>
                            </div>
                            <div class="productInfo">
                                ${product.pcontent}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="js/productIndex.js"></script>
</body>

</html>
