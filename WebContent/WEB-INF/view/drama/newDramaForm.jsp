
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>게시글 작성</title>
<!-- Header -->

<header>
	<%@ include file="../include/header.jsp"%>
</header>
<!--registerForm -->
<div class=skin img src="drama/dramaImg/9-1-1.jpg">
	<div class="bodyForm">

		<!-- 내용은 여기에 --><!--  enctype="multipart/form-data" -->
		<form action="write.do" method="post">
			<p>
				제목:<br /><input type="text" name="title" value="${param.title}">
				<c:if test="${errors.title}">제목을 입력하세요.</c:if>
			</p>
			<p>
				내용:<br />
				<textarea name="content" rows="5" cols="30">${param.title}
				</textarea>
			</p>
			<p>
				비디오:<br />
				<!-- <input type="file" name="video"/> -->
				<input type="text" name="video"/>
				
			</p>
			<p>
				그림:<br />
				<!-- <input type="file" name="picture"/> -->
				<input type="text" name="picture"/>
				
			</p>
			<p>
				태그:<br />
				<!-- <input type="file" name="picture"/> -->
				<input type="text" name="tag"/>
				
			</p>
			<input type="submit" value="새 글 등록">
		</form>
<!--  <form action="write.act" method="post" enctype="Multipart/form-data">
text1: <input type="text" name="title" /> <br/>
text1: <input type="text" name="content" /> <br/>
file1: <input type="file" name="video" /> <br/>
file2: <input type="file" name="picture" /> <br/>
<input type="submit" value="전송" />
</form> -->
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