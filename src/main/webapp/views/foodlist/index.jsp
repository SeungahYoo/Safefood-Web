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

     <h1>식품 정보 목록</h1>

      <hr class="my-5">

      <!--Section: Cards-->
      <section class="text-center" id = "mainList">
			 <c:forEach items="${list}" var="f" varStatus="i">
			 	 <c:if test="${(i.index % 2) == 0 }">
					 <div class="row mb-4 wow fadeIn">
			 	 </c:if>
				 		
					 <div class="col-md-6 mb-4">
					 	<div class="card">
					 		<!-- image part -->
					 		<div class="view overlay">
					 			<img src="resources/${f.image}" class="card-img-top" alt="">
					 			<a href="detail.mvc?code=${f.code}" target="_blank">
					 				<div class="mask rgba-white-slight"></div>
					 			</a>
					 		</div>
					 		<!-- content part -->
					 		<div class="card-body">
					 			<h4 class="card-title">${f.name}</h4>
					 			<p class="card-text"> ${f.material}</p>
					 			<a target="_blank" class="btn btn-blue btn-md">추가<i class="fas fa-download ml-2"></i></a>
					 			<a target="_blank" class="btn btn-blue btn-md">찜<i class="fas fa-download ml-2"></i></a>
					 		</div>
					 	</div>
					 </div>
				 <c:if test="${(i.index % 2) == 1 || i.last}">
					 </div>
				 </c:if>
				 
			 </c:forEach>
      </section>
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
  </script>
</body>

</html>
