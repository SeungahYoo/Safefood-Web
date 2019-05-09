<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>식품 정보 목록</title>
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

     <h1>베스트 섭취량 정보</h1>

      <hr class="my-5">
		<!-- 식품 순위 차트 -->
      <canvas id="myChart" style="max-width: 1500px; font-size:15px"></canvas>
       <input type="text" style="display: none;" value="${firstName}" id="firstName">
       <input type="text" style="display: none;" value="${firstCount}" id="firstCount">
       <input type="text" style="display: none;" value="${secondName}" id="secondName">
       <input type="text" style="display: none;" value="${secondCount}" id="secondCount">
       <input type="text" style="display: none;" value="${thirdName}" id="thirdName">
       <input type="text" style="display: none;" value="${thirdCount}" id="thirdCount">
       <input type="text" style="display: none;" value="${fourthName}" id="fourthName">
       <input type="text" style="display: none;" value="${fourthCount}" id="fourthCount">
       <input type="text" style="display: none;" value="${fifthName}" id="fifthName">
       <input type="text" style="display: none;" value="${fifthCount}" id="fifthCount">
       
       <!-- 식품 순위 정보 -->
       <!--Section: Main info-->
		<section class="mt-5 wow fadeIn" id="mainList">
			<c:forEach items="${mainList}" var="f" varStatus="num">
				<h2>${num.count}위</h2>
				<hr>
				<div class="row">
					<div class="col-md-4 mb-2">
						<img src="resources/${f.image}"
							class="img-fluid z-depth-1-half">
					</div>
					<div class="col-md-6 mb-4">
						<h3 class="h3 mb-3">
							<a href="/safefood/detail.mvc?code=${f.code}">${f.name}</a>
						</h3>
						<hr>
						<p>${f.maker}</p>
						<hr>
						<p>${f.material}</p>
						<hr>
						<a target="_black" class="addFood btn btn-blue btn-md" onclick="addFood(${f.code},'${f.name}')"> <i
                            class="fas fa-download ml-1"></i>추가
                        </a> <a target="_black" class=" btn btn-blue btn-md"> <i
							class="fas fa-download ml-1"></i>찜
						</a>
					</div>
				</div>
			</c:forEach>
		</section>
		<!--Section: Main info-->
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
     <jsp:include page="../main/register_modal.jsp"></jsp:include><!-- 회원가입 모달 -->
     <jsp:include page="../main/search_modal.jsp"></jsp:include><!-- 회원조회 모달 -->
     <jsp:include page="../main/login_modal.jsp"></jsp:include><!-- 로그인 모달 -->
     <jsp:include page="../main/modify_modal.jsp"></jsp:include><!-- 회원관리 모달 -->
     <jsp:include page="../main/withdraw_confirm_modal.jsp"></jsp:include><!-- 회원탈퇴 확인 모달 -->
     <jsp:include page="../main/findIDPW.jsp"></jsp:include>
     <!-- ########################## Modal part end ########################## -->
<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="resources/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
    $(document).ready(function(){	
    	var name1 = $('#firstName').val();
    	var name2 = $('#secondName').val();
    	var name3 = $('#thirdName').val();
    	var name4 = $('#fourthName').val();
    	var name5 = $('#fifthName').val();
    	var count1 = $('#firstCount').val();
    	var count2 = $('#secondCount').val();
    	var count3 = $('#thirdCount').val();
    	var count4 = $('#fourthCount').val();
    	var count5 = $('#fifthCount').val();
    	makeBar(name1, name2, name3, name4, name5, count1, count2, count3, count4, count5);
	});// end of ready
    function makeBar(name1, name2, name3, name4, name5, count1, count2, count3, count4, count5){
    	var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: [name1, name2, name3, name4, name5],
            datasets: [{
              label: '총 섭취 횟수',
              data: [count1, count2, count3, count4, count5],
              backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
            }]
          },
          options: {
            scales: {
              yAxes: [{
                ticks: {
                  beginAtZero: true
                }
              }]
            },
            responsive: true
          }
        });
	}

  </script>
  </script>
</body>

</html>
