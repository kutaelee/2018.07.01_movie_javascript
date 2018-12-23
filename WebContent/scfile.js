function googleTranslateElementInit() {
	new google.translate.TranslateElement({
		pageLanguage : 'ko',
		layout : google.translate.TranslateElement.InlineLayout.SIMPLE
	}, 'google_translate_element');
}

$(document).ready(function() {
	




	/* 메뉴 마우스오버시 컬러 변경 함수*/
	$(function() {
		
		$("#replise").hide();
		$(".closeScript").css("padding-right", "80px");
		$(".closeScript").css("padding-top", "80px");

		$("#home").on("mouseover", function() {
			$("#home").css("color", "#FF2424");
		});
		$("#movie").on("mouseover", function() {
			$("#movie").css("color", "#FF2424");
		});
		$("#drama").on("mouseover", function() {
			$("#drama").css("color", "#FF2424");
		});
		$("#help").on("mouseover", function() {
			$("#help").css("color", "#FF2424");
		});
		$("#brand").on("mouseover", function() {
			$("#brand").css("color", "#FF2424");
		});
		/*컨테이너로 마우스아웃시 색 원위치*/
		$(".container").on("mouseout", function() {
			$(".nav-link,#brand").css("color", "#EAEAEA");
		});
		
		$(".container-fluid").on("mouseout", function() {
			$(".nav-link,#brand").css("color", "#EAEAEA");
		});

	});

	$(".script1").hide(); /* 시작시 설명과 동영상이 들어가는 div를 숨김 */
	$(".script2").hide();
	$(".script3").hide();
	$(".script4").hide();
	$(".script5").hide();
	$(".script6").hide();
	$(".script7").hide();
	$(".script8").hide();
	$(".script9").hide();
	$(".script10").hide();
	$(".script11").hide();
	$(".script12").hide();



	$("#login_form").show(500, function() {});
	$(".nav-link").css("color", "#EAEAEA");
	$(".navbar-brand").css("color", "#EAEAEA");
	$("#dat1,#dat2,#dat3").hide();
	$(".datgle,.datgle2,.datgle3").hide();
	/* 그림을 클릭시 설명이 보이게 하는 function */

	$(function() {
		
		$("#movie1").on("mousedown", function() {
			$(".script1").toggle("fast");
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소

				url : "movie/movietext/be_with_you.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr1").html(result);
				}
			});
		});
			
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소

				url : "movie/moviedat/1.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#dat1").html(result);
				}
			});
			

			$("#datgle").on("submit", function() { //"확인"버튼을 눌렀을 때...
				var d = $(this).serialize(); //폼 요소에 전송할 데이터를 재가공합니다.
				alert("댓글이 등록됩니다.");

				$.ajax({
					//url:"member.php", //데이터 전송 및 요청할 URL 주소
					url : "movie/moviedat/newdat.jsp", //데이터 전송 및 요청할 URL 주소
					type : "get", //데이터 전송 방식
					data : d, //전송할 데이터
					success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
						//$("#txt1").text(result);
						$("#dat1").append($("#newdatgle").html(result));


					}
				});

				return false; //action 페이지로 전환되는 것을 차단합니다.
			});
			
			$("#datshow").on("mousedown", function() {
				$("#dat1").show("fast");
				$(".datgle").show("fast");
				$("#replies").show();
			});
			$("#datshow").on("dblclick", function() {
				$("#dat1").hide("fast");
				$(".datgle").hide("fast");
				$("#replies").hide();
			});


		});
		$("#movie2").on("mousedown", function() {
			$(".script2").toggle("fast");
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소
				url : "movie/movietext/black_panther.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr2").html(result);
				}
			});
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소

				url : "movie/moviedat/2.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#dat2").html(result);
				}
			});

			$("#datgle2").on("submit", function() { //"확인"버튼을 눌렀을 때...
				var d = $(this).serialize(); //폼 요소에 전송할 데이터를 재가공합니다.
				alert("댓글이 등록됩니다.");

				$.ajax({
					//url:"member.php", //데이터 전송 및 요청할 URL 주소
					url : "movie/moviedat/newdat.jsp", //데이터 전송 및 요청할 URL 주소
					type : "get", //데이터 전송 방식
					data : d, //전송할 데이터
					success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
						//$("#txt1").text(result);
						$("#dat2").append($("#newdatgle2").html(result));


					}
				});

				return false; //action 페이지로 전환되는 것을 차단합니다.
			});
			$("#datshow2").on("mousedown", function() {
				$("#dat2").show("fast");
				$(".datgle2").show("fast");
			});
			$("#datshow2").on("dblclick", function() {
				$("#dat2").hide("fast");
				$(".datgle2").hide("fast");
			});

		});
		$("#movie3").on("mousedown", function() {
			$(".script3").toggle("fast");
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소
				url : "movie/movietext/cheese.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr3").html(result);
				}
			});
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소

				url : "movie/moviedat/3.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#dat3").html(result);
				}
			});

			$("#datgle3").on("submit", function() { //"확인"버튼을 눌렀을 때...
				var d = $(this).serialize(); //폼 요소에 전송할 데이터를 재가공합니다.
				alert("댓글이 등록됩니다.");

				$.ajax({
					//url:"member.php", //데이터 전송 및 요청할 URL 주소
					url : "movie/moviedat/newdat.jsp", //데이터 전송 및 요청할 URL 주소
					type : "get", //데이터 전송 방식
					data : d, //전송할 데이터
					success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
						//$("#txt1").text(result);
						$("#dat3").append($("#newdatgle3").html(result));


					}
				});

				return false; //action 페이지로 전환되는 것을 차단합니다.
			});
			$("#datshow3").on("mousedown", function() {
				$("#dat3").show("fast");
				$(".datgle3").show("fast");
			});
			$("#datshow3").on("dblclick", function() {
				$("#dat3").hide("fast");
				$(".datgle3").hide("fast");
			});

		});
		$("#movie4").on("mousedown", function() {
			$(".script4").toggle("fast");
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소
				url : "movie/movietext/hurricane_heist.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr4").html(result);
				}
			});
		});
		$("#movie5").on("mousedown", function() {
			$(".script5").toggle("fast");
			$.ajax({
				//url:"member.php", //데이터 전송 및 요청할 URL 주소
				url : "movie/movietext/i_tonya.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr5").html(result);
				}
			});
		});
		$("#movie6").on("mousedown", function() {
			$(".script6").toggle("fast");
			$.ajax({
				url : "movie/movietext/little_forest.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr6").html(result);
				}
			});
		});

		$("#drama1").on("mousedown", function() {
			$(".script7").toggle("fast");
			$.ajax({
				url : "drama/dramatext/1.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr7").html(result);
				}
			});
		});
		$("#drama2").on("mousedown", function() {
			$(".script8").toggle("fast");
			$.ajax({
				url : "drama/dramatext/2.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr8").html(result);
				}
			});
		});
		$("#drama3").on("mousedown", function() {
			$(".script9").toggle("fast");
			$.ajax({
				url : "drama/dramatext/3.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr9").html(result);
				}
			});
		});
		$("#drama4").on("mousedown", function() {
			$(".script10").toggle("fast");
			$.ajax({
				url : "drama/dramatext/4.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr10").html(result);
				}
			});
		});
		$("#drama5").on("mousedown", function() {
			$(".script11").toggle("fast");
			$.ajax({
				url : "drama/dramatext/5.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr11").html(result);
				}
			});
		});
		$("#drama6").on("mousedown", function() {
			$(".script12").toggle("fast");
			$.ajax({
				url : "drama/dramatext/6.txt", //데이터 전송 및 요청할 URL 주소
				type : "get", //데이터 전송 방식
				success : function(result) { //전송 및 요청이 정상적으로 되었을 때...
					//$("#txt1").text(result);
					$("#scr12").html(result);
				}
			});
		});

	});




	$(function() {
		$("#scr1").text("");
		$("#scr2").text("");
		$("#scr3").text("");
		$("#scr4").text("");
		$("#scr5").text("");
		$("#scr6").text("");
		$("#scr7").text("");
		$("#scr8").text("");
		$("#scr9").text("");
		$("#scr10").text("");
		$("#scr11").text("");
		$("#scr12").text("");
		
		$(".moviebodyForm").animate({opacity: '0.3'}, 0);
		$(".moviebodyForm").animate({opacity: '1'}, 800);
		$(".dramabodyForm").animate({opacity: '0.3'}, 0);
		$(".dramabodyForm").animate({opacity: '1'}, 800);
		$(".bodyForm").animate({opacity: '0.7'}, 0);
		$(".bodyForm").animate({opacity: '1'}, 800);
		$(".registerbodyForm").animate({opacity: '0.3'}, 0);
		$(".registerbodyForm").animate({opacity: '1'}, 800);
		$(".homebodyForm").animate({opacity: '0.3'}, 0);
		$(".homebodyForm").animate({opacity: '1'}, 800);
		$(".memberbodyForm").animate({opacity: '0.7'}, 0);
		$(".memberbodyForm").animate({opacity: '1'}, 800);
		
		$(".in").on("mouseover",function(){
			$('#modBoard').animate({opacity: '1'}, 1200);
		});
		
		
		$("#qnaboard").on("mouseover",function(){
			$('#qnaboard').animate({opacity: '1'}, 1200)
		});
	
		
		$("#movie1").on("mousedown", function() {
		

		$(".closeScript").on("mousedown", function() {
			$(".script1").hide();
			$(".script2").hide();
			$(".script3").hide();
			$(".script4").hide();
			$(".script5").hide();
			$(".script6").hide();
			$(".script7").hide();
			$(".script8").hide();
			$(".script9").hide();
			$(".script10").hide();
			$(".script11").hide();
			$(".script12").hide();
			$("#scr1").text("");
			$("#scr2").text("");
			$("#scr3").text("");
			$("#scr4").text("");
			$("#scr5").text("");
			$("#scr6").text("");
			$("#scr7").text("");
			$("#scr8").text("");
			$("#scr9").text("");
			$("#scr10").text("");
			$("#scr11").text("");
			$("#scr12").text("");
			$("#dat1,#dat2,#dat3").hide();
			$(".datgle,.datgle2,#datgle3").hide();
		});
	});
	
	//검색 창 효과
	$(".search").on("dblclick", function() {
		$(this).toggleClass("search_1");
	});
//]]>
});

function logout(){
	location.href="logout.jsp";
}