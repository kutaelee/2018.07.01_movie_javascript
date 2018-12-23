<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>회원 가입</title>
<!-- Header -->

<header>
	<%@ include file="../include/header.jsp"%>
</header>
<!--registerForm -->
<body>

	<div class="listbodyForm">
		<div class="out">
			<div class="in-list">
				<!-- 내용은 여기에 -->
				<section>
					<h2 style="text-align: left">고객센터</h2>
				</section>

				<table border="1" id="qnaboard"
					style="border: 1px solid black; border-radius: 10px";>

					<tr>
						<td style="width: 15%; text-align: center">번호</td>
						<td>제목</td>
						<td style="width: 20%; text-align: center">작성자</td>
						<td style="width: 20%; text-align: center">조회수</td>
					</tr>
					<c:if test="${articlePage.hasNoArticles()}">
						<tr>
							<td colspan="4" id="qnaboard">게시글이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="article" items="${articlePage.content}">
						<tr>
							<td style="width: 15%; text-align: center">${article.number}</td>
							<td><a
								href="read.do?qano=${article.qano}&pageNo=${articlePage.currentPage}">
									<span id="qnaboard"><c:out value="${article.title}" /></span>
							</a></td>
							<td id="qnaboard" style="width: 10%; text-align: center">${article.writer.name}</td>
							<td style="width: 10%; text-align: center">${article.readCount}</td>
						</tr>
					</c:forEach>


					<%-- <c:if test="${articlePage.hasArticles()}">
   <tr>
      <td colspan="4" >

         <c:if test="${articlePage.startPage > 5}">
         <a href="list.do?pageNo=${articlePage.startPage - 5}">[이전]</a>
         </c:if>
       
       
         <c:if test="${articlePage.endPage < articlePage.totalPages}">
         <a href="list.do?pageNo=${articlePage.startPage + 5}">[다음]</a>
         </c:if>
           
      </td>
   </tr>
</c:if> --%>


				</table>
				<hr>

				<div align="right">
					<a class="btn btn-default" href="write.do" id="qnaboard2">글쓰기</a>
				</div>

				<!-- <div class="text-center" id=""> -->
				<ul class="pagination">

					<li class="page-item"><c:if
							test="${articlePage.startPage > 3}">
							<a class="page-link"
								href="list.do?pageNo=${articlePage.startPage - 3}">Previous</a>
						</c:if></li>

					<li class="page-item"><c:forEach var="pNo"
							begin="${articlePage.startPage}" end="${articlePage.endPage}">
							<a class="page-link active" href="list.do?pageNo=${pNo}">${pNo}</a>
						</c:forEach></li>

					<li class="page-item"><c:if
							test="${articlePage.endPage < articlePage.totalPages}">
							<a class="page-link"
								href="list.do?pageNo=${articlePage.startPage + 3}">Next</a>
						</c:if></li>
				</ul>
				<!-- </div> -->
			</div>

		</div>
	</div>


</body>
<!-- Footer -->
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</html>
