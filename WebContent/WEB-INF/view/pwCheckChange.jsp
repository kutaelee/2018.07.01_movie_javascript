<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>

	<script>
		function changeConfirm() {
			if (document.getElementById("loginBox").value == document.getElementById("loginBoxx").value) {
				alert("비밀번호 변경 완료.");

			} else {

				alert("비밀번호가 같지 않습니다.");
				location.href = "pwCheck.do";
			}
		}
	</script>


</head>
<body>
	<header> <%@ include file="/WEB-INF/view/include/header.jsp"%>
	</header>


	<div class="idcheckbodyForm">
		<div class="out">
			<div class="in-login">
				<form action="pwCheckChange.do" method="post">
					<div class="d-flex">
						<section>
						<h2>재설정</h2>
						</section>
					</div>

					<hr>



					<!-- 변경할 비밀번호 입력칸 -->
					<div class="login-form-group">
						<input type="password" name="pwd1" id="loginBox"
							placeholder="변경할 비밀번호" class="login-form-control" autofocus>
					</div>
					<div class="login-form-group">
						<input type="password" name="pwd2" id="loginBoxx"
							placeholder="변경할 비밀번호 확인" class="login-form-control">
					</div>




					<!-- 변경할 비밀번호 버튼 -->
					<div class="row">
						<div class="col-md-12">
							<input type="submit" value="비밀번호 변경" class="btn btn-dark"
								style="width: 100%" onclick="javascript:changeConfirm()" />
						</div>
					
				</form>

			</div>
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

