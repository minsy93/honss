<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/productDetail.css" rel="stylesheet">
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
		<@shishuo_article_page_tag folderId="${classifyFolder.folderId}" p="${p}" rows=6>
			<#list tag_article_page.list as article>
				<#if article_index=0>
					<div class="container">
						<h1>${classifyFolder.name}</h1>
						<div class="intro">
							<@shishuo_folder_child_tag folderId="${classifyFolder.folderId}">
								<#list tag_folder_child as folder>
									<@shishuo_article_list_tag folderId="${folder.folderId}" rows=1>
										<#list tag_article_list as article>
											${article.content}
										</#list>
									</@shishuo_article_list_tag>
								</#list>
							</@shishuo_folder_child_tag>
						</div>
						<div class="row">
							<div class="col-md-6">
								<img class="img-responsive colmd6" src="${BASE_PATH}/${article.picture}" alt="">
							</div>
							<div class="col-md-6">
								${article.content}
							</div>
						</div>	
					</div>
				</#if>
				<#if article_index!=0>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<img class="img-responsive colmd6" src="${BASE_PATH}/${article.picture}" alt="">
							</div>
							<div class="col-md-6">
								${article.content}
							</div>
						</div>	
					</div>
				</#if>
			</#list>
		</@shishuo_article_page_tag> 
		

		<div class="container">
			<div class="container" style="padding-top:4px;">
			<div class="row">
				<div class="col-md-4">
			<ul class="pagination">

			<@shishuo_article_page_tag folderId="${classifyFolder.folderId}" p="${p}" rows=6>
				 
					<li class="pagination__item  pagination__item--current">
					<#list 1..tag_article_page.pageCount as t>
						<a href="${BASE_PATH}/folder/${folder.folderId}.htm?p=${t}&&classifyId=${classifyFolder.folderId}">${t}</a>
					</#list>
						
					</li>
					<li class="pagination__item">
						<a href="${BASE_PATH}/folder/${folder.folderId}.htm?p=${tag_article_page.pageCount}&&classifyId=${classifyFolder.folderId}"> > </a>
					</li>
				</@shishuo_article_page_tag>
			
		</ul>
				</div>
			</div>	
		</div>
		</div>
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
 
       $(".colmd6")
       .attr({"height":"218px","width":"373px"});
       
 
    }else{  
       $(".newsContent .col-md-6 .img-responsive").attr();
 
    }  
  
</script>		
<#include "footer.ftl">