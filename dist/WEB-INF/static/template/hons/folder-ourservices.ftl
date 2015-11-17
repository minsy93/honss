<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/ourservices.css" rel="stylesheet">
<content class="newsContent"> 
		<div class="container">
			<@shishuo_article_list_tag folderId="${g_folderId}" rows=4>
				<#list tag_article_list as article>
					<#if article.title="我们的服务">
						<h1>${article.title}</h1>
						<div class="intro">
							<p>${article.content}</p>
						</div>
						<div class="row">
						<#else>
							<div class="col-md-4">
								<img class="img-responsive" src="${BASE_PATH}/${article.picture}" alt="">
							<h4>
								${article.title}
							</h4>
							<p>${article.content}</p>
							</div>
					</#if>
				</#list>
			</@shishuo_article_list_tag>
			</div>
		</div>
		</content>
<#include "footer.ftl">