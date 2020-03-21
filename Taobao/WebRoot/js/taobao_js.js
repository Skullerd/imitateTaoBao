$(document).ready(function(e) {
  //导航栏部分
  //地区选择部分
  $("#select_con").mouseover(function(e) {
    $(this)
      .children("#gj")
      .show();
  });
  $("#select_con").mouseleave(function(e) {
    $(this)
      .children("#gj")
      .hide();
  });

  //我的淘宝部分
  $("#mytb").mouseover(function(e) {
    $(this)
      .children("#mybaby")
      .show();
  });
  $("#mytb").mouseleave(function(e) {
    $(this)
      .children("#mybaby")
      .hide();
  });

  //收藏夹部分
  $("#shoucan").mouseover(function(e) {
    $(this)
      .children("#collect")
      .show();
    $(".bg_pic.like_pic").css("background-position", "0px 12px");
  });
  $("#shoucan").mouseleave(function(e) {
    $(this)
      .children("#collect")
      .hide();
    $(".bg_pic.like_pic").css("background-position", "0px 0px");
  });

  //卖家中心部分
  $("#mjzx").mouseover(function(e) {
    $(this)
      .children("#mj")
      .show();
  });
  $("#mjzx").mouseleave(function(e) {
    $(this)
      .children("#mj")
      .hide();
  });

  //客服中心部分
  $("#customer_service").mouseover(function(e) {
    $(this)
      .children("#kf")
      .show();
  });
  $("#customer_service").mouseleave(function(e) {
    $(this)
      .children("#kf")
      .hide();
  });

  //网站导航部分
  $("#webnav").mouseover(function(e) {
    $(this)
      .children("#wzdh")
      .show();
  });
  $("#webnav").mouseleave(function(e) {
    $(this)
      .children("#wzdh")
      .hide();
  });

  //图片轮播部分
  //图片自动播放
  var num = 1;
  function autoshow() {
    num = num + 1;
    if (num > 5) {
      num = 1;
    }

    $("#adv").attr("src", "img/img" + num + ".jpg");
    $("#dot li")
      .eq(num - 1)
      .addClass("index")
      .siblings()
      .removeClass("index");
  }

  var myClock = setInterval(function() {
    autoshow();
  }, 3000);

  function next() {
    num = num + 1;
    if (num > 5) {
      num = 1;
    }
    $("#adv").attr("src", "img/img" + num + ".jpg");
    $("#dot li")
      .eq(num - 1)
      .addClass("index")
      .siblings()
      .removeClass("index");
  }

  function up() {
    num = num - 1;
    if (num < 1) {
      num = 5;
    }
    $("#adv").attr("src", "img/img" + num + ".jpg");
    $("#dot li")
      .eq(num - 1)
      .addClass("index")
      .siblings()
      .removeClass("index");
  }

  $(".btn_left").click(function() {
    up();
  });

  $(".btn_right").click(function() {
    next();
  });

  //左右按钮显示
  $("#tplb").mouseover(function(e) {
    $(this)
      .children(".btn_left")
      .show();
    $(this)
      .children(".btn_right")
      .show();
    clearInterval(myClock);
  });
  $("#tplb").mouseleave(function(e) {
    $(this)
      .children(".btn_left")
      .hide();
    $(this)
      .children(".btn_right")
      .hide();
    myClock = setInterval(function() {
      autoshow();
    }, 2000);
  });
  //小按钮点击切换
  $("#dot li").click(function() {
    num = $(this).index();
    autoshow();
  });

  //天猫部分的轮播
  //按钮部分
  $("#tmlb").mouseover(function(e) {
    $(this)
      .children(".mall_l")
      .show();
    $(this)
      .children(".mall_r")
      .show();
  });
  $("#tmlb").mouseleave(function(e) {
    $(this)
      .children(".mall_l")
      .hide();
    $(this)
      .children(".mall_r")
      .hide();
  });
  //无缝轮播部分
  var i = 0;
  var box = $("#tmul");
  var item = $("#tmul li");
  var imgwidth = item.eq(0).width();
  var oldsize = $("#tmul li").length;
  var len = oldsize * 2;

  i = oldsize;
  box.append(box.html()).css({ width: imgwidth * len, left: -imgwidth * i });

  //鼠标悬停事件
  box.hover(
    function() {
      clearInterval(mtime);
    },
    function() {
      mtime = setInterval(function() {
        i++;
        Move();
      }, 9000);
    }
  );

  //左右按钮点击事件
  $("#tmlb")
    .find(".mall_l")
    .click(function() {
      if (!box.is(":animated")) {
        i--;
        Move();
      }
    })
    .end()
    .find(".mall_r")
    .click(function() {
      if (!box.is(":animated")) {
        i++;
        Move();
      }
    });

  //导航栏点击
  $("#mall_dot li").click(function(e) {
    i = $(e.target).index() + oldsize;
    Move();
  });

  var mtime = setInterval(function() {
    i++;
    Move();
  }, 9000);

  function Move() {
    startMove();
    dotMove();
  }

  function startMove() {
    box.stop().animate({ left: -i * imgwidth }, 500, function() {
      if (i <= 0) {
        i = oldsize;
        box.css({ left: -i * imgwidth });
      }
      if (i >= len - 1) {
        i = oldsize - 1;
        box.css({ left: -i * imgwidth });
      }
    });
  }

  function dotMove() {
    //数字显示
    $(".head p span").text((i % oldsize) + 1);
    $("#mall_dot li")
      .removeClass("tm_active")
      .eq(i % oldsize)
      .addClass("tm_active");
  }

  //头条无缝连接
  var index = 0;
  var news_box = $(".taobao_news");
  var mallul = news_box.find("ul:first");
  var liheight = mallul.find("li:first").height();
  var ntimer = null;

  function shownews() {
    mallul.animate({ "margin-top": -liheight + "px" }, 500, function() {
      mallul
        .css({ "margin-top": "0px" })
        .find("li:first")
        .appendTo(mallul);
    });
  }

  news_box
    .hover(
      function() {
        clearInterval(ntimer);
      },
      function() {
        ntimer = setInterval(function() {
          shownews();
          // console.log(1)
        }, 5000);
      }
    )
    .trigger("mouseleave");

  //主体市场部分
  // $("#inner_item_nav1").mouseover(function(){
  // 	$(".inner_left").children(".them_nav_sec").show();
  // });
  // $(".them_nav_sec").mouseleave(function(){
  // 	$(".inner_left").children(".them_nav_sec").hide();
  // });
  $("#inner_item_nav1").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav1").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav2").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-36px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav2").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav3").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-68px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav3").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav4").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-100px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav4").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav5").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-132px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav5").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav6").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-164px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav6").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav7").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-196px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav7").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav8").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-228px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav8").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav9").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-260px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav9").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav10").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-292px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav10").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav11").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-324px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav11").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav12").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-356px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav12").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav13").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-388px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav13").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav14").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-420px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav14").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav15").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-452px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav15").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });
  $("#inner_item_nav16").mouseover(function() {
    $(this)
      .children(".them_nav_sec")
      .css({ top: "-484px" });
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeIn(500);
  });
  $("#inner_item_nav16").mouseleave(function() {
    $(this)
      .children(".them_nav_sec")
      .stop()
      .fadeOut(0);
  });

  //主体市场的图片遮罩层
  $(".mask_a").mouseover(function() {
    $(this)
      .children(".mask")
      .css({ opacity: "0.2" });
    $(this)
      .children("h5")
      .css({ color: "#f40" });
  });
  $(".mask_a").mouseleave(function() {
    $(this)
      .children(".mask")
      .css({ opacity: "0.1" });
    $(this)
      .children("h5")
      .css({ color: "#999" });
  });

  // 有好货部分
  // 二维码弹出部分
  $(".yhh_ewm")
    .children(".ewm_big")
    .hide();
  // $(".yhh_ewm").hover(function(){
  // 	$(this).children(".ewm_big").stop(true,false).slideDown();
  // },function(){
  // 	$(this).children(".ewm_big").stop(true,false).slideUp();
  // });

  // 遮罩层
  $(".gp_ul .img_wrapper").hover(
    function() {
      $(this)
        .children(".img_hover")
        .css({ opacity: "0.2" });
      $(this)
        .siblings(".info.gp")
        .css({ color: "#f40" });
    },
    function() {
      $(this)
        .children(".img_hover")
        .css({ opacity: "0.1" });
      $(this)
        .siblings(".info.gp")
        .css({ color: "#3c3c3c" });
    }
  );

  $(".agj_ul .img_wrapper").mouseover(function() {
    $(this)
      .children(".img_hover")
      .css({ opacity: "0.2" });
    $(this)
      .next()
      .children("p")
      .addClass("active");
  });

  $(".agj_ul .img_wrapper").mouseleave(function() {
    $(this)
      .children(".img_hover")
      .css({ opacity: "0.1" });
    $(this)
      .next()
      .children("p")
      .removeClass("active");
  });

  $(".yhh_ewm").mouseover(function() {
    $(this)
      .children(".ewm_big")
      .show();
  });
  $(".ewm_big").mouseleave(function() {
    $(this).hide();
  });

  $(".qiang_list li a .img_wrapper").mouseover(function() {
    $(this)
      .children(".mask")
      .css({ opacity: "0.2" });
    $(this)
      .siblings(".info")
      .children("h4")
      .css({ color: "#f40" });
  });
  $(".qiang_list li a .img_wrapper").mouseleave(function() {
    $(this)
      .children(".mask")
      .css({ opacity: "0.1" });
    $(this)
      .siblings(".info")
      .children("h4")
      .css({ color: "#333" });
  });

  // 猜你喜欢部分
  $(".gy_like .list .item").mouseover(function() {
    $(this)
      .children(".item_hover")
      .css({ display: "block" });
  });
  $(".gy_like .list .item").mouseleave(function() {
    $(this)
      .children(".item_hover")
      .css({ display: "none" });
  });
});
