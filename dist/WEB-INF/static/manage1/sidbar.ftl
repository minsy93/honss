<!-- start: Main Menu -->
			<div class="sidebar ">
								
				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                        <span><img class="text-logo" src="${BASE_PATH}/static/manage1/assets/img/logo1.png"><i class="fa fa-space-shuttle fa-3x blue"></i></span>
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar" id="nav-accordion">
							<li><a href="${BASE_PATH}/manage/index.htm"><i class="fa fa-laptop"></i><span class="text"> 首页</span></a></li>
							<#if SESSION_ADMIN.isAdmin>
							<li>
								<a href="#"><i class="fa  fa-book"></i><span class="text"> 文章列表</span> <span class="fa fa-angle-down pull-right"></span></a>
									<ul class="nav sub">
										<li><a href="page-activity.html"><i class="fa fa-files-o"></i><span class="text"> 全部文章</span></a></li>
										<li><a href="page-inbox.html"><i class="fa fa-clock-o"></i><span class="text"> 未审核</span></a></li>
										<li><a href="page-invoice.html"><i class="fa fa-frown-o"></i><span class="text"> 审核退回</span></a></li>				
									</ul>	
							</li>
							<li>
								<a href="#"><i class="fa  fa-picture-o"></i><span class="text"> 首页头图</span> <span class="fa fa-angle-down pull-right"></span></a>
									<ul class="nav sub">
										<li><a href="page-activity.html"><i class="fa fa-car"></i><span class="text"> 头图列表</span></a></li>
										<li><a href="page-inbox.html"><i class="fa fa-envelope"></i><span class="text"> 添加头图</span></a></li>				
									</ul>	
							</li>
							<li>
								<a href="#"><i class="fa   fa-folder"></i><span class="text"> 首页导航</span> <span class="fa fa-angle-down pull-right"></span></a>
									<ul class="nav sub">
										<li><a href="page-activity.html"><i class="fa fa-car"></i><span class="text"> 添加导航</span></a></li>
										<li><a href="page-inbox.html"><i class="fa fa-envelope"></i><span class="text"> 导航列表</span></a></li>				
									</ul>	
							</li>
							<li>
								<a href="#"><i class="fa fa-comment"></i><span class="text"> 留言列表</span></a>	
							</li>
							<li>
								<a href="#"><i class="fa fa-users"></i><span class="text"> 管理员管理</span> <span class="fa fa-angle-down pull-right"></span></a>
									<ul class="nav sub">
										<li><a href="page-activity.html"><i class="fa fa-car"></i><span class="text"> 添加管理员</span></a></li>
										<li><a href="page-inbox.html"><i class="fa fa-envelope"></i><span class="text"> 管理员列表</span></a></li>				
									</ul>	
							</li>
							<#else>
							<li>
								<a href="#"><i class="fa fa-book"></i><span class="text"> 文章列表</span> <span class="fa fa-angle-down pull-right"></span></a>
									<ul class="nav sub">
										<li><a href="page-activity.html"><i class="fa fa-car"></i><span class="text"> 全部文章</span></a></li>
										<li><a href="page-inbox.html"><i class="fa fa-envelope"></i><span class="text"> 未审核</span></a></li>
										<li><a href="page-invoice.html"><i class="fa fa-credit-card"></i><span class="text"> 审核退回</span></a></li>				
									</ul>	
							</li>
							</#if>
							<li>
								<a href="#"><i class="fa fa-cog"></i><span class="text"> 修改密码</span></span></a>
							</li>
						</ul>
					</div>					
				</div>
				<div class="sidebar-footer">					
					<div class="sidebar-brand">
						云衣尚
					</div>
					<p>云衣尚工作室</p>					
				</div>	
				
			</div>
			<!-- end: Main Menu -->