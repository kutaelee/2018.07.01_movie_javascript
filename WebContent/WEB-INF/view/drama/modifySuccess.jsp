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
<br>
${ctxPath = pageContext.request.contextPath ; ''}
<a href="${ctxPath}/drama/list.do">[게시글목록보기]</a>
<a href="${ctxPath}/drama/read.do?no=${modReq.dramaNumber}">[게시글내용보기]</a>
</body>
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</html>