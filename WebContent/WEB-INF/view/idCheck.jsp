<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>

<script>
	function findId() {
		document.getElementById('findId').submit();


	}

	function back() {
		history.go(-1);
	}
	//location.hash="#mytext";
</script>

</head>
<body>
	<header>
		<%@ include file="/WEB-INF/view/include/header.jsp"%>
	</header>









	<div class="idcheckbodyForm">
		<div class="out">
			<div class="in-login">
				<form action="idCheck.do" id="findId" method="post">
					<div class="d-flex">
						<section>
							<h2>아이디 찾기</h2>
						</section>
					</div>

					<hr>


					<!-- 이름/전화번호 입력칸 -->
					<div class="login-form-group">
						<input type="text" name="name" id="loginBox" placeholder="이름"
							class="login-form-control" value="${param.name }" autofocus>
					</div>
					<div class="login-form-group">
						<input type="text" name="phone" id="loginBox" placeholder="전화번호"
							class="login-form-control">
					</div>

					<!-- 아이디찾기 버튼 -->
					<div class="row">
						<div class="col-md-12">
							<input type="button" value="아이디 찾기" class="btn btn-dark"
								style="width: 100%" onclick="findId()" />
						</div>
					</div>
				</form>
				${Hey}
			</div>
		</div>
	</div>

</body>
</html>
<footer style="position: inherit; bottom: 0">
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</footer>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

