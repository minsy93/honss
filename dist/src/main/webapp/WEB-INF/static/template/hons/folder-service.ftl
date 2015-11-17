<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/service.css" rel="stylesheet">

<div class="container-fluid header-img">
	<@shishuo_headline_list_tag pictureType="service"> <#list
	tag_headline_list as tag_headline> <#if tag_headline_index= 0> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img2">
	</#if><#if tag_headline_index= 1> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img1">
	</#if></#list></@shishuo_headline_list_tag>
</div>

<div class="container content">
    <div class="main-title">
        <h1>${folder.name}<small>\${folder.ename}</small></h1>
    </div>
    <div class="content-card">
    	<@shishuo_article_list_tag folderId="${folder.folderId}" rows=1>
		 	<#list tag_article_list as article>
        <div class="row">

            <div class="col-xs-12 col-sm-12">
           
                <div class="service-article">
                    <h3>${article.title}</h3>
                    <hr>
                    <time datetime="${article.createTime?date}">${article.createTime?string("yyyy年MM月dd日")}</time>

                    <div class="row service-summary">
                        <div class="col-sm-1 pc-frist"><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_top_icon.png"></div>
                        <div class="col-sm-1 mobile-frist"><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_top_small_icon.png"></div>
                        <div class="col-sm-10 second"><p>${article.summary}</p></div>
                        <div class="col-sm-1 pc-third" ><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_up_icon.png"></div>
                        <div class="col-sm-1 mobile-third" ><img src="${TEMPLATE_BASE_PATH}/image/newDetail/symbol_up_small_icon.png"></div>
                    </div>
                    <div class="service-content">
                        <p>
                           ${article.content}	
                        </p>
                    </div>
                </div>
            </div><!--/.col-xs-12.col-sm-12-->
        </div><!--/row-->
        </#list>
		</@shishuo_article_list_tag>
    </div>
</div>


<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<script>
$(document).ready(
			function() {
				$(".service-content img").addClass("img-responsive");
			});
</script>

<#include "footer.ftl">