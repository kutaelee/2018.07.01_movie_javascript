<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<title>로그인</title>

<meta http-equiv="refresh" content="1000">


<script language="javascript">
	function show_Banner(num) {
		for (i = 0; i < 5; i++) {
			if (num == i) {
				Rand_Banner[i].style.dispaly = "";
			} else {
				Rand_Banner[i].style.display = "none";
			}
		}
	}
</script>
<body topmargin="0" leftmargin="0">
	<div id=Rand_Banner>
		<a href="/" onfocus="this.blur();"><img
			src=/backgroundimg/infwar.jpg border="0"></a>
	</div>
	<div id=Rand_Banner>
		<a href="/" onfocus="this.blur();"><img src=./img/2-1.jpg
			border="0"></a>
	</div>
	<div id=Rand_Banner>
		<a href="/" onfocus="this.blur();"><img src=./img/2-2.jpg
			border="0"></a>
	</div>
	<div id=Rand_Banner>
		<a href="/" onfocus="this.blur();"><img src=./img/2-1.jpg
			border="0"></a>
	</div>
	<div id=Rand_Banner>
		<a href="/" onfocus="this.blur();"><img src=./img/2-2.jpg
			border="0"></a>
	</div>
	<script language="javascript">
		var R = Math.floor(Math.random() * 5);
		show_Banner(R);
	</script>
</head>


<body>
	<header>
		<%@ include file="/WEB-INF/view/include/header.jsp"%>
	</header>
	<div class="loginbodyForm">
		<div class="out">
			<div class="in-login">
				<form action="login.do" method="post">
					<div class="d-flex">
						<section>
							<h2>로그인</h2>
						</section>
					</div>
					<hr>

					<c:if test="${errors.idOrPwNotMatch}">
아이디와 암호가 일치하지 않습니다.
</c:if>

					<!-- 아이디 로그인 입력칸 -->
					<div class="login-form-group">
						<input type="text" name="id" id="loginBox" placeholder="아이디"
							class="login-form-control" value="${param.id}" autofocus>
						<c:if test="${errors.id}">ID를 입력하세요.</c:if>
					</div>
					<div class="login-form-group">
						<input type="password" name="password" id="loginBox"
							class="login-form-control" placeholder="비밀번호">
						<c:if test="${errors.password}">암호를 입력하세요.</c:if>
					</div>

					<!-- 로그인/회원가입 버튼 -->
					<div class="d-flex row">
						<div class="col-lg-12">
							<input class="btn btn-primary" style="width: 90%" type="submit"
								value="로그인">
						</div>
					</div>
					<div class="d-flex row">
						<div class="col-lg-12">
							<input class="btn btn-success" style="width: 90%" type="button"
								value="회원가입"
								onclick="location.href='${pageContext.request.contextPath}/registerForm.do'" />
						</div>
					</div>
					<!-- 아이디/비번찾기 버튼 -->
					<div class="d-flex row">
						<div class="col-lg-12">
							<input type="button" value="아이디 찾기" class="btn btn-warning"
								style="width: 90%"
								onclick="location.href='${pageContext.request.contextPath}/idCheck.do'" />
						</div>
					</div>
					<div class="d-flex row">
						<div class="col-lg-12">
							<input type="button" value="비밀번호 찾기" class="btn btn-danger"
								style="width: 90%"
								onclick="location.href='${pageContext.request.contextPath}/pwCheck.do'" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%-- 	<form action="login.do" method="post">
		<c:if test="${errors.idOrPwNotMatch}">
아이디와 암호가 일치하지 않습니다.
</c:if>
		<div style="margin-top: 20%; text-align: center";>
			<p>
				아이디:<br /> <input type="text" name="id" id="loginBox" value="${param.id}">
				<c:if test="${errors.id}">ID를 입력하세요.</c:if>
			</p>
			<p>
				암호:<br /> <input type="password" name="password" id="loginBox">
				<c:if test="${errors.password}">암호를 입력하세요.</c:if>
			</p>
			<input type="submit" value="로그인"> <input type="button"
				value="회원가입"
				onclick="location.href='${pageContext.request.contextPath}/registerForm.do'" />
			<br> <br> <input type="button" value="아이디 찾기"
				onclick="location.href='${pageContext.request.contextPath}/idCheck.do'" />
			</br> <input type="button" value="비밀번호 찾기"
				onclick="location.href='${pageContext.request.contextPath}/pwCheck.do'" />
			</br>

		</div>

	</form> --%>
</body>
</html>
<!-- Footer -->
<footer style="position: inherit; bottom: 0">
	<%@ include file="./include/footer.jsp"%>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

