<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html>
<TITLE>MOVIE</TITLE>
<header>
	<%@ include file="../include/header.jsp"%>
</header>

<style>
/* contentdiv design Area*/
.content {
	font-family: 'Nanum Pen Script';
}

.hmenu-1 {
	position: static;
}

.hmenu-1 attr {
	float: left;
	width: 10%;
	margin: 3% 1% 0 1%;
}
.hmenu-1 attr.blur {
	box-shadow: 0px 0px 20px 10px rgba(255, 255, 255, 1);
	-webkit-transform: scale(0.9);
	-moz-transform: scale(0.9);
	-o-transform: scale(0.9);
	-ms-transform: scale(0.9);
	transform: scale(0.9);
	opacity: 0.7;
	z-index: 25;
}

.scard {
	margin: 8% 3% 0 3%;
	background-color: orange;
	border: 1px solid white;
	width: 120px;
	height: 150px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.8);
	-webkit-transition: width 1s, height 1s, background-color 1s,
		-webkit-transform 1s;
	transition: width 0.5s, height 0.5s, background-color 0.5s, transform 0.5s, position 0.5s;
}
.scards {
    margin: -2% 0 0-1px;
    width: 800px;
    padding: 0 0;
    position: absolute;
    height: 400px;
    left: 22px;
    z-index: 20;
}
/* contentdiv design Area End*/

/*Another css start */
footer {
	bottom: 0;
	position: fixed;
}
h1{
	color:white;
}
/*Another css end*/
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	type="text/javascript"></script>
<script>
	//jQuery
	$(function() {
		var $container = $('#hmenu-1'),
			$attrs = $container.children('attr');
		$attrs.on('click', function(event) {
			var $attr = $(this);
			var $menu1attr = $attr.children();
			
			if ($attr.hasClass('active')) {
				$attrs.removeClass('blur').removeClass("active");
				$menu1attr.toggleClass("scards");
				return false;
			}
			$menu1attr.toggleClass("scards");
			$attrs.not($attr.removeClass('blur').addClass('active'))
				.removeClass('active')
				.addClass('blur');
		});
	});
</script>
<div class="content">
	<section id="hmenu-1" class="hmenu-1">
	<c:forEach var="drama" items="${dramaPage.content}">
	<attr>
		<div class="scard" id="menu${drama.tag}">
			 <a href="read.do?no=${drama.number}&pageNo=${dramaPage.currentPage}&tag=${drama.tag}">
			 <img src="../drama/dramaImg/${drama.picture}" width="118" height="148"/>
			 </a>
		</div>
	</attr>
	
	</c:forEach>  
	
	</section>
	<section id="hmenu-2" class="hmenu-2">
	<a href="write.do" id="drama">[게시글쓰기]</a> 
	<a href="list.do">[처음]</a>
	
	</section>
  
</div>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

</html>




 --%>










<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="drama.model.Drama" %>
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
 <table border="1" id="drama" style="border:1px solid black;border-radius:10px";>     


<c:forEach var="drama" items="${dramaPage.content}">
   <td>
      <img src="../drama/dramaImg/${drama.picture}" width="50" height="100"/>
      <br/>
      <a href="read.do?no=${drama.number}&pageNo=${dramaPage.currentPage}&tag=${drama.tag}">
      
      <span id="drama"><c:out value="${drama.title}"/></span>
      </a>
    </td>
</c:forEach>

<c:if test="${dramaPage.hasDramas()}">
   <tr>
      <td colspan="4" >

         <c:if test="${dramaPage.startPage > 5}">
         <a href="list.do?pageNo=${dramaPage.startPage - 5}">[이전]</a>
         </c:if>
       
         <c:forEach var="pNo" 
                  begin="${dramaPage.startPage}" 
                  end="${dramaPage.endPage}">
         <a href="list.do?pageNo=${pNo}" id="drama">[${pNo}]</a>
         </c:forEach>
         <c:if test="${dramaPage.endPage < dramaPage.totalPages}">
         <a href="list.do?pageNo=${dramaPage.startPage + 5}">[다음]</a>
         </c:if>
           
      </td>
   </tr>
</c:if>

   <tr>
      <td colspan="4"><a href="write.do" id="drama">[게시글쓰기]</a></td>
      <td colspan="4"><a href="list.do">[처음]</a></td>
   </tr>
<c:if test="${dramaPage.hasNoDramas()}">
   <tr>
      <td colspan="4" id="drama">게시글이 없습니다.</td>
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
















