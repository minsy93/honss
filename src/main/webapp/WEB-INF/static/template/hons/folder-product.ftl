<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/product.css" rel="stylesheet">
<#if browerType == "ie7">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7.css" rel="stylesheet">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7-product.css" rel="stylesheet">
</#if>
<#if browerType == "ie7">
	<style>
	.product_card .panel-heading{
		left:0;
	}
	.product_card .effect-julia{
		width:260px;
		height:260px;
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

<div class="container content product-container">
	<div class="main-title">
		<h1>
			${folder.name}<small>\${folder.ename}</small> <#if
			classifyFolder.folderId != folder.folderId> <@shishuo_folder_list_tag
			folderId="${folder.folderId}"> <#list tag_folder_list as folder> <#if
			folder.folderId=classifyFolder.folderId> <a class="year-active"
				href="${BASE_PATH}/folder/product.htm?classifyId=${folder.folderId}">&nbsp;${folder.name}
				<img src="${TEMPLATE_BASE_PATH}/image/product/elected-circle.png"
				class="img-responsive img-1">
			</a> <#else> <a class="product-time"
				href="${BASE_PATH}/folder/product.htm?classifyId=${folder.folderId}">&nbsp;${folder.name}
				<img src="${TEMPLATE_BASE_PATH}/image/product/circle-R.png"
				class="img-responsive img-1">
			</a> </#if> </#list> </@shishuo_folder_list_tag> <#else>
			<@shishuo_folder_list_tag folderId="${folder.folderId}"> <#list
			tag_folder_list as folder> <#if folder_index=0> <a
				class="year-active"
				href="${BASE_PATH}/folder/product.htm?classifyId=${folder.folderId}">&nbsp;${folder.name}
				<img src="${TEMPLATE_BASE_PATH}/image/product/elected-circle.png"
				class="img-responsive img-1">
			</a> <#else> <a class="product-time"
				href="${BASE_PATH}/folder/product.htm?classifyId=${folder.folderId}">&nbsp;${folder.name}
				<img src="${TEMPLATE_BASE_PATH}/image/product/circle-R.png"
				class="img-responsive img-1">
			</a> </#if> </#list> </@shishuo_folder_list_tag> </#if>
		</h1>

	</div>
	<div class="content-card product_card">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-md-12">
				<#if classifyFolder.folderId != folder.folderId>
				<h1>${classifyFolder.name}</h1>
				<#else> <@shishuo_folder_list_tag folderId="${folder.folderId}">
				<#list tag_folder_list as folder> <#if folder_index=0>
				<h1>${folder.name}</h1>
				</#if> </#list></@shishuo_folder_list_tag> </#if>


				<div class="row">
					<#if classifyFolder.folderId != folder.folderId>
					<@shishuo_folder_list_tag folderId="${classifyFolder.folderId}">
					<#list tag_folder_list as seriesfolder>
					<div class="col-md-4 col-sm-4">
						<a
							href="${BASE_PATH}/folder/product_detail.htm?seriesFolderId=${seriesfolder.folderId}&&fatherId=${folder.folderId}&&classifyId=${classifyFolder.folderId}">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="grid">
										<figure class="effect-julia" style="width:100%;">
											<img class="img-responsive lazy" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;"
												data-original="${BASE_PATH}/${seriesfolder.picture}" alt="">
										</figure>
									</div>
								</div>
								<div class="panel-heading">
									<h3 class="panel-title">— ${seriesfolder.name} —</h3>
								</div>
							</div>
						</a>
					</div>
					</#list> </@shishuo_folder_list_tag> <#else>
					<@shishuo_folder_list_tag folderId="${folder.folderId}"> <#list
					tag_folder_list as seriesfolder> <#if seriesfolder_index=0>
					<@shishuo_folder_list_tag folderId="${seriesfolder.folderId}">
					<#list tag_folder_list as folder_0>
					<div class="col-md-4 col-sm-4">
						<a
							href="${BASE_PATH}/folder/product_detail.htm?seriesFolderId=${folder_0.folderId}&&fatherId=${folder.folderId}&&classifyId=${seriesfolder.folderId}">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="grid">
										<figure class="effect-julia" style="width:100%;">
											<img class="img-responsive lazy"
												data-original="${BASE_PATH}/${folder_0.picture}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;" alt="">
										</figure>
									</div>
								</div>
								<div class="panel-heading">
									<h3 class="panel-title">— ${folder_0.name} —</h3>
								</div>
							</div>
						</a>
					</div>
					</#list> </@shishuo_folder_list_tag>
					</#if></#list></@shishuo_folder_list_tag> </#if>
				</div>
			</div>
			<!--/.col-xs-12.col-sm-9-->


		</div>
		<!--/row-->
	</div>
</div>
<!--/.container-->
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
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
					});
</script>
<script>
	$(function(){
		$(".panel-heading").each(function(){
			var marginLeft = ($(".panel-default").width()-$(this).width())/2;
			$(this).css("margin-left",marginLeft);
		});
	});
</script>
<#include "footer.ftl">
