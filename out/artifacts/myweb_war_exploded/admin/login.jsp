<%@ page import="org.omg.CORBA.Request" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--<c:forEach items="${err }" var="error">--%>
<%--	${error }<br>--%>
<%--</c:forEach>--%>
<!DOCTYPE HTML>
<html>
<head>
<title>后台管理登录</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />



<!-- Meta tag Keywords -->

<!-- css files -->
<!-- <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> -->
 <link rel="stylesheet" type="text/css" href="css/style.css"/>
<!-- //css files -->

	<script src="js/jquery.min.js"></script>

	<script>
		$(function () {
			$.get('findUsersServlet',function (data) {
				var qqhead = "http://q1.qlogo.cn/g?b=qq&nk="+ data.user_qq +"&s=640"
				$('#qqhead').attr('src',qqhead);
			})
		})
		
	</script>
</head>
<body>
<!--header-->
	<div class="header-w3l">
		<h1>安柯影视解析系统登陆</h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<div class="wthree-pro">
			<img src="" alt="image" id="qqhead">
			<!-- <h2>安柯影视解析系统登陆</h2> -->
			<br><br><br>
		</div>
		<form action="Login" method="post">
			<input placeholder="用户名" name="Name" class="user" type="text" required="">
			<br>
			<span style="color:#fff">${err}</span>
			<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br><br>
			<input  placeholder="密码" name="Password" class="pass" type="password" required="">
			<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
			<div class="sub-w3l">
				<!-- <span><input type="checkbox" />记住</span> -->
				<div>
					<br>
					<input type="submit" value="登 录">
				</div>
			</div>
		</form>
	</div>
</div>
<!--//main-->

<!--footer-->
<div class="footer">
	<p><a href="http://www.jarod8.cn/" target="_blank">安柯工作室版权所有</a></p>
</div>
<!--//footer-->

</body>
</html>
