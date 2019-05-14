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
		<table class="table">

			<thead>

				<tr style="font-weight: bold;">
					<td><strong style="font-weight: bold; font-size: 15px">번호 </strong> ${b.num}</td>
					<td colspan="2"><strong style="font-weight: bold; font-size: 15px">제목</strong> ${b.title}</td>
				</tr>
				<tr>
					<td><strong style="font-weight: bold; font-size: 15px">작성자</strong> ${b.name}</td>
					<td>${b.wdate}</td>
					<td>조회수: ${b.count}</td>
				</tr>
			</thead>
			<tbody>
				<tr height="100">
					<td><strong style="font-weight: bold; font-size: 15px">내용</strong></td>
					<td colspan="6">${b.content}</td>
				</tr>
			</tbody>

		</table>
		<div >
			<a href="boardModify.mvc?num=${b.num }" class="btn btn-primary">수정</a> <a
				href="boardDelete.mvc?num=${b.num }" class="btn btn-primary">삭제</a> <a href="notice.mvc" class="btn btn-light">게시판으로</a>
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

</html>
