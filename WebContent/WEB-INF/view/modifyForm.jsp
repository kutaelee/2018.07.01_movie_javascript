<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>게시글 수정</title>
</head>

<header>
	<%@ include file="/WEB-INF/view/include/header.jsp"%>
</header>

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
	//location.hash="#mytext";		
</script>

<body>

	<div class="listbodyForm">
		<div class="out">
			<div class="in-list">

				<section>
					<h2 style="text-align: left">글 수정하기</h2>
				</section>

				<hr>
				<form action="modify.do" id="modify" method="post">
					<input type="hidden" name="hell" value="${modReq.articleNumber}">
					<table border="1" style="table-layout: fixed" id="qnaboard">

						<tr>
							<td style="width: 15%; text-align: center;">작성자</td>
							<td style="text-align: center;">${member.name}</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: center;">제목</td>
							<td
								style="text-align: center;padding-right: 1%; padding-left: 1%;">
								<input type="text" name="modifiedtitle"
								style="width: 100%; border: 0px;" value="${modReq.title}">
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="2">내용</td>
						</tr>
						<tr>
							<td colspan="2" width="100%"
								style="text-align: left;padding-right: 1%; padding-left: 1%;">
								<textarea name="modifiedcontent"
									style="width: 100%;  height: 300px; border: 0px;">${modReq.content}</textarea>
							</td>
						</tr>
					</table>

					<div align="center" style="margin-top: 1em; margin-bottom: 1em">
						<a class="btn btn-warning" href="#" onclick="mod()">수정하기</a>
						<c:set var="pageNo"
							value="${empty param.pageNo ? '1' : param.pageNo}" />
						<a class="btn btn-primary" href="list.do?pageNo=${pageNo}">목록으로</a>
						<c:if test="${member.id == articleData.article.writer.id}">

							<!-- <a class="btn btn-danger" href="#">삭제하기</a> -->
						</c:if>
					</div>
				</form>
			</div>
		</div>
	</div>












	<%-- 

	<div class="bodyForm">
		<div class="marginread" style="margin-top: 7%">
			<form action="modify.do" method="post">
				<input type = "hidden" name = "hell" value = "${modReq.articleNumber}">
				<table border="1" width="100%" id="qnaboard">
					<tr>
						<td>작성자</td>
						<td>${member.name}</td>
					</tr>
					<tr>
						<td>게시글 수정</td>
						<td><input type="text" name="modifiedtitle" value = "${modReq.title}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><input type="text" name="modifiedcontent" value = "${modReq.content}"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="수정"></td>
					</tr>
				</table>
			</form>

		</div>
	</div> --%>
</body>
<footer>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</footer>

</html>
