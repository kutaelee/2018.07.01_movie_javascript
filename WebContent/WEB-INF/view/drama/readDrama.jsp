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
<div class="bodyForm">
<div class="marginread">
<table border="1" id="drama">

<tr>
	<td>제목</td>
	<td><c:out value='${dramaData.drama.title}' /></td>
</tr>
<tr>
	<td>내용</td>
	<td><u:pre value='${dramaData.content}'/></td>
</tr>
<tr>
	<td>그림</td>
	<td>
	<img src="../drama/dramaImg/${dramaData.drama.picture}" width="100" height="200"/>
	</td>
</tr>
<tr>
	<td>비디오</td>
	<td><u:pre value='${dramaData.drama.video}'/></td>
</tr>

<tr>
	<td>태그</td>
	<td><u:pre value='${dramaData.drama.tag}'/></td>
<tr>
	<td colspan="2">
		<c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
		<a href="list.do">[목록]</a>
		<%-- <c:if test="${member.id == dramaData.drama.writer.id}"> --%>
		<%-- <a href="modify.do?no=${dramaData.drama.number}">[게시글수정]</a>
		<a href="delete.do?no=${dramaData.drama.number}">[게시글삭제]</a> --%>
		<%-- </c:if> --%>
	</td>
</tr>
</table>

</div>
</div>
</body>
<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</html>