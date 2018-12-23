<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<TITLE>MOVIE</TITLE>
<header>
	<%@ include file="./include/header.jsp"%>
</header>

<style>
/* contentdiv design Area*/
.content {
	font-family: 'Nanum Pen Script';
}

.hmenu-1 {
	position: static;
}

attr {
	width: 10%;
	margin: 3% 1% 0 1%;
	-webkit-transition: width 1s, height 1s, background-color 1s,
		-webkit-transform 1s;
	transition: width 0.5s, height 0.5s, background-color 0.5s, transform
		0.5s;
	float: none;
}

attr.blur {
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
	/*margin : top right bottom left */
	background-color: black;
	border: 1px solid white;
	width: 100%;
	height: 200px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.8);
	-webkit-transition: width 1s, height 1s, background-color 1s,
		-webkit-transform 1s;
	transition: width 0.5s, height 0.5s, background-color 0.5s, transform
		0.5s;
}

.scard.active {
	height: 400px;
}

.scard.blur {
	box-shadow: 0px 0px 20px 10px rgba(255, 255, 255, 1);
	-webkit-transform: scale(0.9);
	-moz-transform: scale(0.9);
	-o-transform: scale(0.9);
	-ms-transform: scale(0.9);
	transform: scale(0.9);
	opacity: 0.7;
	z-index : -1;
}

.DetailContent {
	margin: 0 0 0 12px;
	width: 98.5%;
	height: 70%;
	background: white;
}

.mlist {
	color: black;
	float: left;
	width: 20%;
	height: 100%;
	background: yellow;
	border: 2px solid;
	transition: width 0.5s, height 0.5s, background 0.5s, transform 0.5s;
}
/* contentdiv design Area End*/

/*Another css start */
footer {
	bottom: 0;
	position: fixed;
}

h2 {
	padding-left: 25px;
	text-align: left;
	color: white;
}
/*main body*/
.content {
	margin-bottom: 5%;
}
/* 포스터 클릭시 뜨는 새 창 */
.movieContent {
    top: 8%;
    left: 1%;
    position: absolute;
    width: 98%;
    height: 50%;
    background: black;
    color: white;
    font-size : 5em;
    z-index:5;
}
#movieimg{
width:100%;
height:100%;
}
/*Another css end*/
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	type="text/javascript"></script>
<script>
	//jQuery
	// 형식 : class는 $(".[선택자]") / id는 $("#[선택자]") 
	//$("[선택자]").attr() : [선택자]의 속성(Attribute) 값 (id, name, class) 등을 가져옴
	//$("[선택자]").children() : [선택자]의 자식요소 
	$(function() {
		var data_no = 1;
		var manu_no = 1;
		//id가 hmenu-1인 태그의 자식 요소중 attr 태그의 자식 태그를 $attrs에 지정
		var $container = $('#hmenu-1'), $hmenu_1 = $container.children('attr'), 
		$menus = $hmenu_1.children();// <-- menu1_1 | menu1_2 | .... | menu1_6
		$attrs_attr = $menus.children('div'); // <-- DetailContent
		$mlists = $attrs_attr.children();//<-- mlist1_n 

		$(".movieContent").hide();
		
		// menu1_1 구역에 마우스 hover 시 이벤트
		$menus.on('mouseenter', function(event) {
			//클릭 한 구역의 태그를 $attr 에 지정 
			var $attr = $(this);

			//클래스가 active 상태인 태그를 클릭 시
			if ($attr.hasClass('active')) {
				//.blur class, .active class 제거
				$menus.removeClass('blur').removeClass("active");
				return false;
			}
			//.toggleClass(changeClass) : 해당 선택자의 클래스를 "changeClass" 로 교체.
			// $menu1attr.toggleClass("scards"); < 사용 안함.

			//.not(nowtag) : nowtag를 제외한 $menus의 모든 태그에 적용
			//$attr엔 .blur를 빼고 .active를 추가
			//$attrs 중에 $attr(현재 클릭 한 태그/영역)을 뺸 태그들에 .active를 빼고 .blur를 적용
			$menus.not($attr.removeClass('blur').addClass('active'))
					.removeClass('active').addClass('blur');
		});
			
		// mlist 구역 클릭 이벤트
		$mlists.on('click', function() {
			var $attr = $(this);
			var $mlistSelector = $attr.children('div');

			$mlistSelector.attr('id', 's' + $attr.attr('id')); // <-- 스크립트창 div의 id를 smlist1_n로 변경.
			$("#"+$mlistSelector.attr('id')).toggle("fast");//smlist1_n에 해당하는 스크립트 창 띄움
			
		});
	});
	
