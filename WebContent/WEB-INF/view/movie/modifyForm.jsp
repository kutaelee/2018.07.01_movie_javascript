<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<header>
	<%@ include file="../include/header.jsp"%>
</header>
<head>
<title>게시글 읽기</title>

</head>
<body>
<form action="modify.do" method="post">
<input type="hidden" name="no" value="${modReq.movieNumber}">
<p>
	번호:<br/>${modReq.movieNumber}
</p>
<p>
	제목:<br/><input type="text" name="title" value="${modReq.title}">
	<c:if test="${errors.title}">제목을 입력하세요.</c:if>
</p>
<p>
	내용:<br/>
	<textarea name="content" rows="5" cols="30">${modReq.content}</textarea>
</p>
<p>
	비디오:<br/>
	<textarea name="video" rows="5" cols="30">${modReq.video}</textarea>
</p>
<p>
	그림:<br/>
	<textarea name="picture" rows="5" cols="30">${modReq.picture}</textarea>
</p>
<p>
	태그:<br/>
	<textarea name="tag" rows="5" cols="30">${modReq.tag}</textarea>
</p>
<input type="submit" value="글 수정">
</form>
</body>
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</html>