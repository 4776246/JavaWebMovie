<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<head>
		<meta charset="utf-8" />

		<title></title><!-- 网站标题 -->

		<meta name="keywords" content="" /><!-- 网站关键字 -->
		<meta name="description" content="" /><!-- 网站说明 -->
		<meta name=viewport content="width=device-width,anicital-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
		<script type="text/javascript" src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
		<!--微博引入关注插件-->
		<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="css/style.css" />
		<!--浏览器标签ico-->
		<link rel="shortcut icon" href="img/favicon.ico" />
		<!--书签标签-->
		<link rel="bookmark" href="img/tvico.png" />
		<!--苹果桌面标题-->
		<meta name="apple-mobile-web-app-title" content="全网VIP解析">
		<!--苹果桌面图标-->
		<link rel="apple-touch-icon-precomposed" sizes="180x180" href="img/tvlogo.png">

		<script>

			$(function () {

				//网页导航信息设置
				$.get("findTitleServlet",function (data) {
					for (var key in data){
						//导航名
						$("#title_"+ data[key].id).html(data[key].title_name);
						//导航跳转网址
						$("#title_"+ data[key].id).attr("href",data[key].title_url);
						// alert(data[key].title_name);
					}
				})

				//页面信息设置
				$.get("findOptionsServlet",function (data) {
					//网站标题设置
					$('title').html(data.sitename);
					//网站关键字设置
					$('meta[name="keywords"]').attr('content',data.keyword);
					//网站描述设置
					$('meta[name="description"]').attr('content',data.describe);
					//网站域名设置
					$('#siteurl').attr('href',data.siteurl);

					//网站版权跳转设置
					$('#copyright').attr('href',data.siteurl);
					//网站版权名
					$('#copyright').html(data.copyright);

					//网站备案信息设置
					$('#icp').html(data.icp);
					//CNZZ统计代码设置
					// $("#cnzz").html(data.cnzz);
				})

				//网站解析接口设置
				$.get("findJxdataServlet",function (data) {

					var text = "";
					for(var key in data){
						if (data[key].jx_value != null && data[key].jx_value != ""){
							text += '<option value="'+ data[key].jx_value +'">'+ data[key].jx_name +'</option>';
						}
					}
					$('select').html(text);
				})

				//视频解析
				$('#play').click(function () {
					var jk = ($('#jk').val());
					var url = $('#url').val();
					var text = jk + url;
					$('#palybox').attr('src',text);
				})

			});
		</script>

	</head>



	<body>

		<header class="navbar-fixed-top">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- 手机自适应样式 -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">导航切换</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
                            <!--logo图标-->
                            <a class="navbar-brand logo" href="#" id="siteurl"></a>
							
						</div>

						<!-- pc导航样式 -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li>

									<a id="title_1" href="" target="_blank"><!-- 导航1 --></a>
								</li>
								<li>
									<a id="title_2" href="" target="_blank"> <!-- 导航2 --></a>
								</li>
								<li>
									<a id="title_3" href="" target="_blank"><!-- 导航3 --></a>
								</li>
								<li>
	                                <a id="title_4" href="" target="_blank"><!-- 导航4 --></a>
                                </li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</header>
		<!--视频box区域-->
		<div class="container-fluid video-box">
			<div class="container ">
				<div class="tit-name">
					<span>正在播放:</span>
					<h1 id="tittext">感谢您使用视频解析服务,正在播放视频！</h1>
				</div>
				<iframe id="palybox" src="http://jx.drgxj.com/?url=http://v.youku.com/v_show/id_XMTI4NTY3MTY1Mg==.html" allowtransparency="true" frameborder="0" scrolling="no" allowfullscreen="true" allowtransparency="true"></iframe>

				<div class="url-box">
					<div class="input-group">
						<input type="text" id="url" class="form-control url-text" aria-label="Text input with segmented button dropdown" placeholder="请粘贴视频网址>ㅂ<ﾉ ☆" title="请复制你想要看的视频网址，粘贴到此处点击播放即可！">
						<div class="input-group-addon">
							<select class="url-c url-text" title="如发现视频无法正常播放请尝试更换视频线路！" id="jk">

							</select>
						</div>
						<div class="input-group-btn">

							<button type="button" class="btn btn-default btn-play" title="点击开始解析并开始播放" id="play">解析播放</button>
						</div>
					</div>

				</div>
				<div class="tit-gg">
					<span>若视频播放异常，尝试刷新或更换接口即可解决！</span>
				</div>
			</div>
		</div>
		<div class="container-fluid logo-box">
			<div class="container ">
