<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/news.css" rel="stylesheet">

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
		<h1>
			新闻<small>\News</small>
		</h1>
	</div>
	<div class="content-card">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">更 多</button>
				</p>
					<@shishuo_article_page_tag
				folderId="${classifyFolder.folderId}" p="${p}" rows=6 word_limit=60>
					<#list tag_article_page.list as article>
						<div class="row ">
					<div class="col-xs-12 col-lg-5 col-sm-3">
						<div class="new-img">
							<a href="${BASE_PATH}/folder/news_detail.htm?classifyId=39&&articleId=${article.articleId}&&fatherId=${classifyFolder.folderId}"><img
								data-original="${BASE_PATH}/${article.picture}" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" style="width:100%;"
								class="img-responsive img-thumbnail lazy"></a>
						</div>
					</div>
					<!--/.col-xs-12.col-lg-5-->
					<div class="col-xs-12 col-lg-7 col-sm-6">
						<a href="${BASE_PATH}/folder/news_detail.htm?classifyId=39&&articleId=${article.articleId}&&fatherId=${classifyFolder.folderId}"><h4>${article.title}</h4></a>
						<time datetime="${article.createTime?date}">${article.createTime?string("yyyy年MM月dd日")}</time>
						<p>${article.content}</p>
					</div>
					<!--/.col-xs-12.col-lg-5-->

				</div>
				<hr>
					</#list>
				</@shishuo_article_page_tag>
				<nav class="pc-nav">
					<ul class="pagination">
						<@shishuo_article_page_tag folderId="${classifyFolder.folderId}" p="${p}"
						rows=6>
						<!--每页六篇-->
						<li><a href="${BASE_PATH}/folder/${folder.ename}.htm?p=1&&classifyId=${classifyFolder.folderId} "
							class="page-number page-frist" aria-label="第一页"><span
								aria-hidden="true"><<</span></a></li>
						<li><a href="${BASE_PATH}/folder/${folder.ename}.htm?p=${p-1}&&classifyId=${classifyFolder.folderId}" class="page-number previous" aria-label="上一页"><span
								aria-hidden="true"><</span></a></li>
						<li>
							<#assign tp=tag_article_page.pageCount/>
<#assign p=p/>
<#assign sp=p-2/>
<#assign ep=p+3/>
<#assign eoff=ep-tp/>
<#if (eoff>0)>
  <#assign sp = sp - eoff/>
</#if>
<#if (sp<=0)>
  <#assign ep = ep - sp+1/>
</#if>
<#list sp..ep as x>
  <#if (x>0 && x<=tp)>
    <#if (p==x)> <a href="${BASE_PATH}/folder/${folder.ename}.htm?p=${x}&&classifyId=${classifyFolder.folderId}"
							class="page-number active">${x}</a> 
							<#else> <a
							href="${BASE_PATH}/folder/${folder.ename}.htm?p=${x}&&classifyId=${classifyFolder.folderId}"
							class="page-number">${x}</a>
  </#if>
  </#if>
</#list>
<input class="pagecount" type="hidden" value="${tag_article_page.pageCount}">
<input class="pageNum" type="hidden" value="${p}">
						</li>
					    <li><a href="${BASE_PATH}/folder/${folder.ename}.htm?p=${p+1}&&classifyId=${classifyFolder.folderId}" class="page-number next" aria-label="下一页"><span
								aria-hidden="true">></span></a></li>
						<li><a
							href="${BASE_PATH}/folder/${folder.ename}.htm?p=${tag_article_page.pageCount}&&classifyId=${classifyFolder.folderId}"
							class="page-number page-last" aria-label="最后一页"><span
								aria-hidden="true">>></span></a></li> </@shishuo_article_page_tag>
					</ul>
				</nav>
				<nav class="phone-nav">
					<ul class="pager">
						<li style="float: left"><a href="${BASE_PATH}/folder/${folder.ename}.htm?p=${p-1}&&classifyId=${classifyFolder.folderId}" class="previous">上一页</a></li>
						<li style="margin-left:10px"><a href="${BASE_PATH}/folder/${folder.ename}.htm?p=${p+1}&&classifyId=${classifyFolder.folderId}" class="next">下一页</a></li>
					</ul>
				</nav>
				

			</div>
			<!--/.col-xs-12.col-sm-9-->

			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<div class="list-group">
					<#if classifyFolder.folderId=folder.folderId>
						<a href="${BASE_PATH}/folder/news.htm?classifyId=${folder.folderId}"
						class="list-group-item hvr-sweep-to-right active">全部</a>
						<#else>
						<a href="${BASE_PATH}/folder/news.htm?classifyId=${folder.folderId}"
						class="list-group-item hvr-sweep-to-right">全部</a>
					</#if>
					<@shishuo_folder_list_tag folderId="${folder.folderId}"> <#list
					tag_folder_list as folderSidebar>
					
					<#if
					folderSidebar.folderId=classifyFolder.folderId> <a
						href="${BASE_PATH}/folder/news.htm?classifyId=${folderSidebar.folderId}"
						class="list-group-item hvr-sweep-to-right active">${folderSidebar.name}</a>
					<#else> <a
						href="${BASE_PATH}/folder/news.htm?classifyId=${folderSidebar.folderId}"
						class="list-group-item hvr-sweep-to-right">${folderSidebar.name}</a>
					</#if></#list> </@shishuo_folder_list_tag> 


				</div>
			</div>
			<!--/.sidebar-offcanvas-->
		</div>
		<!--/row-->
	</div>
</div>
<!--/.container-->

<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("hr:last").css("display", "none");
				var pagecount=$(".pagecount").val();
				var page = $(".pageNum").val();
				if (pagecount == 1) {
					$(".previous").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".previous").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
					$(".page-frist").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".page-frist").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
					$(".next").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".next").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
					$(".page-last").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".page-last").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
				}
				if (page == 1) {
					$(".previous").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".previous").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
					$(".page-frist").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".page-frist").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
				} else if (page == pagecount) {
					$(".next").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".next").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
					$(".page-last").removeAttr('href').removeAttr('onclick').css("color","#c0c0c0");
					$(".page-last").hover(function(){
						$(this).css("background-color","#fff").css("color","#c0c0c0");
					});
				}

			});
</script>

<#include "footer.ftl">
