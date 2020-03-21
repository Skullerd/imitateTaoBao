var floattop_nav = document.querySelector(".float_top_nav");
var floattop_wrap = document.querySelector(".float_top_wrap");
var navRight = document.querySelector(".right_spen_nav");
var loveStreet = document.querySelector(".ra_nav1");
var niceShop = document.querySelector(".ra_nav2");
var qualChara = document.querySelector(".ra_nav3");
var hotSell = document.querySelector(".ra_nav4");
var guessLike = document.querySelector(".ra_nav5");
var feedBack = document.querySelector(".ra_nav6");
var reportViole = document.querySelector(".ra_nav7");
var returnTop = document.querySelector(".ra_nav8")
var rightNavList = document.querySelectorAll(".right_spen_nav a");
var floatTopTimer = null;

//初始化
function init() {
  window.scrollTo(0, 0);

  searchFloatNavShow(floattop_nav);
  rightNavMove(navRight);
  downTime();

  // floatTopTimer = setInterval(function(){
  //     floattop_nav.style.width = "calc(100% - "+getScrollbarWidth()+"px)";
  // },5);
};

//倒计时
function downTime() {
  //1.0 获取事件源
  var timebox = document.querySelector(".time_box");
  //2.0 定义时间
  var time = 2 * 60 * 60; //7200秒
  //3.0 定时器
  var dingshiqi = setInterval(function () {
    //3.1
    time--; //每秒减一

    //		console.log(time)
    //3.2格式化时间
    var h = 0; //小时
    var m = 0; //分钟
    var s = 0; //秒钟

    h = Math.floor(time / 3600); //剩余的小时
    m = Math.floor((time % 3600) / 60); //剩余的分钟
    s = Math.floor(time % 60); //剩余的秒数

    h = h >= 10 ? h : "0" + h; //三目运算  条件？结果1：结果2
    m = m >= 10 ? m : "0" + m;
    s = s >= 10 ? s : "0" + s;

    // console.log("h:"+h+"-m:"+m+"-s:"+s)
    //3.3 填充时间在指定的盒子里
    timebox.innerHTML = h + "&nbsp;:&nbsp;" + m + "&nbsp;:&nbsp;" + s;
    if (time <= 0) {
      //判断time是否小于等于0
      clearInterval(dingshiqi); //停止定时器函数
      return; //终止代码
    }
  }, 1000);
}

//悬浮导航栏显示
function searchFloatNavShow(obj) {
  //1.0获取页面超出浏览器的部分高度	onscroll 滚动事件
  window.addEventListener(
    "scroll",
    function () {
      //兼容写法
      var sTop = document.body.scrollTop || document.documentElement.scrollTop;
      var searchTabUl = document.querySelector(".search_tab ul");

      //定义一个高度
      var height = 160;
      //判断sTop是否大于height
      if (sTop > height) {
        obj.style.display = "block";
      } else {
        obj.style.display = "none";
      }

      //获取盒子
      searchTabAllShow(searchTabUl);
    },
    false
  );
}

//悬浮导航栏搜索栏的li隐藏显示
function searchTabAllShow(obj) {
  var searchTabBorder = document.querySelector(".search_tab_border");
  searchTabBorder.onmouseover = function () {
    obj.style.overflow = "visible";
  };

  obj.onmouseleave = function () {
    obj.style.overflow = "hidden";
  };
}

//获取浏览器滚动条宽度
function getScrollbarWidth() {
  var odiv = document.createElement("div"), //创建一个div
    styles = {
      width: "100px",
      height: "100px",
      overflowY: "scroll" //让他有滚动条
    },
    i,
    scrollbarWidth;
  for (i in styles) odiv.style[i] = styles[i];
  document.body.appendChild(odiv); //把div添加到body中
  scrollbarWidth = odiv.offsetWidth - odiv.clientWidth; //相减
  odiv.remove(); //移除创建的div
  return scrollbarWidth; //返回滚动条宽度
}

/**
 * sTop
   390
 */
//右侧悬浮导航栏
function rightNavMove(obj) {
  window.addEventListener(
    "scroll",
    function () {
      var sTop = document.body.scrollTop || document.documentElement.scrollTop;
      var height = 390;

      if (sTop > height) {
        obj.style.position = "fixed";
        obj.style.top = "75px";
        obj.children[6].style.display = "block";
      } else {
        obj.style.position = "absolute";
        obj.style.top = "486px";
        obj.children[6].style.display = "none";
      }

      scrollNavActive();
    },
    false
  );
}

//排他
function clearActive() {
  for (var i = 0; i < rightNavList.length; i++) {
    rightNavList[i].classList.remove("active_nav");
  }
}

loveStreet.onclick = function () {
  window.scrollTo(0, 787);
  clearActive();
  this.classList.add("active_nav");
  return false;
}

niceShop.onclick = function () {
  window.scrollTo(0, 1817);
  clearActive();
  this.classList.add("active_nav");
  return false;
}

qualChara.onclick = function () {
  window.scrollTo(0, 2361);
  clearActive();
  this.classList.add("active_nav");
  return false;
}

hotSell.onclick = function () {
  window.scrollTo(0, 3138);
  clearActive();
  this.classList.add("active_nav");
  return false;
}

guessLike.onclick = function () {
  window.scrollTo(0, 3402);
  clearActive();
  this.classList.add("active_nav");
  return false;
}

returnTop.onclick = function () {
  window.scrollTo(0, 0);
  return false;
}

reportViole.onclick = feedBack.onclick = function () {
  return false;
}

//滑到对应的栏
function scrollNavActive() {
  // var sTop = document.body.scrollTop || document.documentElement.scrollTop;

  if (window.pageYOffset < 1817) {
    clearActive();
    loveStreet.classList.add("active_nav");
  } else if (window.pageYOffset >= 1816 && window.pageYOffset < 2361) {
    clearActive();
    niceShop.classList.add("active_nav");
  } else if (window.pageYOffset >= 2360 && window.pageYOffset < 3138) {
    clearActive();
    qualChara.classList.add("active_nav");
  } else if (window.pageYOffset >= 3137 && window.pageYOffset < 3402) {
    clearActive();
    hotSell.classList.add("active_nav");
  } else if (window.pageYOffset >= 3401) {
    clearActive();
    guessLike.classList.add("active_nav");
  }
}

//阻止冒泡
function stopBubble(event) {
  if (event.stopPropagation) {
    event.stopPropagation();
  } else {
    event.cancelBubble = true;
  }
}


init();