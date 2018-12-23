<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>회원 가입</title>
<!-- Header -->

<header>
   <%@ include file="../include/header.jsp"%>
</header>
<!--registerForm -->
 <body>
 
   <div class="bodyForm">
<div class="margin">
<!-- 내용은 여기에 -->
   <table border="1" id="movie" style="border:1px solid black;border-radius:10px";>     


<c:forEach var="movie" items="${moviePage.content}">
   <td>
      <img src="../movie/movieImg/${movie.picture}" width="50" height="100"/>
      <br/>
      <a href="read.do?no=${movie.number}&pageNo=${moviePage.currentPage}">
      <span id="movie"><c:out value="${movie.title}"/></span>
      </a>
    </td>
</c:forEach>

<c:if test="${moviePage.hasMovies()}">
   <tr>
      <td colspan="4" >

         <c:if test="${moviePage.startPage > 5}">
         <a href="list.do?pageNo=${moviePage.startPage - 5}">[이전]</a>
         </c:if>
       
         <c:forEach var="pNo" 
                  begin="${moviePage.startPage}" 
                  end="${moviePage.endPage}">
         <a href="list.do?pageNo=${pNo}" id="movie">[${pNo}]</a>
         </c:forEach>
         <c:if test="${moviePage.endPage < moviePage.totalPages}">
         <a href="list.do?pageNo=${moviePage.startPage + 5}">[다음]</a>
         </c:if>
           
      </td>
   </tr>
</c:if>

<c:if test="${moviePage.hasNoMovies()}">
   <tr>
      <td colspan="4" id="movie">게시글이 없습니다.</td>
   </tr>
</c:if>
</table>
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
