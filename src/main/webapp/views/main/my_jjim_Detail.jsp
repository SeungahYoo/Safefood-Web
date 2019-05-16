<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>내 섭취 정보</title>
<!-- Font Awesome -->
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
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
    <jsp:include page="../header/header2.jsp"/>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
    <div class="container">

     <h1>내 찜 정보</h1>

      <hr class="my-5">
      <canvas id="polarChart"></canvas>
     	 <input type="text" style="display: none;" value="${totaln.total_calory}" id="calory">
         <input type="text" style="display: none;" value="${totaln.total_carbo}" id="carbo">
         <input type="text" style="display: none;" value="${totaln.total_protein}" id="protein">
         <input type="text" style="display: none;" value="${totaln.total_fat}" id="fat">
         <input type="text" style="display: none;" value="${totaln.total_sugar}" id="sugar">
         <input type="text" style="display: none;" value="${totaln.total_natrium}" id="natrium">
      
      <hr class="my-5">

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
						<h3 class="h3 mb-3"><a href="/detail.mvc?code=${f.code}">${f.name}</a></h3>
						<hr>
						<p>${f.maker}</p>
						<hr>
						<p>${f.material}</p>
						<hr>
						<a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>삭제
						</a> <a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>찜
						</a>
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

  <!--Footer-->
  <footer class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">

    <!--Call to action-->
    <div class="pt-4">
      <a class="btn btn-outline-white" href="https://mdbootstrap.com/docs/jquery/getting-started/download/" target="_blank"
        role="button">Download MDB
        <i class="fas fa-download ml-2"></i>
      </a>
      <a class="btn btn-outline-white" href="https://mdbootstrap.com/education/bootstrap/" target="_blank" role="button">Start
        free tutorial
        <i class="fas fa-graduation-cap ml-2"></i>
      </a>
    </div>
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/mdbootstrap" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      <a href="https://twitter.com/MDBootstrap" target="_blank">
        <i class="fab fa-twitter mr-3"></i>
      </a>

      <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
        <i class="fab fa-youtube mr-3"></i>
      </a>

      <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
        <i class="fab fa-google-plus-g mr-3"></i>
      </a>

      <a href="https://dribbble.com/mdbootstrap" target="_blank">
        <i class="fab fa-dribbble mr-3"></i>
      </a>

      <a href="https://pinterest.com/mdbootstrap" target="_blank">
        <i class="fab fa-pinterest mr-3"></i>
      </a>

      <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
        <i class="fab fa-github mr-3"></i>
      </a>

      <a href="http://codepen.io/mdbootstrap/" target="_blank">
        <i class="fab fa-codepen mr-3"></i>
      </a>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2019 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> MDBootstrap.com </a>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->
  
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

  
  
  
</body>

</html>