</script>

<div class="content">
	<section id="hmenu-1" class="hmenu-1">
		<attr>
		<div class="scard" id="menu1_1">
		 
			<h2 id="tag1">공포</h2>
			<div class="DetailContent" id="DetailContents">
			
				<!-- 내용. -->
				<div class="mlist" id="mlist1_1">
				 
				<%-- <img src="${moviePage.content[0].picture}" width="100%" height="100%"></img><br /> --%>
					<div class="movieContent" id="t1">스크립트 창1</div>
				</div>
				<div class="mlist" id="mlist1_2">
					
					<div class="movieContent" id="t1">스크립트 창2</div>
				</div>
				<div class="mlist" id="mlist1_3">
					
					<div class="movieContent" id="t1">스크립트 창3</div>
				</div>
				<div class="mlist" id="mlist1_4">
					
					<div class="movieContent" id="t1">스크립트 창4</div>
				</div>
				<div class="mlist" id="mlist1_5">
				
					<div class="movieContent" id="t1">스크립트 창5</div>
				</div>
				<%-- <!-- DB에서 가져올 시  -->					 
				<c:forEach var="moviedata" items="${movieData.content}"><!--MovieData.MovieContent -->
				
					<div class="mlist" id="mlist1_${moviedata.number}"><!--MovieData.MovieContent.number -->

						<img src="../../movie/movieImg/${moviedata.picture}"/><!--MovieData.MovieContent.picture -->
						
						<div class="movieContent" id="t1">
							<!--스크립트 안의 내용 (${moviedata.content} / ${moviedata.tag} 등... ) --> 
						</div>
					</div>
				</c:forEach> 
				--%>
			</div>
		</div>
		</attr>
		<attr>
		<div class="scard" id="menu1_2">
			<h2 id="tag2">액션</h2>
			<div class="DetailContent" id="DetailContents">
				<!-- 내용. -->
			</div>
		</div>
		</attr>
		<attr>
		<div class="scard" id="menu1_3">
			<h2 id="tag3">스릴러</h2>
			<div class="DetailContent" id="DetailContents">
				<!-- 내용. -->
			</div>
		</div>
		</attr>
		<attr>
		<div class="scard" id="menu1_4">
			<h2 id="tag4">코미디</h2>
			<div class="DetailContent" id="DetailContents">
				<!-- 내용. -->
			</div>
		</div>
		</attr>
		<attr>
		<div class="scard" id="menu1_5">
			<h2 id="tag5">멜로</h2>
			<div class="DetailContent" id="DetailContents">
				<!-- 내용. -->
			</div>
		</div>
		</attr>
		<attr>
		<div class="scard" id="menu1_6">
			<h2 id="tag6">SF</h2>
			<div class="DetailContent" id="DetailContents">
				<!-- 내용. -->
			</div>
		</div>
		</attr>
	</section>
	<c:forEach items="${moviePage.content}" var="data" varStatus="status">
				<script>
				$("#mlist1_${status.count}").append("<img src="+"${data.picture}"+" id=movieimg></img>");   
				
				</script>
            
               </c:forEach> 
</div>
<footer>
	<%@ include file="./include/footer.jsp"%>
</footer>

</html>