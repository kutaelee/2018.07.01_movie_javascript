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

	<div class="bodyContents" style="padding: 45px;">

		<table id="drama">


			<c:forEach var="drama" items="${dramaTag.content}">
				<td><c:out value="${drama.tag}" /></td>
				<tr>
					<c:forEach var="drama1" items="${dramaAll.content}">
						<c:if test="${drama.tag eq drama1.tag}">
							<td><a
								href="read.do?no=${drama1.number}&pageNo=${dramaPage.currentPage}&tag=${drama1.tag}"
								style="text-decoration: none;"> <img
									src="../drama/dramaImg/${drama1.picture}" width="250"
									height="300" />
							</a> <br> <%-- <c:out value="${drama1.title}"/> --%></td>
						</c:if>
					</c:forEach>
				</tr>
			</c:forEach>

		</table>
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
