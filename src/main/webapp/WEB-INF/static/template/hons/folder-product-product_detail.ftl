<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/productDetail.css"
	rel="stylesheet">
<#if browerCss=="css">
	<link href="${TEMPLATE_BASE_PATH}/css/lightbox.css" rel="stylesheet" />
</#if>
<#if browerType == "ie7">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7.css" rel="stylesheet">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7-product.css" rel="stylesheet">
</#if>
<#if browerType == "ie7">
	<style>
	.img-series{
		height:260px;
		width:260px;
	}
	.content-card .panel-heading{
		left:0;
	}
</style>
</#if>
<div class="container-fluid header-img">
	<@shishuo_headline_list_tag pictureType="product"> <#list
	tag_headline_list as tag_headline> <#if tag_headline_index= 0> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img2">
	</#if><#if tag_headline_index= 1> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img1">
	</#if></#list></@shishuo_headline_list_tag>
</div>

<div class="container content productDetail-container">
	<div class="main-title">
		<h1>
			${fatherFolder.name}<small>\${fatherFolder.ename}</small>
			<@shishuo_folder_list_tag folderId="${fatherFolder.folderId}"> <#list
			tag_folder_list as productDetailFolder> <#if
			productDetailFolder.name==classifyFolder.name> <a class="year-active"
				href="${BASE_PATH}/folder/product.htm?classifyId=${productDetailFolder.folderId}">&nbsp;${productDetailFolder.name}&nbsp; <img
				src="${TEMPLATE_BASE_PATH}/image/product/elected-circle.png"
				class="img-responsive img-1"></a> <#else> <a class="product-time"
				href="${BASE_PATH}/folder/product.htm?classifyId=${productDetailFolder.folderId}">&nbsp;${productDetailFolder.name} <img
				src="${TEMPLATE_BASE_PATH}/image/product/circle-R.png"
				class="img-responsive img-1">
			</a> </#if> </#list> </@shishuo_folder_list_tag>

		</h1>

	</div>
	<div class="content-card">

		<div class="row row-offcanvas row-offcanvas-right ">

			<div class="col-md-12">
				<h1>${seriesFolder.name}</h1>
				<div class="row series-description-row product-article">
					<div class="col-md-4">
						<div class="panel panel-default">
							<div class="panel-body img-series">
								<img class="img-responsive lazy"
									data-original="${BASE_PATH}/${seriesFolder.picture}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;"
									alt="">
							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="panel panel-default">
							<div class="panel-body">
								<p>
									${seriesFolder.content}
								</p>
							</div>
						</div>
					</div>
				</div>
				<hr class="productDetail-line">
				<div class="row up-row img-row">
					<@shishuo_article_list_tag folderId="${seriesFolder.folderId}" rows=100>
						<#list tag_article_list as article>
							<div class="col-xs-5 col-md-3 col-sm-3">
						<div class="panel panel-default">
							<div class="panel-body series-description-row">
								<div class="grid">
									<figure class="effect-julia" style="width:100%;">

										<div class="content-img-panel">
											<a class="example-image-link"
												href="${BASE_PATH}/${article.picture}"
												data-lightbox="example-1" data-title="款号:${article.title}"> <img
												class="example-image img-responsive lazy"
												data-original="${BASE_PATH}/${article.picture}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;"
												alt="image-1" />
												<div class="panel-heading">
													<h3 class="panel-title">款号:${article.title}</h3>
												</div></a>
										</div>
									</figure>
								</div>

							</div>

						</div>
					</div>
						</#list>
					</@shishuo_article_list_tag>
					</div>
				</div>
			</div>
			<!--/.col-xs-12.col-sm-9-->
		</div>
		<!--/row-->
	</div>
</div>
<!--/.container-->
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<script src="${TEMPLATE_BASE_PATH}/js/lightbox.min.js"></script>
<script>
	$(".main-title a")
			.each(
					function() {
						$(this)
								.click(
										function() {
											$(this).prevAll().removeClass(
													"year-active");
											$(this)
													.prevAll()
													.children()
													.attr("src",
															"${TEMPLATE_BASE_PATH}/image/product/circle-R.png");
											$(this).prevAll().addClass(
													"product-time");
											$('.main-title small').removeClass(
													"product-time");
											$(this).nextAll().removeClass(
													"year-active");
											$(this).nextAll().addClass(
													"product-time");
											$(this)
													.nextAll()
													.children()
													.attr("src",
															"${TEMPLATE_BASE_PATH}/image/product/circle-R.png");
											$(this).removeClass("product-time");
											$(this).addClass("year-active");
											$(this)
													.children()
													.attr("src",
															"${TEMPLATE_BASE_PATH}/image/product/elected-circle.png");
										});
						var width = $(window).width();
						if(width>768) {
							var o = 0;
							$(".img-row .col-md-3").each(function(){
								o++;
							if(o % 4 == 0){
								$(this).next().css("margin-left", "50px");
							}
						});
			
					}
				});
</script>
<script>
    $(function(){
		
		$(".panel-heading").each(function(){
		var marginLeft = ($(".content-img-panel").width()-$(this).width())/2;
		$(this).css("margin-left",marginLeft);
		});
		
	});
</script>
<#include "footer.ftl">
