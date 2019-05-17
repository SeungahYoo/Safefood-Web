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
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
</head>

<body>

	<!--Main Navigation-->
	<header>
		<jsp:include page="../header/header2.jsp" />
	</header>
	<!--Main Navigation-->
	<jsp:include page="NewFile.jsp"></jsp:include>
	<!--Main layout-->
	<main class="mt-5 pt-5">
	<div class="container">

		<h1>내 찜 정보</h1>

		<hr class="my-5">
		<canvas id="polarChart"></canvas>
		<input type="text" style="display: none;"
			value="${totaln.total_calory}" id="calory"> <input
			type="text" style="display: none;" value="${totaln.total_carbo}"
			id="carbo"> <input type="text" style="display: none;"
			value="${totaln.total_protein}" id="protein"> <input
			type="text" style="display: none;" value="${totaln.total_fat}"
			id="fat"> <input type="text" style="display: none;"
			value="${totaln.total_sugar}" id="sugar"> <input type="text"
			style="display: none;" value="${totaln.total_natrium}" id="natrium">

		<hr class="my-5">	
		<button type="button" class="btn btn-light" data-toggle="modal"
<<<<<<< HEAD
            data-target="#exerciseModal" style="float: right;">운동 루틴 보기</button>
=======
<<<<<<< HEAD
			data-target="#exerciseModal" style="float: right;">운동 루틴 보기</button>
		<img
			src="https://i.pinimg.com/originals/54/f8/dc/54f8dcbb699a8e5c2004085220db73de.gif">
=======
            data-target="#fullHeightModalRight" style="float: right;">운동 루틴 보기</button>
>>>>>>> master
>>>>>>> origin/master
		<!--Section: Cards-->
		<div class="container">

			<!--Section: Main info-->
			<section class="mt-5 wow fadeIn" id="jjimlist">
				<c:forEach items="${jjimlist}" var="f">
					<div class="row">
						<div class="col-md-4 mb-2">
							<img src="resources/${f.image}" class="img-fluid z-depth-1-half">
						</div>
						<div class="col-md-6 mb-4">
							<h3 class="h3 mb-3">
								<a href="/detail.mvc?code=${f.code}"
									style="color: #333333; font-weight: bold;">${f.name}</a>
							</h3>
							<hr>
							<p>${f.maker}</p>
							<hr>
							<p>${f.material}</p>
							<hr>
							<!-- <a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>삭제
						</a> <a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>찜
						</a> -->

							<button type="button" class="btn btn-primary px-3"
								onclick="addFood(${f.code},'${f.name}')">
								<i class="fas fa-plus"></i>&nbsp;&nbsp;섭취 추가
							</button>
							<button type="button" class="btn btn-danger px-3"
								onclick="addFood(${f.code},'${f.name}')">
								<i class="fas fa-minus"></i>&nbsp;&nbsp;찜 삭제
							</button>
						</div>
					</div>
					<br>
					<br>
				</c:forEach>
			</section>
			<!--Section: Main info-->

			<hr class="my-5">

		</div>
		<!--Section: Cards-->

	</div>
	</main>
	<!--Main layout-->
	<jsp:include page="exercise.jsp"></jsp:include>
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
    //polar
    $(document).ready(function(){
  	  var NUTR_CONT1 = $("#calory").val(); // 칼로리
  		var NUTR_CONT2 = $("#carbo").val(); // 탄수화물
  		var NUTR_CONT3 = $("#protein").val(); // 단백질
  		var NUTR_CONT4 = $("#fat").val(); // 지방
  		var NUTR_CONT5 = $("#sugar").val(); // 당류
  		var NUTR_CONT6 = $("#natrium").val(); // 나트륨
  		makePolarChart(NUTR_CONT1,NUTR_CONT2,NUTR_CONT3,NUTR_CONT4,NUTR_CONT5,NUTR_CONT6);
    });
    function makePolarChart(NUTR_CONT1,NUTR_CONT2,NUTR_CONT3,NUTR_CONT4,NUTR_CONT5,NUTR_CONT6){
    
    
    var ctxPA = document.getElementById("polarChart").getContext('2d');
    var myPolarChart = new Chart(ctxPA, {
      type: 'polarArea',
      data: {
        labels: ["칼로리", "탄수화물", "단백질", "지방", "나트륨", "당류"],
        datasets: [{
          data: [NUTR_CONT1, NUTR_CONT2, NUTR_CONT3, NUTR_CONT4, NUTR_CONT6, NUTR_CONT5],
          backgroundColor: ["rgba(219, 0, 0, 0.1)", "rgba(0, 165, 2, 0.1)", "rgba(255, 195, 15, 0.2)",
            "rgba(55, 59, 66, 0.1)", "rgba(0, 0, 0, 0.3)"
          ],
          hoverBackgroundColor: ["rgba(219, 0, 0, 0.2)", "rgba(0, 165, 2, 0.2)",
            "rgba(255, 195, 15, 0.3)", "rgba(55, 59, 66, 0.1)", "rgba(0, 0, 0, 0.4)"
          ]
        }]
      },
      options: {
        responsive: true
      }
    });
    }
  </script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
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
