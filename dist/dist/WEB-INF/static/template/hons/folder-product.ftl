<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/product.css" rel="stylesheet">
<content class="newsContent">
		<#list folderList as folder>
			<#if folder_index=0>
				<@shishuo_article_list_tag folderId="${folder.folderId}" rows=1>
					<#list tag_article_list as article>
						<div class="container">
							<h1>${folder.name}</h1>
							<div class="intro">
								${article.content}
							</div>
						</div>		
					</#list>
				</@shishuo_article_list_tag>
			</#if>
			<#if folder_index!=0>
				<@shishuo_article_list_tag folderId="${folder.folderId}" rows=3>
					<div class="container">
						<h2>${folder.name}</h2>
						<div class="row">
					<#list tag_article_list as article>
								<div class="col-md-4">
									<img class="img-responsive"
										src="${BASE_PATH}/${article.picture}"
									alt="">
									<h4>
										<a href="${BASE_PATH}/folder/22.htm?classifyId=${folder.folderId}">${article.title}</a>
									</h4>
										${article.content}
								</div>
								
					</#list>
					</div>
					<div class="navbutton">
						<nav>
							<ul class="pager">
								<li class="previous"><a href="${BASE_PATH}/folder/32.htm?classifyId=${folder.folderId}">查看全部<span
									aria-hidden="true"> &rarr;</span></a></li>
							</ul>
						</nav>
					</div>
				</div>
				</@shishuo_article_list_tag>
			</#if>
		</#list>
		</content>
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
       
 
    }else{  
       $(".newsContent .col-md-6 .img-responsive").attr();
 
    }  
  
</script>
<#include "footer.ftl">