<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/newsDetail.css" rel="stylesheet">
<#if browerType == "ie7">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7.css" rel="stylesheet">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7-news-detail.css" rel="stylesheet">
</#if>
<div class="container-fluid header-img">
	<@shishuo_headline_list_tag pictureType="news"> <#list
	tag_headline_list as tag_headline> <#if tag_headline_index= 0> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img2">
	</#if><#if tag_headline_index= 1> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img1">
	</#if></#list></@shishuo_headline_list_tag>
</div>

<div class="container content">
    <div class="main-title">
        <h1>新闻<small>\News</small></h1>
    </div>
    <div class="content-card">

        <div class="row row-offcanvas row-offcanvas-right">

            <div class="col-xs-12 col-sm-9">
                <p class="pull-right visible-xs">
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">更 多</button>
                </p>
                <div class="row news-article">
					<@shishuo_article_tag articleId="${articleId}">
						<h3>
                        ${tag_article.title}
                        <div class="share">
                            <div class="bdsharebuttonbox">
                                <a href="#" class="bds_tsina"data-cmd="tsina"title="分享到新浪微博"></a>
                                <a href="#"class="bds_weixin"data-cmd="weixin"title="分享到微信"></a>
                            </div>
                        </div>
                    </h3>
                    <hr>
                    <time datetime="${tag_article.createTime?date}">发布于：${tag_article.createTime?string("yyyy-MM-dd")}</time>
					<div class="row news-summary" style="margin-top: 20px;">
                        <div class="col-sm-1 pc-frist"><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_top_icon.png"></div>
                        <div class="col-sm-1 mobile-frist"><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_top_small_icon.png"></div>
                        <div class="col-sm-10 second">
                            <p>${tag_article.summary}</p>
                        </div>
                        <div class="col-sm-1 pc-third" ><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_up_icon.png"></div>
                        <div class="col-sm-1 mobile-third" ><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_up_small_icon.png"></div>
                    </div>
					<div class="article">
						${tag_article.content}
					</div>
					</@shishuo_article_tag>
                </div>

            </div><!--/.col-xs-12.col-sm-9-->

            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<div class="list-group">
					<#if classifyFolder.folderId=fatherFolder.folderId>
						<a href="${BASE_PATH}/folder/news.htm?classifyId=39"
						class="list-group-item hvr-sweep-to-right active">全部</a>
						<#else>
						<a href="${BASE_PATH}/folder/news.htm?classifyId=39"
						class="list-group-item hvr-sweep-to-right">全部</a>
					</#if>
					<@shishuo_folder_list_tag folderId="${classifyFolder.folderId}"> <#list
					tag_folder_list as folderSidebar>
					
					<#if
					folderSidebar.folderId=fatherFolder.folderId> <a
						href="${BASE_PATH}/folder/news.htm?classifyId=${folderSidebar.folderId}"
						class="list-group-item hvr-sweep-to-right active">${folderSidebar.name}</a>
					<#else> <a
						href="${BASE_PATH}/folder/news.htm?classifyId=${folderSidebar.folderId}"
						class="list-group-item hvr-sweep-to-right">${folderSidebar.name}</a>
					</#if></#list> </@shishuo_folder_list_tag> 


				</div>
			</div>
			<!--/.sidebar-offcanvas-->
        </div><!--/row-->
    </div>
</div><!--/.container-->
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<script>
$(document).ready(
			function() {
				$(".article img").addClass("img-responsive").addClass("news-img");
			});
</script>
<#include "footer.ftl">