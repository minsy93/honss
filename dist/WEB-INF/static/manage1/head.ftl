<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>后台</title>		
		
		<!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
        <!--[if lt IE 9]>
		<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
		<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
		<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
		<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
		<![endif]-->

		<!-- Fav and touch icons -->
		<link rel="shortcut icon" href="${BASE_PATH}/static/manage1/assets/ico/favicon.ico" type="image/x-icon" />    

	    <!-- Css files -->
	   	<link href="${BASE_PATH}/static/manage1/assets/css/bootstrap.min.css" rel="stylesheet">		
		<link href="${BASE_PATH}/static/manage1/assets/css/jquery.mmenu.css" rel="stylesheet">		
		<link href="${BASE_PATH}/static/manage1/assets/css/font-awesome.min.css" rel="stylesheet">
		<link href="${BASE_PATH}/static/manage1/assets/css/climacons-font.css" rel="stylesheet">
	    <link href="${BASE_PATH}/static/manage1/assets/css/style.min.css" rel="stylesheet">
		<link href="${BASE_PATH}/static/manage1/assets/css/add-ons.min.css" rel="stylesheet">
	</head>
<body>
	<!-- start: Header -->
	<div class="navbar" role="navigation">
	
		<div class="container-fluid">		
			<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
	        <ul class="nav navbar-nav navbar-right">
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="user-avatar" src="${BASE_PATH}/static/manage1/assets/img/avatar.jpg" alt="user-mail">${SESSION_ADMIN.name}</a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>管理员</strong>
						</li>						
						<li><a href="${BASE_PATH}/manage/admin/update.htm"><i class="fa fa-cog"></i> 修改密码</a></li>					
						<li><a href="${BASE_PATH}/admin/logout.htm"><i class="fa fa-sign-out"></i> 安全退出</a></li>	
	        		</ul>
	      		</li>
				<li><a href="${BASE_PATH}/admin/logout.htm"><i class="fa fa-power-off"></i></a></li>
			</ul>
			
		</div>
		
	</div>
	<!-- end: Header -->
	
	<div class="container-fluid content">
	
		<div class="row">