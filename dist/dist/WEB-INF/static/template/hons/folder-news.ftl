<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/newsCss.css" rel="stylesheet">
<style>

		.pagination__item a {
			display: block;
			padding: .5em .8em;
			border-radius: 2em;
			line-height: 1;
			background: #414143;
			color: #fff
		}
		.pagination>li>a{
			position: relative;
			float: left;
			padding: 6px 12px;
			margin-left: 1px;
			line-height: 1.42857143;
			color: #FFFFFF;
			text-decoration: none;
			background-color: #272727;
		}
</style>
<content class="newsContent">
		<#list folderList as folder>
			<@shishuo_article_page_tag folderId="${folder.folderId}" p="${p}" rows=6>
				<#list tag_article_page.list as article>
					<#if article_index=0>
						<div class="container newscontainer">
						<h1>${folder.name}</h1>
						<div class="row">
							<div class="col-md-6">
								<img class="img-responsive" src="${BASE_PATH}/${article.picture}" alt="">
							</div>
							<div class="col-md-6 news">
								<p class="info">
									<time datetime="${article.createTime?date}">${article.createTime?string("yyyy年MM月dd日")}</time>
								</p>
								<h3>${article.title}</h3>
								${article.content}
								<a href="${BASE_PATH}/folder/22.htm?classifyId=${folder.folderId}">更多</a>
						</div>
					</div>	
				</div>
					</#if>
					<#if article_index!=0>
						<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img class="img-responsive" src="${BASE_PATH}/${article.picture}" alt="">
				</div>
				<div class="col-md-6 news">
					<p class="info">
						<time datetime="${article.createTime?date}">${article.createTime?string("yyyy年MM月dd日")}</time>
					</p>
					<h3>${article.title}</h3>
					${article.content}
					<a href="${BASE_PATH}/folder/22.htm?classifyId=${folder.folderId}">更多</a>
				</div>
			</div>	
		</div>
					</#if>
				</#list>
			</@shishuo_article_page_tag>
		</#list> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
			<ul class="pagination">
				<@shishuo_article_page_tag folderId="${folder.folderId}" p="${p}" rows=6>
				 
					<li class="pagination__item  pagination__item--current">
					<#list 1..tag_article_page.pageCount as t>
						<a href="${BASE_PATH}/folder/${folder.folderId}.htm?p=${t}">${t}</a>
					</#list>
						
					</li>
					<li class="pagination__item">
						<a href="${BASE_PATH}/folder/${folder.folderId}.htm?p=${tag_article_page.pageCount}"> > </a>
					</li>
				</@shishuo_article_page_tag>
			
			
		</ul>
				</div>
			</div>	
		</div>
		</content>
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
 
       $(".container .img-responsive")
       .attr({"height":"200px","width":"337px"});
       
 
    }else{  
       $(".newsContent .col-md-6 .img-responsive").attr();
 
    }  
  
</script>
	
<#include "footer.ftl">		