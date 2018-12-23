
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>회원 가입</title>
<!-- Header -->

<header>
	<%@ include file="./include/header.jsp"%>
</header>

<script>
	function reg() {
		var conf = confirm("환영합니다 :)");
		if (conf) {
			document.getElementById('regi').submit();
		}
	}

	function back() {
		history.go(-1);
	}
	//location.hash="#mytext";		
</script>



<!--registerForm -->

<div class="registerbodyForm">
	<div class="out">
		<div class="in-reg">

			<section>
				<h2 style="text-align: left">회원가입</h2>
			</section>

			<hr>


			<form action="registerForm.do" id="regi" method="post">
				<table border="1" style="table-layout: fixed" id="regboard">
					<tr>
						<td style="width: 25%; text-align: center;">ID</td>
						<td><input type="text" name="id"  style="width: 100%; padding-left: 1%; padding-right: 1%" value="${param.id}"
							placeholder=""> <c:if test="${errors.id}">ID를 입력하세요.</c:if>
							<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if></td>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">비밀번호</td>
						<td><input type="password" name="pw"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							placeholder=""> <c:if test="${errors.pw}">암호를 입력하세요.</c:if></td>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">비밀번호 확인</td>
						<td><input type="password" name="confirmPassword"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							placeholder=""> <c:if test="${errors.confirmPassword}"></c:if>
							<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if></td>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">이름</td>
						<td><input type="text" name="name"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							value="${param.name}" placeholder=""> <c:if
								test="${errors.name}"></c:if>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">이메일</td>
						<td><input type="text" name="email"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							placeholder=""> <c:if test="${errors.email}"></c:if>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">주소</td>
						<td><input type="text" name="addr"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							placeholder=""> <c:if test="${errors.addr}"></c:if>
					</tr>
					<tr>
						<td style="width: 25%; text-align: center;">전화번호</td>
						<td><input type="text" name="phone"
							style="width: 100%; padding-left: 1%; padding-right: 1%"
							placeholder=""> <c:if test="${errors.phone}"></c:if></td>
					</tr>

				</table>

				<div align="center" style="margin-top: 1em; margin-bottom: 1em">
					<a class="btn btn-success" href="#" onclick="reg()">가입하기</a> <a
						class="btn btn-primary" href="index.do">메인으로</a>

				</div>
			</form>
		</div>
	</div>
</div>






<%-- <div class="registerbodyForm">

	<form action="registerForm.do" method="post">
		<div>
			<p>
				아이디:<br />
				<input type="text" name="id" value="${param.id}">
				<c:if test="${errors.id}">ID를 입력하세요.</c:if>
				<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
			</p>

			<p>
				암호:<br />
				<input type="password" name="pw">
				<c:if test="${errors.pw}">암호를 입력하세요.</c:if>
			</p>

			<p>
				확인:<br />
				<input type="password" name="confirmPassword">
				<c:if test="${errors.confirmPassword}">확인을 입력하세요.</c:if>
				<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
			</p>

			<p>
				이름:<br />
				<input type="text" name="name" value="${param.name}">
				<c:if test="${errors.name}">이름을 입력하세요.</c:if>
			</p>

			<p>
				email:<br />
				<input type="text" name="email">
				<c:if test="${errors.email}">email을 입력하세요.</c:if>
			</p>

			<p>
				addr:<br />
				<input type="text" name="addr">
				<c:if test="${errors.addr}">주소를 입력하세요.</c:if>
			</p>

			<p>
				phone:<br />
				<input type="text" name="phone">
				<c:if test="${errors.phone}">phoneNum 입력하세요.</c:if>
			</p>

			<input type="submit" value="가입">

		</div>
	</form>

</div> --%>

</div>
<!-- Footer -->
<footer>
	<%@ include file="./include/footer.jsp"%>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</html>

