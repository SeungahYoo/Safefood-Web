<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>건강한 삶을 응원합니다!</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="resources/css/style.min.css" rel="stylesheet">
<style type="text/css">
body {
	padding-right: 0 !important
}

html, body, header, .carousel {
	height: 60vh;
}

@media ( max-width : 740px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	.navbar
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	:not
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	(
	.top-nav-collapse
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	){
	background
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	:
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	#929FBA
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	!
	important
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	;
}
}
</style>
</head>

<body>

	<header>
		<jsp:include page="../header/header.jsp" />

		<!--Carousel Wrapper-->
		<div style="position: relative;">

			<div id="carousel-example-1z"
				class="rgba-black-light carousel slide carousel-fade"
				data-ride="carousel">
				<!--Indicators-->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-1z" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-1z" data-slide-to="1"></li>
					<li data-target="#carousel-example-1z" data-slide-to="2"></li>
					<li data-target="#carousel-example-1z" data-slide-to="3"></li>
				</ol>
				<!--/.Indicators-->

				<!--Slides-->
				<div class="carousel-inner" role="listbox">
					<div class="view carousel-item active"
						style="background-image: url('https://www.lifelinescreening.com/-/media/project/life-line-screening/life-line-screening/6-health-education/articles/diet-and-nutrition/fruits-and-vegetables.jpg?h=1432&la=en&w=2000&hash=6F18108BB5E8283BFD9577DA563347457A3B114A'); background-repeat: no-repeat; background-size: cover;">

					</div>
					<div class="view carousel-item"
						style="background-image: url('https://www.castlighthealth.com/wp-content/uploads/2018/03/HealthyFood.jpg'); background-repeat: no-repeat; background-size: cover;">

					</div>
					<div class="view carousel-item"
						style="background-image: url('http://www.tossd.co.za/Portals/65/Tossd-Salad-Bar.jpg?ver=2018-07-02-113317-257'); background-repeat: no-repeat; background-size: cover;">

					</div>
					<div class="view carousel-item"
						style="background-image: url('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/background-healthy-food-for-heart-healthy-food-diet-royalty-free-image-876656666-1553267997.jpg'); background-repeat: no-repeat; background-size: cover;">

					</div>
				</div>

			</div>
			<!-- Mask & flexbox options-->
			<!-- Content -->
			<!-- Content -->
			<div
				class="view mask rgba-black-light d-flex justify-content-center align-items-center"
				style="position: absolute; width: 100%; z-index: 10; top: 0px;">
				<div
					class="text-center white-text mx-5 wow fadeIn justify-content-center align-items-center"
					style="position: absolute; width: 100%; z-index: 10; top: 170px; text-align: center; margin: 0px auto;">
					<h1 class="mb-4">
						<strong>건강한 삶을 위한 Safe Food project!</strong>
					</h1>

					<p>
						<strong>당신의 건강한 삶을 응원합니다.</strong>
					</p>

					<p class="mb-4 d-none d-md-block">
						<strong >Made by Dongik & Geuntae & Seungah.</strong>
					</p>
					<div class="md-form" style="margin: 0px auto; width: 500px">
						<input type="search" id="mainSearch" class="form-control "
							style="color: white; width: 500px;"> <label
							for="mainSearch" class="active" style="color: white;">식품
							검색</label>

	

						<!-- 
						<input type="text" id="mainSearch" class="form-control"
							style="color: white; width: 500px;"> <label
							for="mainSearch" style="color: white;">식품 검색</label> -->
						<a data-toggle="modal" data-target="#HistoryModal"
							style="font-size: 13px; font-weight: bold; font-style: oblique;"
							onclick="searchHistory()"> <i class="fas fa-list-ol"></i> 검색어
							랭킹보기
						</a>
					</div>

				</div>
			</div>
		</div>
	</header>

	<!--Main layout-->
	<main>
	<div class="container">
		<!--Section: Main info-->
		<section class="mt-5 wow fadeIn" style="display: table;">
			<div style="display: table-row;">
				<div
					style="display: table-cell; border-left: 3px solid #d9d9d9; width: 780px; height: 245px; padding: 10px;">
					<h4
						style="font-weight: bold; margin-bottom: 20px; display: inline-block;">Notice</h4>
					<a style="font-size: 12px;">&nbsp;더보기 ></a>
					<table style="display: clear; width: 640px; margin: 2px 20px;">
						<c:forEach items="${noticeList}" var="n" begin="0" end="4">
							<tr>
								<td height="40">[공지] ${n.title }</td>
								<td style="text-align: right; font-size: 12px; color: gray;">${n.wdate }</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div
					style="display: table-cell; border: 3px solid #d9d9d9; width: 300px; height: 245px; padding: 20px;">
					<h4
						style="font-weight: bold; margin-bottom: 10px; font-style: italic;">New
						Food !</h4>


					<ul class="list-group list-group-flush">
						<li class="list-group-item">맛있는 우유GT&nbsp;&nbsp;<span
							class="badge badge-pill badge-success">Organic</span></li>
						<li class="list-group-item">메로나</li>
						<li class="list-group-item">비타500 칼슘&nbsp;&nbsp;<span
							class="badge badge-pill badge-primary">추천</span></li>
						<li class="list-group-item">비비빅&nbsp;&nbsp;<span
							class="badge badge-pill badge-success">Organic</span></li>

					</ul>

				</div>
			</div>
		</section>
		<br> <br> <br>
		<section class="mt-5 wow fadeIn" id="mainList">
			<h4
				style="font-weight: bold; margin-bottom: 20px; display: inline-block;">식품목록</h4>
			<a style="font-size: 12px;">&nbsp;더보기 ></a> <br>
			<c:forEach items="${mainList}" begin="0" end="3" var="f">
				<div class="row">
					<div class="col-md-4 mb-2">
						<img src="resources/${f.image}" class="img-fluid z-depth-1-half" >
					</div>
					<div class="col-md-6 mb-4">
						<h3 class="h3 mb-3">
							<a href="/detail.mvc?code=${f.code}"
								style="color: #333333; font-weight: bold;" >${f.name}</a>
						</h3>
						<hr>
						<p>${f.maker}</p>
						<hr>
						<p>${f.material}</p>
						<hr>
						<%-- <a target="_black" class="addFood btn btn-blue btn-md"
							onclick="addFood(${f.code},'${f.name}')"> <i
							class="fas fa-download ml-1"></i>추가
						</a> 
						 --%>
						<%-- <a target="_black" class=" btn btn-blue btn-md"
							onclick="jjimFood(${f.code},'${f.name}')" @click="allJJimList">
							<i class="fas fa-download ml-1"></i>찜
						</a>
						 --%>
						<button type="button" class="btn btn-primary px-3 "
							onclick="addFood(${f.code},'${f.name}')">
							<i class="fas fa-plus"></i>&nbsp;&nbsp;추가
						</button>
						<button type="button" class="btn btn-success px-3"
							onclick="jjimFood(${f.code},'${f.name}')" @click="allJJimList">
							<i class="fas fa-star"></i>
						</button>

					</div>
				</div>
				<br>
				<br>
			</c:forEach>
		</section>
		<!--Section: Main info-->

		<hr class="my-5">

		<section style="margin-bottom: 50px;">
			<div style="display: table; margin: 0px 30px;">
				<div style="display: table-row;">
					<div
						style="display: table-cell; padding: 10px 20px 20px 0px; width: 520px; height: 330px;">
						<h5 style="font-weight: bold; font-style: italic; color: #808080;">Check on
							Youtube!</h5>
						<div class="embed-responsive embed-responsive-16by9">
							<iframe class="embed-responsive-item"
								src="https://www.youtube.com/embed/v64KOxKVLVg" allowfullscreen></iframe>
						</div>

					</div>
					<div style="display: table-cell; padding: 10px 0px 20px 20px; width: 497px;">
						<h5 style="font-weight: bold;">오시는 길</h5>
						서울특별시 강남구 역삼동 테헤란로 212
						<!--Google map-->
						<div id="map-container-google-2"
							class="z-depth-1-half map-container" style="height: 235px;">
							<iframe
								src="https://maps.google.com/maps?q=chicago&t=&z=13&ie=UTF8&iwloc=&output=embed"
								frameborder="0" style="border: 0; height: 235px; width: 468px;"
								allowfullscreen></iframe>
						</div>

						<!--Google Maps-->

					</div>
				</div>
			</div>
		</section>

	</div>
	</main>
	<!--Main layout-->
	<jsp:include page="../header/footer.jsp"></jsp:include>


	<!-- ########################## Modal part start ########################## -->
	<jsp:include page="register_modal.jsp"></jsp:include><!-- 회원가입 모달 -->
	<jsp:include page="search_modal.jsp"></jsp:include><!-- 회원조회 모달 -->
	<jsp:include page="login_modal.jsp"></jsp:include><!-- 로그인 모달 -->
	<jsp:include page="modify_modal.jsp"></jsp:include><!-- 회원관리 모달 -->
	<jsp:include page="withdraw_confirm_modal.jsp"></jsp:include><!-- 회원탈퇴 확인 모달 -->
	<jsp:include page="findIDPW.jsp"></jsp:include>
	<jsp:include page="jjim_modal.jsp"></jsp:include>
	<jsp:include page="history_modal.jsp"></jsp:include>
	<!-- ########################## Modal part end ########################## -->

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.1/js/mdb.min.js"></script>
	<!-- Initializations -->
	<script type="text/javascript">
		$(document).ready(function() {
			// Animations initialization
			new WOW().init();
			
			
			// 식품 검색 기능
			$('#mainSearch').keydown(function(key) {
				if (key.keyCode == 13) {
					var keyword = $(this).val();
					location.href = '/foodSearch.mvc?word=' + keyword;
				} // end of if
			}); // end of keydown
		});// end of ready
		
		// 식품 섭취 '추가'버튼 클릭 listener
		function addFood(code, name) {
			$.ajax({
				url : 'http://localhost:8080/addFood.mvc?code=' + code,
				type : 'get',
				success : function(result) {
					console.log(result)
					if (result == 1) {
						alert(name + '이(가) 추가되었습니다');
					} else if (result == 2) {
						alert('로그인하세요');
					}
				},
				error : function(jqXhr, textStatus, errorThrown) {
					console.log(errorThrown);
				}
			});
		}
		function jjimFood(code, name) {
			$.ajax({
				url : 'http://localhost:8080/jjimFood.mvc?code=' + code,
				type : 'get',
				success : function(result) {
					console.log(result)
					if (result == 1) {
						alert(name + '이(가) 추가되었습니다');
					} else if (result == 2) {
						alert('로그인하세요!');
					} else if (result == 3){
						alert('이미 찜목록에 있습니다')
					}
				},
				error : function(jqXhr, textStatus, errorThrown) {
					console.log(errorThrown);
				}
			});
		}
		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").mouseover(function(event){
    $(event.target).addClass("animated bounce");
  });
  $("button").mouseout(function(event){
	  $(event.target).removeClass("animated bounce");
  });
});
</script>
</body>

</html>
