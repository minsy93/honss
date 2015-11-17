$(function(){
    $(".collapsed").on("touchend",function(){
        if($("#bs-example-navbar-collapse-1").is(":visible")){
        }else{
            $(".navbar-nav li a").addClass("fadeInUpSlow");
        }
        $("body").addClass("no-scroll");
        $("html").addClass("no-scroll");
    });
    $(".navbar-nav li a:last").attr("style","border-bottom:0px solid #fff;");
});
/*foot-links-img*/
$(".footer .links a").each(function(){
    $(this).children().css("opacity","1");
    $(this).hover(function(){
        $(this).children().css("opacity","0.7");
    },function(){
        $(this).children().css("opacity","1");
    });
});
/*row-offcanvas-right*/
$(document).ready(function () {
    $('[data-toggle="offcanvas"]').click(function () {
        $('.row-offcanvas').toggleClass('active')
    });
    $('.col-xs-12 .row,.sidebar-offcanvas,.header-img,.footer,.nav-header,.main-article,h1').click(function () {
        $('.row-offcanvas').removeClass('active')
    });

    $('#sidebar .active').children().remove();

    $(".list-group-item").each(function(){
        $(this).hover(function(){
            $(this).children().css("display","none");
            $(this).css("color","#fff");
        },function(){
            $(this).children().css("display","block");
            $(this).css("color","#333");
            $(".active").css("color","#fff");
        });
        $(this).click(function(){
            $(this).siblings().removeClass("active").attr("style","color:rgb(51, 51, 51);");
            $(this).addClass("active");
        });
    });
});
/*header-img*/
$(function(){
    $(".header-img .img1").fadeIn(3000);
    $(".header-img .img2").fadeOut(1000);
});

$(function(){  
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消
        $(function () {  
            $(window).scroll(function(){  
                if ($(window).scrollTop()>200){  
                    $("#back-to-top").fadeIn(500);  
                }  
                else  
                {  
                    $("#back-to-top").fadeOut(500);  
                }  
            });  
  
            //当点击跳转链接后，回到页面顶部位
  
            $("#back-to-top").click(function(){  
                $('body,html').animate({scrollTop:0},500);  
                return false;  
            });  
        });  
    });  
	
	
	
window._bd_share_config = {
    "common": {
        "bdSnsKey": {},
        "bdText": "",
        "bdMini": "2",
        "bdMiniList": false,
        "bdPic": "",
        "bdStyle": "0",
        "bdSize": "24"
    }, "share": {}
};
with (document)0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];

/*footer-phone*/
$(function(){
    var url = window.location.href;
    var title=document.title;
    $(".links .qq").attr("href","http://www.jiathis.com/send/?webid=cqq&url="+url+"&title="+title);
    $(".links .weico").attr("href","http://www.jiathis.com/send/?webid=tsina&url="+url+"&title="+title);
    $(".links .tweico").attr("href","http://www.jiathis.com/send/?webid=tqq&url="+url+"&title="+title);
    $(".links .weixin").attr("href","http://www.jiathis.com/send/?webid=weixin&url="+url+"&title="+title);
    $(".links .qzone").attr("href","http://www.jiathis.com/send/?webid=qzone&url="+url+"&title="+title);
});


// Detect whether device supports orientationchange event, otherwise fall back to
// the resize event.
var supportsOrientationChange = "onorientationchange" in window,
    orientationEvent = supportsOrientationChange ? "orientationchange" : "resize";
window.addEventListener(orientationEvent, function() {
    var ua = navigator.userAgent;
    var deviceType="";

    if (ua.indexOf("iPad") > 0) {
        deviceType = "isIpad";
    } else if (ua.indexOf("Android") > 0) {
        deviceType = "isAndroid";
    } else {
        return;
    }
    if ("isIpad" == deviceType) {
        if (Math.abs(window.orientation) == 90) {
            location.reload();
        } else {
            location.reload();
        }
    } else if ("isAndroid" == deviceType ) {
        if (Math.abs(window.orientation) != 90) {
            location.reload();
        } else {
            location.reload();
        }
    }
}, false);

$(function(){
    $(".panel").on("touchend",function(){
        $(this).children().children().children().children().css("opacity","1");
    });
    $(".panel").on("touchmove",function(){
        $(this).children().children().children().children().css("opacity","0.8");
    });
});
