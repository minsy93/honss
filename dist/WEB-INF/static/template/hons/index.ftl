<#include "header.ftl">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/indexCss.css" rel="stylesheet">
<content class="newsContent"> <!-- 轮播图 -->
<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<@shishuo_headline_list_tag> 
			<#list tag_headline_list as tag_headline>
				<#if tag_headline_index=0>
					<li data-target="#myCarousel" data-slide-to="${tag_headline_index}" class="active"></li>
				</#if>
				<#if tag_headline_index!=0>
					<li data-target="#myCarousel" data-slide-to="${tag_headline_index}"></li>
				</#if>
			</#list>
		</@shishuo_headline_list_tag>
	</ol>
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<@shishuo_headline_list_tag> <#list tag_headline_list as tag_headline>
		<div class="item <#if tag_headline_index=0>active</#if>">
			<div>
				<a href="${tag_headline.url}"><img src="${tag_headline.picture}" alt=""></a>
				<div class="textbox"
					style="position:absolute; top:400px; right:150px;">
					<p class="textp1">全力拓展创新</p>
					<p class="textp2">力创行业的一流品牌</p>
				</div>
			</div>
		</div>
		</#list> </@shishuo_headline_list_tag>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel" data-slide="prev"><span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">上一页</span></a> <a class="carousel-control right"
		href="#myCarousel" data-slide="next"><span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">下一页</span></a>
</div>
<#list folderList as folder> <#if folder_index=0>
<div class="container">
	<h3>${folder.name}</h3>
	<div class="row">
		<@shishuo_article_list_tag folderId="${folder.folderId}" rows=3>
		<#list tag_article_list as article>
		<div class="col-md-4">
			<img class="img-responsive" src="${article.picture}" alt="">
			<p class="info">
				<time datetime="${article.createTime?date}">${article.createTime?string("yyyy年MM月dd日")}
				</time>
			</p>
			<div class="head headline">
				<h4>
					<a href="${BASE_PATH}/folder/22.htm?classifyId=${folder.folderId}">${article.title}</a>
				</h4>
			</div>
			${article.content}
		</div>
		</#list> </@shishuo_article_list_tag>
	</div>
	<div class="navbutton">
		<nav>
			<ul class="pager">
				<li class="previous"><a href="${BASE_PATH}/folder/15.htm">查看全部<span
						aria-hidden="true"> &rarr;</span></a></li>
			</ul>
		</nav>
	</div>
</div>
<#elseif folder_index=1>
<div class="container colmd6">
	<h3>${folder.name}</h3>
	<div class="row">
		<@shishuo_article_list_tag folderId="${folder.folderId}" rows=3>
		<#list tag_article_list as article>
		<div class="col-md-6">
			<img class="img-responsive" src="${article.picture}" alt="">
			<h4>
				<a href="${BASE_PATH}/folder/22.htm?classifyId=${folder.folderId}&&articleId=${article.articleId}">${article.title}</a>
			</h4>
			<p>${article.content}</p>
		</div>
		</#list> </@shishuo_article_list_tag>
	</div>
	<div class="navbutton">
		<nav>
			<ul class="pager">
				<li class="previous"><a href="${BASE_PATH}/folder/12.htm">查看全部<span
						aria-hidden="true"> &rarr;</span></a></li>
			</ul>
		</nav>
	</div>
	</#if> </#list>
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
        $(".colmd6  .img-responsive")
        .attr({"height":"218px","width":"373px"});
       $(".container .col-md-4 .img-responsive")
       .attr({"height":"140px","width":"237px"});
       
 
    }else{  
        $(".newsContent .head").removeClass("headline");
 
    }  
  
</script>
<#include "footer.ftl">
