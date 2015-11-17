<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/Synopsis.css" rel="stylesheet">
<content class="content">
<div class="container">
	<#list folderList as folder> <#if folder_index=0>
	<div class="content-top">
		<h1>${folder.name}</h1>
		<@shishuo_article_list_tag folderId="${folder.folderId}" rows=5>
		<#list tag_article_list as article> <#if article_index=0>
		<div class="text">
			<img src="${BASE_PATH}/${article.picture}"
				class="img-responsive img-top" width="50%">
		</div>
		</#if> <#if article_index!=0>
		<div class="content-Img">
			<img src="${BASE_PATH}/${article.picture}"
				class="img-responsive" width="100%">
			<div class="img-text">
				<h4>${article.summary}</h4>
			</div>
		</div>

		<div class="Img-content">
			<div class="article">${article.content}</div>
			<!--row1-->
		</div>
		<!--Img-content1-->
		</#if> </#list> </@shishuo_article_list_tag>
		</div>
			</#if> <#if folder_index!=0>
			<div class="content-middle content-margin-top">
				<h1>${folder.name}</h1>
				<@shishuo_article_list_tag folderId="${folder.folderId}" rows=5>
				<#list tag_article_list as article>
				<div class="text">
					<h3>${article.title}</h3>
				</div>
				<div class="content-Img">
					<img src="${BASE_PATH}/${article.picture}"
						class="img-responsive" width="100%">
					<div class="img-text">
						<h4>${article.summary}</h4>
					</div>
				</div>
				<div class="Img-content">
					<div class="article">${article.content}</div>
					<!--Img-content2-->
					</#list> </@shishuo_article_list_tag>
				</div>
				</#if> </#list>
			</div>
			<!--container-->
	</div>		
</content>
<!--innovate-->
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
 
       
       $(".content-Img  .img-responsive")
       .attr({"height":"440px","width":"782px"});
 
    }else{  
       $(".newsContent .col-md-6 .img-responsive").attr();
 
    }  
  
</script>
<#include "footer.ftl">
