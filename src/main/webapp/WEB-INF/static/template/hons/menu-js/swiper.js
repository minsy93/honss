/**
 * Created by admin on 2015/11/9.
 */

$(function(){

        $(".swiper-button-prev,.swiper-button-next").css("opacity","0.5");
        $(".swiper-button-prev,.swiper-button-next").each(function(){
            $(this).hover(function(){
                $(this).css("opacity","1");
            },function(){
                $(this).css("opacity","0.5");
            });
        });

    if($(window).width()>768){

        var swiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            slidesPerView: 1,
            paginationClickable: true,
            loop: true,
            centeredSlides: true,
            autoplay: 5000,
            autoplayDisableOnInteraction: false,
            onInit: function(swiper){
                $(".swiper-slide-active .img-div").addClass("img-change");
                $(".swiper-slide-active .img-div").addClass("img-class");
            },
            onSlideChangeEnd: function(swiper){

                $(".swiper-slide-active .img-div").addClass("img-change");
                $(".swiper-slide-active .img-div").addClass("img-class");
            },
            onTransitionStart: function(swiper){
                $(".swiper-slide .img-div").removeClass("img-change");
                $(".swiper-slide .img-div").removeClass("img-class");
                $(".swiper-slide .img-div").addClass("img-prototype");
            }
        })
    }else{
        var width = $(window).width();
        var height = 0.390626*width;
        $(".swiper-container-phone").attr("style","height:"+height+"px;");
        $(".swiper-slide").attr("style","height:"+height+"px;");
        $(".index-carousel-phone").attr("style","height:"+height+"px;");
        $(".swiper-slide img").attr("style","height:"+height+"px;");
        var swiper = new Swiper('.swiper-container-phone', {
            pagination: '.swiper-pagination-phone',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            slidesPerView: 1,
            paginationClickable: true,
            loop: true,
            centeredSlides: true,
            autoplay: 3000,
            autoplayDisableOnInteraction: false,
            onInit: function(swiper){
                $(".swiper-slide-active img").addClass("img-change");
                $(".swiper-slide-active img").addClass("img-class");
            },
            onSlideChangeEnd: function(swiper){

                $(".swiper-slide-active img").addClass("img-change");
                $(".swiper-slide-active img").addClass("img-class");
            },
            onTransitionStart: function(swiper){
                $(".swiper-slide img").removeClass("img-change");
                $(".swiper-slide img").removeClass("img-class");
                $(".swiper-slide img").addClass("img-prototype-phone");
            }
        });
    }
});
