<#assign config_v="20151109044">
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>${shishuo_seo_title}</title>

    <!-- Bootstrap -->
    <link href="${TEMPLATE_BASE_PATH}/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Link Swiper's CSS -->
	<link href="${TEMPLATE_BASE_PATH}/${browerCss!}/footer.css" rel="stylesheet">
	<link href="${TEMPLATE_BASE_PATH}/${browerCss!}/nav.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="${TEMPLATE_BASE_PATH}/js/jquery-1.11.1.min.js"></script>
    <script>
		 $(function(){
            var wid = $(window).width();
            if(wid>768){
                var left = ($(".navbar").width()-980)/2;
                $(".index-container-icon").attr("style","left:"+(left+980-84)+"px;");
            }else{
                var left = ($(".navbar").width()-$(".index-container-icon").width())/2;
                $(".index-container-icon").attr("style","left:"+(left-10)+"px;");
        }
    });
    </script>
  </head>
  <body>
  <header class="nav-header">
	  <!-- 导航条 -->
	  <nav class="navbar navbar-default">
		<div class="head-line"></div>
		<div class="index-container-icon">
		
		<@shishuo_headline_list_tag pictureType="hons"> <#list tag_headline_list as
			tag_headline>
			<a class="icon-brand" href="${tag_headline.url}"  target="_blank">
			<div class="head-icon">
				${tag_headline.name}
			</div>
			</a>
			</#list></@shishuo_headline_list_tag>
		
		</div>
		  <div class="container index-container">
			  <!-- 导航条按钮 -->
			  <div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
						  data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					  <span class="sr-only">切换导航</span>
					  <span class="icon-bar"></span>
					  <span class="icon-bar"></span>
					  <span class="icon-bar"></span>
				  </button>
				  <a class="navbar-brand" href="${BASE_PATH}/index.htm">
					  <img alt="Brand" src="${TEMPLATE_BASE_PATH}/image/HONS.png">
				  </a>
			  </div>
			  <!-- /导航条按钮 -->

			  <!-- 导航条链接 -->
			  <div class="collapse navbar-collapse"
				   id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					  <@shishuo_folder_list_tag folderId= 0>
					  <#list tag_folder_list as tag_folder>
						  <li class="<#if tag_folder.folderId==g_folderId>active</#if> hvr-underline-from-left">
						    <a href="<@shishuo_folder_url_tag folderId=tag_folder.folderId />">${tag_folder.name}</a>
						  </li>
					  </#list>
				  </@shishuo_folder_list_tag>
				  </ul>
				  <!-- /导航条链接 -->
			  </div>
		  </div>
	  </nav>
	  <!-- /导航条 -->
  </header>