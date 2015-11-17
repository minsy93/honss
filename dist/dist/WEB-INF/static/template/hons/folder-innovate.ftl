<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/Innovate.css" rel="stylesheet">
<content class="content">
<div class="container">
	<#list folderList as folder> <#if folder_index=0>
	<div class="content-top">
		<h1>${folder.name}</h1>
		<@shishuo_article_list_tag folderId="${folder.folderId}" rows=5>
		<#list tag_article_list as article>
		<div class="text textTitle">${article.title}</div>
		<div class="content-Img">
			<img src="${BASE_PATH}/${article.picture}" class="img-responsive"
				width="100%">
			<div class="img-text">
				<h4>${article.summary}</h4>
			</div>
		</div>
		<div class="Img-content">
			<div class="article">${article.content}</div>
			<!--row2-->
			</#list> </@shishuo_article_list_tag>
		</div>
	</div>
	</#if> <#if folder_index=1>
	<div class="content-middle content-margin-top">
		<h1>${folder.name}</h1>
		<@shishuo_article_list_tag folderId="${folder.folderId}" rows=5>
		<#list tag_article_list as article> <#if article_index=0>
		<div class="text">
			<h4>${article.content}</h4>
		</div>
		</#if> <#if article_index=1>
		<div class="content-Img">
			<img src="${BASE_PATH}/${article.picture}" class="img-responsive"
				width="100%">
			<div class="img-text">
				<h4>${article.summary}</h4>
			</div>
		</div>
		<div class="Img-content">
			<div class="text text_fb">${article.content}</div>
			</#if> <#if article_index=2>
			<div class="Img-content content_fb">
				<div class="textTitle">
					<strong>${article.title}</strong>
				</div>
				<div class="article">${article.content}</div>
				<!--row2-->
				</#if> </#list> </@shishuo_article_list_tag>
			</div>
		</div>
	</div>	
		</#if> <#if folder_index=2>
		<div class="content-buttoom content-margin-top">
			<h1 style="margin-top:70px;">${folder.name}</h1>
			<@shishuo_article_list_tag folderId="${folder.folderId}" rows=5>
			<#list tag_article_list as article> <#if article_index=0>
			<div class="text">
				<h4>${article.content}</h4>
			</div>
			<div class="container Img-content">
				<div class="row">
				<#else>

				
					<div class="col-md-4">
						<div class="text">
							<img src="${BASE_PATH}/${article.picture}" class="img-responsive"
								width="100%">
							<p>${article.content}</p>
						</div>
					</div>
					</#if> </#list>
				</div>
				<!--row3-->
				</@shishuo_article_list_tag>
				<nav>
					<ul class="pager">
						<li class="previous"><a href="Inside.html">查看全部 <span
								aria-hidden="true"> &rarr;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
		</#if> </#list>
	</div>
<!--container--> </content>
    <script src="dist/js/main.js"></script>
	
			<script type="text/javascript">  
 
    //平台、设备和操作系统   
 
    var system ={  
 
        win : false,  
 
        mac : false,  
 
        xll : false 
 
    };  
 
    //检测平台   
 
    var p = navigator.platform;  
 
    system.win = p.indexOf("Win") == 0;  
 
    system.mac = p.indexOf("Mac") == 0;  
 
    system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);  
 
    //跳转语句   
 
    if(system.win||system.mac||system.xll){//转向后台登陆页面  
 
       $(".container .col-md-4 .img-responsive")
       .attr({"height":"140px","width":"237px"});
       $(".content-Img  .img-responsive")
       .attr({"height":"440px","width":"782px"});
 
    }else{  
       $(".newsContent .col-md-6 .img-responsive").attr();
 
    }  
  
</script>
<#include "footer.ftl">
