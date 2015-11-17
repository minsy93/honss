<#include "header.ftl">
<#if browerCss=="css">
	<link rel="stylesheet" href="${TEMPLATE_BASE_PATH}/css/swiper.min.css">
</#if>
<#if browerType=="ie8">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/index.css" rel="stylesheet">
	<#else>
	<link href="${TEMPLATE_BASE_PATH}/css/index.css" rel="stylesheet">
</#if>
<style>
.index-carousel-ie{
	display:none;
}
#b04 ul,#b04 ol{ padding: 0;}
.banner { position: relative; overflow: auto; text-align: center;}
.banner li { list-style: none; }
.banner ul li { float: left; }
#b04 { width: 100%;}
#b04 .dots { position: absolute; left: 0; right: 0; bottom: 20px;}
#b04 .dots li 
{ 
	display: inline-block; 
	width: 230px; 
	height: 10px; 
	margin: 0 0 0 20px; 
	text-indent: -999em;  
	cursor: pointer; 
	opacity: .2; 
	background-color:#000;
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=20);
	-webkit-transition: background .5s, opacity .5s; 
	-moz-transition: background .5s, opacity .5s; 
	transition: background .5s, opacity .5s;
}
#b04 .dots li:first-child{
	margin-left:0;
}
#b04 .dots li.active 
{
	background: #fff;
	opacity: 1;
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=100);
}
#b04 .arrow { position: absolute; top: 200px;}
#b04 #al { left: 15px;}
#b04 #ar { right: 15px;}
</style>
<#if browerType == "ie7">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7.css" rel="stylesheet">
</#if>
<section class="index-carousel index-carousel-pc">
	<!-- Swiper -->
	<div class="swiper-container swiper-container-pc">
		<div class="swiper-wrapper">
			<@shishuo_headline_list_tag pictureType="pc"> <#list tag_headline_list as
			tag_headline>
			<div class="swiper-slide">
				<div class="grid">
					<figure class="effect-julia">
						<a class="carousel-a" <#if tag_headline.url!="">href="${tag_headline.url}"</#if>>
						<div class="swiper-slide img-div"
							style="background-image:url('${tag_headline.picture}');background-position:center;">
						</div>
						</a>
					</figure>
				</div>
				<div class="textbox"
					style="position:absolute; top:31.75%; right:13.6768%;">
					<p class="textp1">${tag_headline.name}</p>
					<p class="textp2">${tag_headline.description}</p>
				</div>
			</div>
			</#list> </@shishuo_headline_list_tag>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next button-next"></div>
		<div class="swiper-button-prev button-prev"></div>
	</div>
</section>
<section class="index-carousel index-carousel-phone">
	<!-- Swiper -->
	<div class="swiper-container-phone">
		<div class="swiper-wrapper">
			<@shishuo_headline_list_tag pictureType="ipad"> <#list tag_headline_list as
			tag_headline> 
			<div class="swiper-slide">
				<div class="swiper-slide">
				<a class="carousel-a" <#if tag_headline.url!="">href="${tag_headline.url}"</#if>>
					<img class="img-responsive" src="${tag_headline.picture}">
				</a>	
					<div class="textbox"
						style="position:absolute; top:31.75%; right:13.6768%;">
						<p class="textp1">${tag_headline.name}</p>
					</div>
				</div>
			</div>
			</#list> </@shishuo_headline_list_tag>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination-phone"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>
</section>
<section class="index-carousel index-carousel-ie">
<div class="banner" id="b04">
    <ul>
    	<@shishuo_headline_list_tag pictureType="pc"> <#list tag_headline_list as
			tag_headline>
			<li>
			<div style="position:relative;">
			<img src="${tag_headline.picture}" alt="" width="2560" height="400" >
			<div class="textbox"
					style="position:absolute; top:31.75%; left:14.1%;">
					<p class="textp1">${tag_headline.name}</p>
					<p class="textp2">${tag_headline.description}</p>
				</div>
				</div>
		</li>	
			</#list>
		</@shishuo_headline_list_tag>
    </ul>
    <a href="javascript:void(0);" class="unslider-arrow04 prev "><img class="arrow" id="al" src="${TEMPLATE_BASE_PATH}/image/index/arrow_homs_left.png" alt="prev" width="34" height="34"></a>
    <a href="javascript:void(0);" class="unslider-arrow04 next "><img class="arrow" id="ar" src="${TEMPLATE_BASE_PATH}/image/index/arrow_homs_right.png" alt="next" width="34" height="34"></a>
