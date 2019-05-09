<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mvc.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>식품 상세 정보</title>
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

	<jsp:include page="../header/header2.jsp" />

	<!--Main layout-->
	<main class="mt-5 pt-4">

	<div class="container dark-grey-text mt-5">
		<h1>NOTICE</h1>
		<hr>
		<div class="float-right">
			<FORM name='frm' method='POST' action='boardFind.mvc'>

				<SELECT name='col'>
					<!-- 검색 컬럼 -->
					<OPTION value='none'>전체 목록</OPTION>
					<OPTION value='name'>작성자</OPTION>
					<OPTION value='title'>제목</OPTION>
				</SELECT> <input type='text' name='word' value=''>
				<button type='submit'>검색</button>
			</FORM>

		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자
					<th>작 성날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="b">
					<tr class="readBoard" id="${b.num}">
						<td>${b.num}</td>
						<td>${b.title}</td>
						<td>${b.name}</td>
						<td>${b.wdate}</td>
						<td>${b.count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div>
			<a class="btn btn-default float-right" href="boardInsert.mvc">글쓰기</a>
		</div>


		<div class="flat-right">
			<ul class="pagination center-block">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">Next</span>
				</a></li>
			</ul>
		</div>
	</div>
	</main>
	<!--Main layout-->

	<!--Footer-->
	<footer class="page-footer text-center font-small mt-4 wow fadeIn">

		<!--Call to action-->
		<div class="pt-4">
			<a class="btn btn-outline-white"
				href="https://mdbootstrap.com/docs/jquery/getting-started/download/"
				target="_blank" role="button">Download MDB <i
				class="fas fa-download ml-2"></i>
			</a> <a class="btn btn-outline-white"
				href="https://mdbootstrap.com/education/bootstrap/" target="_blank"
				role="button">Start free tutorial <i
				class="fas fa-graduation-cap ml-2"></i>
			</a>
		</div>
		<!--/.Call to action-->

		<hr class="my-4">

		<!-- Social icons -->
		<div class="pb-4">
			<a href="https://www.facebook.com/mdbootstrap" target="_blank"> <i
				class="fab fa-facebook-f mr-3"></i>
			</a> <a href="https://twitter.com/MDBootstrap" target="_blank"> <i
				class="fab fa-twitter mr-3"></i>
			</a> <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4"
				target="_blank"> <i class="fab fa-youtube mr-3"></i>
			</a> <a href="https://plus.google.com/u/0/b/107863090883699620484"
				target="_blank"> <i class="fab fa-google-plus-g mr-3"></i>
			</a> <a href="https://dribbble.com/mdbootstrap" target="_blank"> <i
				class="fab fa-dribbble mr-3"></i>
			</a> <a href="https://pinterest.com/mdbootstrap" target="_blank"> <i
				class="fab fa-pinterest mr-3"></i>
			</a> <a href="https://github.com/mdbootstrap/bootstrap-material-design"
				target="_blank"> <i class="fab fa-github mr-3"></i>
			</a> <a href="http://codepen.io/mdbootstrap/" target="_blank"> <i
				class="fab fa-codepen mr-3"></i>
			</a>
		</div>
		<!-- Social icons -->

		<!--Copyright-->
		<div class="footer-copyright py-3">
			© 2019 Copyright: <a
				href="https://mdbootstrap.com/education/bootstrap/" target="_blank">
				MDBootstrap.com </a>
		</div>
		<!--/.Copyright-->

	</footer>
	<!--/.Footer-->

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

</body>
<script type="text/javascript">

$(document).ready(function(){
	$(".readBoard").click(function(){

		//alert($(this).attr("id"));
		window.location.href = "read.mvc?num="+$(this).attr("id");
	});
	makeDoughnutChart(NUTR_CONT1,NUTR_CONT2,NUTR_CONT3,NUTR_CONT4,NUTR_CONT5,NUTR_CONT6);
});// end of ready


</script>
</html>
