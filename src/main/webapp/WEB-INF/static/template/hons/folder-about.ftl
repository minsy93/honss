<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/baseContent.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/${browerCss}/information.css" rel="stylesheet">
<#if browerType == "ie7">
	<link href="${TEMPLATE_BASE_PATH}/ie-css/ie7.css" rel="stylesheet">
</#if>
<div class="container-fluid header-img">
	<@shishuo_headline_list_tag pictureType="about"> <#list
	tag_headline_list as tag_headline> <#if tag_headline_index= 0> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img2">
	</#if><#if tag_headline_index= 1> <img
		src="${BASE_PATH}/${tag_headline.picture}" class="img-responsive img1">
	</#if></#list></@shishuo_headline_list_tag>
</div>

<div class="container content">
<div class="main-title">
    <#if classifyFolder.folderId=folder.folderId>
		<@shishuo_folder_list_tag folderId="${folder.folderId}">
			<#list tag_folder_list as seriesfolder>
				<#if seriesfolder_index=0>
					<h1>${seriesfolder.name}<small>\${seriesfolder.ename}</small></h1>
				</#if>
			</#list>
		</@shishuo_folder_list_tag>
		<#else>
		<h1>${classifyFolder.name}<small>\${classifyFolder.ename}</small></h1>
	</#if>
</div>
<div class="content-card">
    <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-9">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">更 多</button>
            </p>
            <div class="information-article">
            <#if classifyFolder.folderId != folder.folderId>
            	<@shishuo_article_list_tag folderId="${classifyFolder.folderId}" rows=1>
		 	<#list tag_article_list as article>
            <div class="main-img">
                <img data-original="${BASE_PATH}/${article.picture}" class="img-responsive lazy" width="100%" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png">
            </div>
            <div class="main-article">
                <p>
                    ${article.content}	
                </p>
            </div>
            </#list>
			</@shishuo_article_list_tag>
			<#else>
			<@shishuo_folder_list_tag
			folderId="${folder.folderId}">
				<#list tag_folder_list as folder>
					<#if folder_index=0>
						<@shishuo_article_list_tag folderId="${folder.folderId}" rows=1>
		 	<#list tag_article_list as article>
            <div class="main-img">
                <img data-original="${BASE_PATH}/${article.picture}" width="100%" src="${TEMPLATE_BASE_PATH}/image/general_pic_bg.png" class="img-responsive lazy">
            </div>
            <div class="main-article">
                <p>
                    ${article.content}	
                </p>
            </div>
            </#list>
			</@shishuo_article_list_tag>
					</#if>
				</#list>
			</@shishuo_folder_list_tag>
            </#if>
            
            </div><!--/information-article-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
            	<#if classifyFolder.folderId != folder.folderId>
            		<@shishuo_folder_list_tag folderId="${folder.folderId}"> <#list
					tag_folder_list as folderAbout>
						<#if folderAbout.folderId=classifyFolder.folderId>
							<a href="${BASE_PATH}/folder/about.htm?classifyId=${folderAbout.folderId}" class="list-group-item hvr-sweep-to-right active" class="info">${folderAbout.name}</a>
							<#else>
							<a href="${BASE_PATH}/folder/about.htm?classifyId=${folderAbout.folderId}" class="list-group-item hvr-sweep-to-right msg" >${folderAbout.name}</a>
						</#if>
					</#list>
					</@shishuo_folder_list_tag>
					<#else>
					<@shishuo_folder_list_tag folderId="${folder.folderId}"> <#list
					tag_folder_list as folderAbout>
						<#if folderAbout_index=0>
							<a href="${BASE_PATH}/folder/about.htm?classifyId=${folderAbout.folderId}" class="list-group-item hvr-sweep-to-right active" class="info">${folderAbout.name}</a>
							<#else>
							<a href="${BASE_PATH}/folder/about.htm?classifyId=${folderAbout.folderId}" class="list-group-item hvr-sweep-to-right msg" >${folderAbout.name}</a>
						</#if>
					</#list>
					</@shishuo_folder_list_tag>
            	</#if>
            </div>            
        </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->
    </div>

</div><!--/.container-->
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<#include "footer.ftl">