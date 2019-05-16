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
<title>내 섭취 정보</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="resources/css/style.min.css" rel="stylesheet">
</head>

<body>

	<!--Main Navigation-->
	<header>
		<jsp:include page="../header/header2.jsp" />
	</header>
	<!--Main Navigation-->

	<!--Main layout-->
	<main class="mt-5 pt-5">
	<div class="container">

		<h1>내 섭취 정보</h1>

		<hr class="my-5">

		<!--Section: Cards-->
		<div class="container">

			<!--Section: Main info-->
			<section class="mt-5 wow fadeIn" id="mainList">
				<c:forEach items="${mainList}" var="f" varStatus="stat">
					<div class="row">
						<div class="col-md-4 mb-2">
							<img src="resources/${f.image}" class="img-fluid z-depth-1-half">
						</div>
						<div class="col-md-6 mb-4">
							<h3 class="h3 mb-3">
								<a href="/detail.mvc?code=${f.code}" style="color: #333333; font-weight: bold;">${f.name}</a>
							</h3>
							<hr>
							<p>${f.maker}</p>
							<hr>
							<p>${f.material}</p>
							<hr>
							<%-- 	<a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>삭제
						</a> <a target="_black" class=" btn btn-blue btn-md" onclick="jjimFood(${f.code},'${f.name}')" @click="allJJimList"> <i
							class="fas fa-download ml-1"></i>찜
						</a> --%>

							<button type="button" class="btn btn-danger px-3"
								>
								<i class="fas fa-minus"></i>&nbsp;&nbsp;<a style="text-decoration: none;color: white;" href="deleteMyFood.mvc?code=${f.code }&date=${datesList[stat.index]}">삭제</a>
							</button>
							<button type="button" class="btn btn-success px-3"
								onclick="jjimFood(${f.code},'${f.name}')" @click="allJJimList">
								<i class="fas fa-star"></i>
							</button>


						</div>
					</div>
				</c:forEach>
			</section>
			<!--Section: Main info-->

			<hr class="my-5">

		</div>
		<!--Section: Cards-->

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
	<!-- ########################## Modal part end ########################## -->
	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
	<!-- Initializations -->
	<script type="text/javascript">
    // Animations initialization
    new WOW().init();
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
