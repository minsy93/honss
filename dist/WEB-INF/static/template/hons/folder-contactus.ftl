<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/ContactUs.css" rel="stylesheet">

<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<content class="content">
	<div class="container">
	
		<div class="content-top">
			<h1>${folder.name}</h1>
		</div>
	
		
		
		<div class="Img-content">
		<div class="row">
			<div class="col-md-8">
				 <div class="Baidumap"id="dituContent"></div>			
 			</div>
			<div class="col-md-4">

				<address class="addInfo">
					<@shishuo_article_list_tag folderId="${folder.folderId}" rows=1>
						<#list tag_article_list as article>
							${article.content}
						</#list>
					</@shishuo_article_list_tag>
				</address>
			</div>
		</div>
	  </div>
	</div>
		<script src="${TEMPLATE_BASE_PATH}/dist/js/BaiduMap.js"></script>
	</content>
<#include "footer.ftl">
