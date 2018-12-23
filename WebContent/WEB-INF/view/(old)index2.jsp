
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<title>영화 소개 사이트</title>

<header>
	<%@ include file="./include/header.jsp"%>
</header>

<!-- 시작 -->
<div class="homebodyform">

<div id="carouselExampleIndicatorsMovie" class="carousel slide"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleIndicatorsMovie" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleIndicatorsMovie" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicatorsMovie" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<!-- Slide One - Set the background image for this slide in the line below -->
		<div class="carousel-item active" style="background-color: black">

			<div class="carousel-caption d-none d-md-block">


				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="movie/movieImg/be_with_you.jpg" width=100% height=100%
						alt="지금 만나러 갑니다" id="movie1">
				</div>
				<div class="poster">
					<img src="movie/movieImg/black_panther.jpg" width=100% height=100%
						alt="블랙 팬서" id="movie2">
				</div>
				<div class="poster">
					<img src="movie/movieImg/cheese.jpg" width=100% height=100%
						alt="치즈 인더 트랩" id="movie3">
				</div>
				<div class="poster">
					<img src="movie/movieImg/hurricane_heist.jpg" width=100%
						height=100% alt="허리케인 하이스트" id="movie4">
				</div>
				<div class="poster">
					<img src="movie/movieImg/i_tonya.jpg" width=100% height=100%
						alt="아이 토냐" id="movie5">
				</div>
				<div class="poster">
					<img src="movie/movieImg/little_forest.jpg" width=100% height=100%
						alt="리틀 포레스트" id="movie6">
				</div>
			</div>

		</div>
		<!-- Slide Two - Set the background image for this slide in the line below -->
		<div class="carousel-item" style="background-color: black">
			<div class="carousel-caption d-none d-md-block">

				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="movie/movieImg/logan_lucky.jpg" width=100% height=100%
						alt="로건 럭키">
				</div>
				<div class="poster">
					<img src="movie/movieImg/marital_harmony.jpg" width=100%
						height=100% alt="궁합">
				</div>
				<div class="poster">
					<img src="movie/movieImg/narratage.jpg" width=100% height=100%
						alt="나라-타주">
				</div>
				<div class="poster">
					<img src="movie/movieImg/notebook_from_my_mother.jpg" width=100%
						height=100% alt="엄마의 공책">
				</div>
				<div class="poster">
					<img src="movie/movieImg/only_the_brave.jpg" width=100% height=100%
						alt="온리 더 브레이브">
				</div>
				<div class="poster">
					<img src="movie/movieImg/pacific_rim_uprising.jpg" width=100%
						height=100% alt="퍼시픽림 업라이징">
				</div>
			</div>
		</div>
		<!-- Slide Three - Set the background image for this slide in the line below -->
		<div class="carousel-item" style="background-color: black">
			<div class="carousel-caption d-none d-md-block">

				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="movie/movieImg/phantom_thread.jpg" width=100% height=100%
						alt="팬텀 스레드">
				</div>
				<div class="poster">
					<img src="movie/movieImg/red_sparrow.jpg" width=100% height=100%
						alt="레드 스패로">
				</div>
				<div class="poster">
					<img src="movie/movieImg/shape_of_water.jpg" width=100% height=100%
						alt="셰이프 오브 워터">
				</div>
				<div class="poster">
					<img src="movie/movieImg/the_florida_project.jpg" width=100%
						height=100% alt="플로리다 프로젝트">
				</div>
				<div class="poster">
					<img src="movie/movieImg/the_post.jpg" width=100% height=100%
						alt="더 포스트">
				</div>
				<div class="poster">
					<img src="movie/movieImg/three_billboards.jpg" width=100%
						height=100% alt="쓰리 빌보드">
				</div>
			</div>
		</div>
	<a class="carousel-control-prev" href="#carouselExampleIndicatorsMovie"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="carousel-control-next"
		href="#carouselExampleIndicatorsMovie" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
	
	</div>
	
</div>




