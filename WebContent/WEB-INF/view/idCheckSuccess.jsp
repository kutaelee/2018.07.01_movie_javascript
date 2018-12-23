<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
</head>
<body>

	<header> <%@ include file="/WEB-INF/view/include/header.jsp"%>
	</header>
	<%-- 
	<c:if test="${Hey eq null}">
		<script>alert("다시 입력하시오");
		</script>
		<script type="text/javascript">
			location.href = "idCheck.do";
		</script>
	</c:if>

	<div style="margin-top: 20%; text-align: center">
		찾으신 아이디 : ${Hey}<br> <input type="button" value="돌아가기"
			Onclick="location.href='login.do'" />
	</div> --%>


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


					<!-- 아이디 확인란 -->
					<div style="margin-top: 20%; text-align: center">
						<div>
							<text style="font-size: 2vw"> <em>고객님의 아이디는</em></text>
							<text style="font-size: 6vw">${Hey}</text>
							<text style="font-size: 2vw"> <em>입니다</em></text>
						</div>
					</div>

					<!-- 아이디찾기 버튼 -->
					<div class="row">
						<div class="col-md-12">
							<input type="button" class="btn btn-dark" value="돌아가기"
								Onclick="location.href='login.do'" />
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
