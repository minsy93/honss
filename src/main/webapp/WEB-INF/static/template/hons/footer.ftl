<p id="back-to-top"><a href="#top"><span></span></a></p>
<footer class="footer">


	  <div class="footer_top"></div>

	  <div class="container">
		  <div class="row">
			  <div class="col-sm-6 pc-footer">
				  <a href="#">商务合作</a> <span>/</span>
				  <a href="#">招贤纳士</a> <span>/</span>
				  <a href="#">联系我们</a>
				  <p>Copyright © 2015 International HONS.</p>
			  </div>

			  <div class="col-sm-6 mobile-footer">
				  <div class="links">
                      <ul class="icon_lists clear" >
                          <li>
                              <a href="#" class="qq" target="_blank"><i class="icon iconfont">&#xe616;</i></a>
                          </li>
                          <li>
                              <a href="#" class="weico" target="_blank"><i class="icon iconfont">&#xe602;</i></a>
                          </li>
                          <li>
                              <a href="#" class="tweico" target="_blank"><i class="icon iconfont">&#xe65c;</i></a>
                          </li>
                          <li>
                              <a href="#" class="weixin" target="_blank"><i class="icon iconfont">&#xe601;</i></a>
                          </li>
                          <li>
                              <a href="#" class="qzone" target="_blank"><i class="icon iconfont">&#xe82c;</i></a>
                          </li>
                      </ul>
				  </div>
			  </div>

			  <div class="col-sm-6 pc-footer">
				  <div class="links">
                      <ul class="icon_lists clear" >
                          <li>
                              <a href="#" class="qq" target="_blank"><i class="icon iconfont">&#xe616;</i></a>
                          </li>
                          <li>
                              <a href="#" class="weico" target="_blank"><i class="icon iconfont">&#xe602;</i></a>
                          </li>
                          <li>
                              <a href="#" class="tweico" target="_blank"><i class="icon iconfont">&#xe65c;</i></a>
                          </li>
                          <li>
                              <a href="#" class="weixin" target="_blank"><i class="icon iconfont">&#xe601;</i></a>
                          </li>
                          <li>
                              <a href="#" class="qzone" target="_blank"><i class="icon iconfont">&#xe82c;</i></a>
                          </li>
                      </ul>
				  </div>
			  </div>

			  <div class="col-sm-6 mobile-footer content">
				  <a href="#">商务合作</a> <span>/</span>
				  <a href="#">招贤纳士</a> <span>/</span>
				  <a href="#">联系我们</a>
				  <p>Copyright © 2015 International HONS.</p>
			  </div>
		  </div>
	  </div>

  </footer>
  	<script src="${TEMPLATE_BASE_PATH}/js/main-js.js"></script>
  	<script src="${TEMPLATE_BASE_PATH}/js/jquery.lazyload.min.js"></script>
	<script>
		$(function() {
			$("img.lazy").lazyload({
				effect : "fadeIn"
			});
			if("${browerType!}"=="ie8"){
				$(".index-container,.news-container,.series-container").attr("style","width:980px;");
				$(".navbar-nav li a:last").attr("style","border-bottom:0px solid #fff;padding-right:0;");
				var widthPC = $(window).width();
				$(".content").attr("style","margin-left:"+((widthPC-980)/2)+"px;");
				$(".main-title").attr("style","width:980px;");
			}
			if("${browerType!}"=="ie7"){
				var widthPC = $(window).width();
				var widthDots = ($('.dots').children('li').length*250)-20;
				$(".dots li:first").attr("style","margin-left:"+((widthPC-widthDots)/2)+"px;");
				$(".navbar-nav li a:last").attr("style","border-bottom:0px solid #fff;padding-right:0;");
				$(".content").attr("style","margin-left:"+((widthPC-980)/2)+"px;");
				$(".main-title").attr("style","width:980px;");
			}
		});
	</script>
</body>
</html>