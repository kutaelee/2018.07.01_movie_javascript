<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="google-translate-customization"
	content="6f1073ba568f1202-9c8990a4b3025b3e-ga74e3ea243d3f01d-14"></meta>
<!-- 세계 언어 선택 메타 태그 -->
<meta charset="UTF-8">
<script type="text/javascript"
	src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script src="http://code.jquery.com/jquery-1.11.1.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scfile.js"></script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<html>
<title>홈 화면</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/half-slider.css"
	rel="stylesheet">
<!-- start 웹톡 -->
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/lib/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/lib/jquery-ui-1.10.4.custom.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/lib/jquery.slimscroll.js"></script>
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/lib/jquery.fullscreen.js"></script>
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/lib/jsxc.dep.js"></script>
<script
	src="${pageContext.request.contextPath}/jsxc.example/jsxc/jsxc.js"></script>
<%-- <script
src="${pageContext.request.contextPath}/jsxc.example/jsxc/js/jsxc.example.js"></script> --%>
<link
	href="${pageContext.request.contextPath}/jsxc.example/jsxc/css/jquery-ui.min.css"
	media="all" rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/jsxc.example/jsxc/css/jsxc.css"
	media="all" rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/jsxc.example/css/jsxc.example.css"
	media="all" rel="stylesheet" type="text/css" />
<!-- end 웹톡 -->
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
</style>
<script>$(function() {
		if (jsxc.xmpp.conn == null) {
			var username = "${member.id}";
			var password = "${member.pw}";
			var jid = username + "@localhost";
			jsxc.init({
				xmpp : {
					url : 'http://localhost:7070/http-bind/'
				},
				root : '/team2/jsxc.example/jsxc'
			});

			jsxc.start(jid, password);
			$('#webTalkLogin').click(jsxc.gui.showLoginBox);
		}

		$('#logout').click(
			jsxc.xmpp.logout(),
			jsxc.xmpp.conn.flush(),

			jsxc.xmpp.disReady()
		);
	});
</script>

<!-- Navigation -->
<div class="pop1">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/index.do" id="brand">영화,드라마
				VOD 서비스</a>




			<!-- <div class="menu"> -->
			<div class="collapse navbar-collapse menu" id="navbarResponsive">
				<div class="navbar-nav ml-auto">
					<div class="nav-item">
						<a class="nav-link"
							href="${pageContext.request.contextPath}/index.do" id=home>홈
							<span class="sr-only">(current)</span>
						</a>
					</div>
					<div class="nav-item">
						<a class="nav-link"
							href="${pageContext.request.contextPath}/movie.do"
							id="movie">영화</a>
					</div>
					<div class="nav-item">
						<a class="nav-link"
							href="${pageContext.request.contextPath}/drama/list.do"
							id="drama">드라마</a>
					</div>
					<div class="nav-item">
						<a class="nav-link"
							href="${pageContext.request.contextPath}/qnaboard/article/list.do"
							id="help">고객센터</a>
					</div>
				</div>
			</div>


			<div class="collapse navbar-collapse menuBtn">
				<div class="row">
					<c:if test="${member.id != null }">
						<div class="nav-item">
							<a class="nav-link col-lg-12"> 환영합니다.<br>${member.id } 님 </a>
						</div>
					</c:if>
				</div>

				<c:if test="${member.id != null }">
					<div class="clearfix col-lg-2">
						<input type="button" class="btn btn-dark" style="width: 100%"
							value="회원정보보기"
							onclick="location.href='${pageContext.request.contextPath}/memberModify.do'" />
					</div>
					<div class="clearfix col-lg-2">
						<input type="button" class="btn btn-dark" style="width: 100%"
							value="로그아웃" id="logout"
							onclick="location.href='${pageContext.request.contextPath}/logout.do'" />
					</div>
				</c:if>

				<c:if test="${member.id == null}">
					<div class="clearfix col-lg-2">
						<input type="button" class="btn btn-dark" style="width: 100%"
							value="로그인"
							onclick="location.href='${pageContext.request.contextPath}/login.do'" />
					</div>
				</c:if>
				<div class="clearfix col-lg-2">
					<input type="button" class="btn btn-dark" style="width: 100%"
						id="webTalkLogin" value="웹톡" />
				</div>

				<div class="transLanguage" id="google_translate_element"></div>
			</div>
		</div>
</div>
</nav>
<!-- </div> -->




<%-- <!-- <div class="menu"> -->
			<div class="collapse navbar-collapse menu" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/index.do" id=home>홈 <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/movie.do" id="movie">영화</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/drama.do" id="drama">드라마</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/qnaboard/article/list.do"
						id="help">고객센터</a></li>

					<div class="row">
						<c:if test="${member.id == null}">
							<li><input type="button" class="btn btn-dark col-lg-2"
								style="width: 100%" value="로그인"
								onclick="location.href='${pageContext.request.contextPath}/login.do'" /></li>
						</c:if>
						<c:if test="${member.id != null }">
							<li class="nav-item"><a class="nav-link col-lg-2">
									환영합니다.${member.id } 님 </a></li>
							<input type="button" class="btn btn-dark" style="width: 100%"
								value="회원정보보기"
								onclick="location.href='${pageContext.request.contextPath}/memberModify.do'" />
						&nbsp;<input type="button" class="btn btn-dark col-lg-2"
								style="width: 100%" value="로그아웃" id="logout"
								onclick="location.href='${pageContext.request.contextPath}/logout.do'" />
						</c:if>
						<li>&nbsp;<input type="button" class="btn btn-dark col-lg-2"
							style="width: 100%" id="webTalkLogin" value="웹톡" /></li>
					</div>
				</ul>
			</div>
		</div>
		<!-- </div> --> --%>
<!-- 언어변환 -->



</div>
</html>