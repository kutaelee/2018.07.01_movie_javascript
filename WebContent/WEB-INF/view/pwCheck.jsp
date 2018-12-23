<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script>
	function findPw() {
		document.getElementById('findPw').submit();

	}

	function back() {
		history.go(-1);
	}
	//location.hash="#mytext";
</script>





<title>비밀번호 찾기</title>
</head>
<body>
	<header> <%@ include file="/WEB-INF/view/include/header.jsp"%>
	</header>

	<div class="idcheckbodyForm">
		<div class="out">
			<div class="in-login">
				<form action="pwCheck.do" id="findPw" method="post">
					<div class="d-flex">
						<section>
						<h2>재설정</h2>
						</section>
					</div>

					<hr>

					<div class="login-form-group">
						<input type="text" name="id" id="loginBox" placeholder="아이디"
							class="login-form-control" autofocus>
					</div>
					<div class="login-form-group">
						<input type="text" name="phone" id="loginBox" placeholder="핸드폰 번호"
							class="login-form-control">
					</div>

					<div class="row">
						<div class="col-md-12">
							<input type="button" value="재설정" class="btn btn-dark"
								style="width: 100%" onclick="findPw()" />
						</div>
					</div>
				</form>

			</div>

		</div>
	</div>

</body>
</html>
<footer style="position: inherit; bottom: 0"> <%@ include
	file="/WEB-INF/view/include/footer.jsp"%> </footer>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