<!--copy  -->
<div id="carouselExampleIndicatorsDrama" class="carousel slide"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleIndicatorsDrama" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleIndicatorsDrama" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicatorsDrama" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">

		<!-- Slide One - Set the background image for this slide in the line below -->

		<div class="carousel-item active" style="background-color: black">
			<div class="carousel-caption d-none d-md-block">

				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="drama/dramaImg/9-1-1.jpg" width=100% height=100%
						alt="9-1-1" id="drama1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/altered_carbon.jpg" width=100% height=100%
						alt="얼터드 카본" id="drama2">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/prisonbreak.jpg" width=100% height=100%
						alt="prisonbreak" id="drama3">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/defenders.jpg" width=100% height=100%
						alt="defenders" id="drama4">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/punisher.jpg" width=100% height=100%
						alt="punisher" id="drama5">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/walking_dead.jpg" width=100% height=100%
						alt="walking_dead" id="drama6">
				</div>
			</div>
		</div>
		<!-- Slide Two - Set the background image for this slide in the line below -->
		<div class="carousel-item" style="background-color: black">
			<div class="carousel-caption d-none d-md-block">

				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="drama/dramaImg/black_mirror.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/criminal_mind.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/defenders.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/doctorwho.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/flash.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/friends.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
			</div>
		</div>
		<!-- Slide Three - Set the background image for this slide in the line below -->
		<div class="carousel-item" style="background-color: black">

			<div class="carousel-caption d-none d-md-block">

				<!-- 수정중인 포스터 게시공간 -->
				<div class="poster">
					<img src="drama/dramaImg/game_of_thrones.jpg" width=100%
						height=100% alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/grey's_anatomy.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/grimm.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/homeland.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/la_casa_de_papel.jpg" width=100%
						height=100% alt="9-1-1">
				</div>
				<div class="poster">
					<img src="drama/dramaImg/legion.jpg" width=100% height=100%
						alt="9-1-1">
				</div>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleIndicatorsDrama"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> 
	<a class="carousel-control-next"
		href="#carouselExampleIndicatorsDrama" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>



<!-- 끝 -->



<div class="script1">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/be_with_you.jpg" class="contentimg">

	<p id="scr1"></p>
	<section id="reply">
		<button id="datshow">댓글보기</button>
		<p id="dat1"></p>

		<p id="newdatgle"></p>


		<form class="datgle" action="moive/moviedat/newdat.jsp" method="get"
			name="datgle" id="datgle">
			<fieldset>

				<p>
					<input placeholder="이름" type="text" name="username" id="username" />
					&nbsp; <input placeholder="댓글내용" type="text" name="datgle"
						id="datgle" /> &nbsp; <input type="submit" value="확인" />
				</p>

			</fieldset>
		</form>
	</section>



</div>
<div class="script2">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/black_panther.jpg" class="contentimg" />
	<p id="scr2"></p>
	<section id="reply">
		<button id="datshow2">댓글보기</button>
		<p id="dat2"></p>
		<p id="newdatgle2"></p>

		<form class="datgle2" action="moive/moviedat/newdat.jsp" method="get"
			name="datgle2" id="datgle2">
			<fieldset>

				<p>
					<input placeholder="이름" type="text" name="username" id="username" />
					&nbsp; <input placeholder="댓글내용" type="text" name="datgle"
						id="datgle" /> &nbsp; <input type="submit" value="확인" />
				</p>

			</fieldset>
		</form>
	</section>
</div>
<div class="script3">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/cheese.jpg" class="contentimg" />
	<p id="scr3"></p>
	<section id="reply">
		<button id="datshow3">댓글보기</button>
		<p id="dat3"></p>
		<p id="newdatgle3"></p>

		<form class="datgle3" action="moive/moviedat/newdat.jsp" method="get"
			name="datgle3" id="datgle3">
			<fieldset>

				<p>
					<input placeholder="이름" type="text" name="username" id="username" />
					&nbsp; <input placeholder="댓글내용" type="text" name="datgle"
						id="datgle" /> &nbsp; <input type="submit" value="확인" />
				</p>

			</fieldset>
		</form>
	</section>
</div>
<div class="script4">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/hurricane_heist.jpg" class="contentimg" />
	<p id="scr4"></p>

</div>
<div class="script5">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/i_tonya.jpg" class="contentimg" />
	<p id="scr5"></p>

</div>
<div class="script6">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="movie/movieImg/little_forest.jpg" class="contentimg" />
	<p id="scr6"></p>

</div>
<div class="script7">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/9-1-1.jpg" class="contentimg" />
	<p id="scr7"></p>

</div>
<div class="script8">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/altered_carbon.jpg" class="contentimg" />
	<p id="scr8"></p>

</div>
<div class="script9">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/prisonbreak.jpg" class="contentimg" />
	<p id="scr9"></p>

</div>
<div class="script10">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/defenders.jpg" class="contentimg" />
	<p id="scr10"></p>

</div>
<div class="script11">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/punisher.jpg" class="contentimg" />
	<p id="scr11"></p>

</div>

<div class="script12">
	<!-- 닫기버튼 -->
	<div class="closeScript">
		<img src="icon/x-letter.png" width="100" height="100">
	</div>
	<img src="drama/dramaImg/walking_dead.jpg" class="contentimg" />
	<p id="scr12"></p>

</div>
<!-- Page Content -->
<!--<section class="py-5">-->

<!--</section>-->



<!-- Footer -->
<div class="bottombar">
	<div class="search" id="search">
		<img id="searchimg" src="icon/musica-searcher.png" /> <input
			type="text" placeHolder="Search..." />
	</div>
</div>
</div>
<footer>
	<%@ include file="./include/footer.jsp"%>
</footer>
<!-- /.container -->


<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</html>