</div>
</section>
<div class="container series-container">
	<div class="row series-row">
		<@shishuo_folder_list_tag ename="product"> <#list tag_folder_list as
		folder><#if folder_index=0> <@shishuo_folder_list_tag
		folderId="${folder.folderId}"> <#list tag_folder_list as
		folder_children> <#if folder_children.isMainSeries == 1> <#if
		folder_children_index=0>
		<div class="col-md-6 col-sm-6 series-big">
			<a href="${BASE_PATH}/folder/product_detail.htm?seriesFolderId=${folder_children.folderId}&&fatherId=40&&classifyId=${folder.folderId}">
				<div class="panel panel-default">
					<div class="panel-body img-series">
						<div class="grid">
							<figure class="effect-julia" style="width:100%;">
								<img class="img-responsive lazy"
									data-original="${folder_children.mainPicture!}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;" alt="" />
							</figure>
						</div>
					</div>
					<div class="series-textbox-big">
						<h1 class="series-textp1-big">${folder_children.name}</h1>
						<p class="series-textp2-big">${folder_children.summary!}</p>
					</div>
				</div>
			</a>
		</div>
		</#if> <#if folder_children_index = 1>
		<div class="col-md-6 col-sm-6 series-small">
			<div class="row">
				<div class="col-md-12">
					<a href="${BASE_PATH}/folder/product_detail.htm?seriesFolderId=${folder_children.folderId}&&fatherId=40&&classifyId=${folder.folderId}">
						<div class="panel panel-default">
							<div class="panel-body img-series-small">
								<div class="grid">
									<figure class="effect-julia" style="width:100%;">
										<img class="img-responsive lazy"
											data-original="${folder_children.mainPicture!}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;" alt="">
									</figure>
								</div>
							</div>
							<div class="series-textbox-small">
								<h1 class="series-textp1-small">${folder_children.name}</h1>
								<p class="series-textp2-small">
									${folder_children.summary!}</p>
							</div>
						</div>
					</a>
				</div>
				</#if> <#if folder_children_index = 2>
				<div class="col-md-12">
					<a href="${BASE_PATH}/folder/product_detail.htm?seriesFolderId=${folder_children.folderId}&&fatherId=40&&classifyId=${folder.folderId}">
						<div class="panel panel-default">
							<div class="panel-body img-series-small">
								<div class="grid">
									<figure class="effect-julia" style="width:100%;">
										<img class="img-responsive lazy"
											data-original="${folder_children.mainPicture!}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;" alt="">
									</figure>
								</div>
							</div>
							<div class="series-textbox-small">
								<h1 class="series-textp1-small-bottom">${folder_children.name}</h1>
								<p class="series-textp2-small-bottom">
									${folder_children.summary!}</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		</#if> </#if> </#list> </@shishuo_folder_list_tag> </#if> </#list>
		</@shishuo_folder_list_tag>
	</div>
</div>

<div class="container news-container">
	<div class="news-div">
		<h1>新闻</h1>
		<a class="more-news" href="${BASE_PATH}/folder/news.htm?classifyId=39">更多...</a>
	</div>
	<div class="row">
		<@shishuo_folder_list_tag ename="news"> <#list tag_folder_list as
		folder> <#if folder_index=0> <@shishuo_article_list_tag
		folderId="${folder.folderId}" rows=3 word_limit=57> <#list
		tag_article_list as article>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-body">
					<a href="${BASE_PATH}/folder/news_detail.htm?classifyId=39&&articleId=${article.articleId}&&fatherId=${folder.folderId}"><img class="img-responsive lazy"
						data-original="${BASE_PATH}/${article.picture}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" width="100%" alt=""></a>
					<p class="info">
						<time datetime="${article.createTime?date}">${article.createTime?string("yyyy-MM-dd")}</time>
					</p>
					<h4>
						<a href="${BASE_PATH}/folder/news_detail.htm?classifyId=39&&articleId=${article.articleId}&&fatherId=${folder.folderId}">${article.title}</a>
					</h4>
					<p>${article.content}</p>
				</div>
			</div>
		</div>
		</#list> </@shishuo_article_list_tag> </#if> </#list>
		</@shishuo_folder_list_tag>
	</div>
</div>
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<#if browerJs=="menu-js">
	<script src="${TEMPLATE_BASE_PATH}/${browerJs}/swiper.min.js"></script>
	<script src="${TEMPLATE_BASE_PATH}/${browerJs}/swiper.js"></script>
</#if>
<script src="${TEMPLATE_BASE_PATH}/js/unslider.min.js"></script>
<script>
	$(function() {
		$(".series-textp2-small p").css("margin-bottom", "0");
		$(".series-textp2-big p").css("margin-bottom", "0");
	});
</script>
<script>
$(document).ready(function(e) {
	if("${browerType}"=="ie11"||"${browerType}"=="ie10"||"${browerType}"=="ie9"||"${browerType}"=="ie8"||"${browerType}"=="ie7"||"${browerType}"=="ie"){
		$(".index-carousel-ie").show();
		$(".index-carousel-pc").hide();
		$(".index-carousel-phone").hide();
	}
    var unslider04 = $('#b04').unslider({
		dots: true,
		fluid:true,
		speed:750,
		delay:5000
	}),
	data04 = unslider04.data('unslider');
	
	$('.unslider-arrow04').click(function() {
        var fn = this.className.split(' ')[1];
        data04[fn]();
    });
});
</script>
<#include "footer.ftl">
