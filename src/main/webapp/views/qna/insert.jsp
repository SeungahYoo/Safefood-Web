<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mvc.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
<template id="inserttemplate"> <main class="mt-5 pt-4">
	<div class="container dark-grey-text mt-5" style="margin-bottom: 200px;">
		<h2>질문하기</h2>


		<table class="table">
			<tr>
				<td>ID :</td>
				<td>${id}</td>
 
			</tr>
			<tr>
				<td>Title :</td>
				<td colspan="3"><input type="text" name="title" v-model="title" style="width: 600px;"></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td colspan="3"><textarea rows="20" cols="120" name="question"
						v-model="question"></textarea></td>
			</tr>
		</table>




		<div>
			<button class="btn btn-primary" @click="insertProcess">글쓰기</button>

		</div>


	</div>
	</main> </template>
</body>
</html>