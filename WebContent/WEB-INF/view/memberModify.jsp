<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>회원 정보</title>
<!-- Header -->

<header>
	<%@ include file="./include/header.jsp"%>
</header>


<!--registerForm -->
<div class="memberbodyForm">

	<!-- 수정/돌아가기 버튼 기능 -->
	<script>
		function mod() {
			var conf = confirm("정말로 수정하시겠습니까?");
			if (conf) {
				document.getElementById('modify').submit();
			} else {
				history.go(-1);
			}
		}
	
		function back() {
			history.go(-1);
		}
	</script>

	<!-- 게시글 작성후 -->
	<div class="out">
		<div class="in">
			<form action="memberModify.do" id="modify" method="post">
				<div class="d-flex">
					<section>
						<h2>회원정보</h2>
					</section>
				</div>
				<hr>
				<table class="table table-responsive-md" id="modBoard">
					<tr>
						<td width="20%">번호</td>
						<td>${articleData.article.number}<input type="hidden"
							name="no" value="${articleData.article.number}" />
						</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" value="${member.id}"
							disabled style="border: 0px"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" value="${member.name}"
							style="border: 0px"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email" value="${member.email}"
							style="border: 0px"></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="addr" value="${member.addr}"
							style="border: 0px"></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" name="phone" value="${member.phone}"
							style="border: 0px"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" value=""
							style="border: 0px"></td>
					</tr>
				</table>
				<div class="d-flex row" align="center">
					<a class="btn btn-warning offset-lg-2 col-lg-4" id="modifyBtn"
						href="#" onclick="mod()">수정하기</a> <a
						class="btn btn-primary col-lg-4" href="#" id="backBtn"
						onclick="back()">돌아가기</a>
				</div>
			</form>
		</div>
	</div>










	<%-- <!-- 내용은 여기에 -->

	<form action="memberModify.do" method="post">
		<table style="background-color:white;" id="membertable">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="${member.id}" disabled></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${member.name}"></td>
				<td>이메일</td>
				<td><input type="text" name="email" value="${member.email }"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr" value="${member.addr }"></td>
				<td>연락처</td>
				<td><input type="text" name="phone" value="${member.phone }"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pw" value=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
 --%>

</div>

<!-- Footer -->
<footer>
	<%@ include file="./include/footer.jsp"%>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</html>

