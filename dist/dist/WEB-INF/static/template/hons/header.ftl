<#assign config_v="20151024044">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>${shishuo_seo_title}</title>
<!-- Bootstrap -->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/footerCss.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/mainCss.css" rel="stylesheet">
<link href="${TEMPLATE_BASE_PATH}/HtmlCss/contentCss.css" rel="stylesheet">
<script src="${TEMPLATE_BASE_PATH}/dist/js/jquery.min.js"></script>
<script src="${TEMPLATE_BASE_PATH}/dist/js/bootstrap.min.js"></script>
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]>
	<script src="${TEMPLATE_BASE_PATH}/dist/js/ie8-responsive-file-warning.js"></script>
<![endif]-->
<script src="${TEMPLATE_BASE_PATH}/dist/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="${TEMPLATE_BASE_PATH}/dist/js/html5shiv.min.js"></script>
      <script src="${TEMPLATE_BASE_PATH}/dist/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="page">
		<header class="navHeader">
			<!-- 导航条 -->
			<nav class="navbar navbar-default">
				<div class="container navbarContainer">
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
							<img alt="Brand" src="${TEMPLATE_BASE_PATH}/image/Hons.png">
						</a>
					</div>
					<!-- /导航条按钮 -->

					<!-- 导航条链接 -->
					<div class="collapse navbar-collapse"
						 id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<@shishuo_folder_list_tag folderId= 0>
						 		<#list tag_folder_list as tag_folder>
	                				<li class="<#if tag_folder.folderId==g_folderId>active</#if>"><a href="<@shishuo_folder_url_tag folderId=tag_folder.folderId/>"><strong>${tag_folder.name}</strong></a></li>
								</#list>
						 	</@shishuo_folder_list_tag>
						</ul>
					<!-- /导航条链接 -->
					</div>
				</div>
			</nav>
			<!-- /导航条 -->
		</header>
		<div class="container hrcontainer">
		<hr></hr>
		</div>