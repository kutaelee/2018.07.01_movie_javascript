
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>게시글 작성</title>
<!-- Header -->
<script>
	function wrt() {
		var conf = confirm("새 글을 등록하시겠습니까?");
		if (conf) {
			document.getElementById('write').submit();
		} else {
			history.go(-1);
		}
	}
</script>
<header>
	<%@ include file="../include/header.jsp"%>
</header>
<!--registerForm -->
<!-- <div class=skin img src="drama/dramaImg/9-1-1.jpg"> -->
<div class="listbodyForm">
	<div class="out">
		<div class="in-list">
			<!-- 내용은 여기에 -->

			<section>
				<h2 style="text-align: left">소중한 의견 감사합니다 :)</h2>
			</section>


			<hr>
			<form action="write.do" id="write" method="post">
				<div>
					<table border="1" style="table-layout: fixed" id="qnaboard">
						<tr>
							<th style="width: 15%; text-align: center;">제목</th>
							<td style="padding-right: 1%; padding-left: 1%;"><input type="text" name="title" value="${param.title}"
								style="width: 100%; border: 0px;"> <c:if
									test="${errors.title}"></c:if> <c:out
									value='${articleData.article.title}' /></td>
						</tr>
						<tr>
							<th style="text-align: center;" colspan="2">내용</th>
						</tr>
						<tr>
							<td colspan="2" width="100%"
								style="text-align: left;padding-right: 1%; padding-left: 1%;"><textarea
									style="width: 100%; border: 0px; display: block; margin-left: auto; margin-right: auto; height: 300px;"
									name="content">${param.title}</textarea></td>
						</tr>
					</table>

					<div align="center" style="margin-top: 1em; margin-bottom: 1em">

						<c:set var="pageNo"
							value="${empty param.pageNo ? '1' : param.pageNo}" />
						<a class="btn btn-primary" href="list.do?pageNo=${pageNo}">목록보기</a>
						<%-- <c:if test="${authUser.id == articleData.article.writer.id}"> --%>
						<a class="btn btn-success" id="writeBtn" onclick="wrt()" href="#">등록하기</a>
						<%-- </c:if> --%>
					</div>

				</div>
			</form>

		</div>













		<%-- 	
		<form action="write.do" method="post">
			<p>
				제목:<br /> <input type="text" name="title" value="${param.title}">
				<c:if test="${errors.title}">제목을 입력하세요.</c:if>
			</p>
			<p>
				내용:<br />
				<textarea name="content" rows="5" cols="30">${param.title}</textarea>
			</p>
			<input type="submit" value="새 글 등록">
		</form> --%>

	</div>

</div>
<!-- Footer -->
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>