<%--				<script src='http://e.qxfly.com/55363'></script>--%>
								</div>
				</div>
		<!--平台logo	-->
		<div class="container-fluid logo-box">
			<div class="container ">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-tit">
							<h4>支持以下网站视频</h4>
							<p>敬请关注，近期将开放支持更多平台。</p>
						</div>
					</div>
				</div>
				<!--第一行-->
				<div class="row">
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://vip.iqiyi.com/" target="_blank" title="爱奇艺会员">
								<img class="img-responsive" src="img/iqiyilogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://film.qq.com/" target="_blank" title="腾讯会员中心">
								<img class="img-responsive" src="img/qqlogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://vip.youku.com/" target="_blank" title="优酷会员中心">
								<img class="img-responsive" src="img/youkulogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://www.mgtv.com/vip/" target="_blank" title="芒果会员中心">
								<img class="img-responsive" src="img/hunantvlogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://yuanxian.le.com/" target="_blank" title="乐视会员中心">
								<img class="img-responsive" src="img/letvlogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://vip.tudou.com" target="_blank" title="土豆会员中心">
								<img class="img-responsive" src="img/tudoulogo.png" />
							</a>
						</div>
					</div>
				</div>
				<!--第一行结束-->

				<!--第二行开始-->
				<div class="row">
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.baofeng.com/" target="_blank" title="暴风会员">
								<img class="img-responsive" src="img/baofeng.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://vip.1905.com/" target="_blank" title="1905电影网视频">
								<img class="img-responsive" src="img/1905logo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://vip.kankan.com/" target="_blank" title="天天看看">
								<img class="img-responsive" src="img/kankan.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://www.pptv.com/" target="_blank" title="PPTV聚力">
								<img class="img-responsive" src="img/pptv.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.yinyuetai.com/" target="_blank" title="音悦台MV">
								<img class="img-responsive" src="img/yinyuetailogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.56.com/" target="_blank" title="56视频">
								<img class="img-responsive" src="img/56logo.png" />
							</a>
						</div>
					</div>
				</div>
				<!--第二行结束-->

				<!--第三行开始-->
				<div class="row">

					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.fun.vip" target="_blank" title="风行视频">
								<img class="img-responsive" src="img/fengxing.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://movie.ku6.com/" target="_blank" title="酷6视频">
								<img class="img-responsive" src="img/ku6logo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://vip.wasu.cn/" target="_blank" title="WASU华数视频">
								<img class="img-responsive" src="img/wasulogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://video.sina.com.cn/" target="_blank" title="新浪视频">
								<img class="img-responsive" src="img/sinalogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="https://film.sohu.com/" target="_blank" title="搜狐视频">
								<img class="img-responsive" src="img/sohulogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.baomihua.com/" target="_blank" title="爆米花">
								<img class="img-responsive" src="img/baomihualogo.png" />
							</a>
						</div>
					</div>
				</div>
				<!--第三行结束-->
				<div class="row">

					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a target="_blank" title="看看新闻网视频">
								<img class="img-responsive" src="img/kankannewslogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a target="_blank" title="糖豆视频">
								<img class="img-responsive" src="img/tangdoulogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://tv.cctv.com/" target="_blank" title="央视网">
								<img class="img-responsive" src="img/cntvlogo.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2 ">
						<div class="logo-lie">
							<a href="http://www.acfun.cn/" target="_blank" title="Ac弹幕网">
								<img class="img-responsive" src="img/acfun.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.bilibili.com/" target="_blank" title="哔哩哔哩">
								<img class="img-responsive" src="img/bilibili.png" />
							</a>
						</div>
					</div>
					<div class="col-xs-4 col-sm-2">
						<div class="logo-lie">
							<a href="http://www.aipai.com/" target="_blank" title="爱拍原创">
								<img class="img-responsive" src="img/aipai.png" />
							</a>
						</div>
					</div>
				</div>
				<!---->
			</div>
		</div>
		<!-- <div class="container-fluid logo-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-tit">
							<h4>畅所欲言评论一下 </h4>
						</div>
					</div>
				</div>
			</div>
		</div> -->
<footer class="footer">
		<!--居中部分-->
		<hr style="display: block;height: 1px;margin-bottom: 10px;background-color: #4f4f4f;    margin-top: 0px;margin-bottom: 20px;border: 0;"/>
		<div class="container footer-tit">
				<div class="counter">
				『您是本站第<script src="http://www.xiaoniu168.com/counts7956.html" language="JavaScript" charset="utf-8"></script>位访客』
			</div>		
			<p>本站提供的最新电影和电视剧资源均系收集于各大视频网站,本站只提供web页面服务,并不提供影片资源存储,也不参与录制、上传。<br/>若本站收录的节目无意侵犯了贵司版权，请联系我们,我们会及时处理和回复,谢谢。</p>
			
			<p><a class="foot-tt" href="http://www.miitbeian.gov.cn"><img style="vertical-align: middle;" src="img/beian.png"/><span id="icp"></span></a></p>
			<p><a href="" target="_blank" id="copyright"></a>版权所有</p>
			<p class="toot-tto" id="cnzz">


			</p>
			<!--统计展示-->
		</div>
	</div>
 </footer>
<!--侧滑-->


<%--<script type="text/javascript">--%>
<%--		//判断F12审查元素--%>
<%--function fuckyou() {--%>
<%--	window.close(); //关闭当前窗口(防抽)--%>
<%--	window.location = "about:blank"; //将当前窗口跳转置空白页--%>
<%--}--%>

<%--function ck() {--%>
<%--	console.profile();--%>
<%--	console.profileEnd();--%>
<%--	//我们判断一下profiles里面有没有东西，如果有，肯定有人按F12了，没错！！--%>
<%--	if(console.clear) {--%>
<%--		console.clear()--%>
<%--	};--%>
<%--	if(typeof console.profiles == "object") {--%>
<%--		return console.profiles.length > 0;--%>
<%--	}--%>
<%--}--%>

<%--function hehe() {--%>
<%--	if((window.console && (console.firebug || console.table && /firebug/i.test(console.table()))) || (typeof opera == 'object' && typeof opera.postError == 'function' && console.profile.length > 0)) {--%>
<%--		fuckyou();--%>
<%--	}--%>
<%--	if(typeof console.profiles == "object" && console.profiles.length > 0) {--%>
<%--		fuckyou();--%>
<%--	}--%>
<%--}--%>
<%--hehe();--%>
<%--window.onresize = function() {--%>
<%--	if((window.outerHeight - window.innerHeight) > 200)--%>
<%--		//判断当前窗口内页高度和窗口高度，如果差值大于200，那么呵呵--%>
<%--		fuckyou();--%>
<%--}--%>
<%--</script>--%>
<%--	<script type="text/javascript" src="js/tv-beipy.js" /></body>--%>

	</body>
</html>
