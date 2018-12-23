<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<header>
	<%@ include file="./include/header.jsp"%>
</header>
<head>
<title>게시글 읽기</title>

<script>
	function del() {
		var conf = confirm("정말로 삭제하시겠습니까?");
		if (conf) {
			document.getElementById('delete').submit();
		} else {
			history.go(-1);
		}
	}

	function back() {
		history.go(-1);
	}
	//location.hash="#mytext";		
</script>

</head>
<body>
	<div class="readbodyForm">
		<div class="out">
			<div class="in-list">

				<section>
					<h2 style="text-align: left">고객의 소리</h2>
				</section>

				<form action="delete.do" id=delete method="post">
					<input type="hidden" name="no" value="${articleData.article.qano}">
					<table border="1" style="table-layout: fixed" id="qnaboard">

						<tr>
							<td style="width: 15%; text-align: center;">작성자</td>
							<td style="text-align: center;">${articleData.article.writer.name}</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: center;">제목</td>
							<td
								style="text-align: center; word-break: break-all; padding-right: 1%; padding-left: 1%;"><c:out
									value='${articleData.article.title}' /></td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="2">내용</td>
						</tr>
						<tr>
							<td colspan="2" width="100%"
								style="text-align: left; word-break: break-all; padding-right: 1%; padding-left: 1%;"><u:pre
									value='${articleData.content}' /></td>
						</tr>
					</table>
				</form>
				<div align="center" style="margin-top: 1em; margin-bottom: 1em">
					<c:set var="pageNo"
						value="${empty param.pageNo ? '1' : param.pageNo}" />
					<a class="btn btn-primary" href="list.do?pageNo=${pageNo}">돌아가기</a>
					<c:if test="${member.id == articleData.article.writer.id}">
						<a class="btn btn-warning"
							href="modify.do?no=${articleData.article.qano}">수정하기</a>
						<a class="btn btn-danger" href="#" onclick="del()">삭제하기</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<%@ include file="./include/footer.jsp"%>
</footer>
</html>