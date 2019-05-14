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
	<template id="detailtemplate"> <main class="mt-5 pt-4">
	<!-- 상세페이지 -->
	<div class="container dark-grey-text mt-5">

		<table class="table">

			<thead>

				<tr style="font-weight: bold;">
					<td><strong style="font-weight: bold; font-size: 15px">번호
					</strong> <span v-html="result.num"></span></td>
					<td colspan="2"><strong
						style="font-weight: bold; font-size: 15px"> 제목</strong> <span
						v-html="result.title"></span></td>
				</tr>
				<tr>
					<td><strong style="font-weight: bold; font-size: 15px">작성자
					</strong> <span v-html="result.id"></span></td>
					<td><strong style="font-weight: bold; font-size: 15px">작성날짜
					</strong> <span v-html="result.wdate"></span></td>

				</tr>
			</thead>
			<tbody>
				<tr height="100">
					<td><strong style="font-weight: bold; font-size: 15px">내용</strong></td>
					<td colspan="6"><span v-html="result.question"></span></td>
				</tr>
			</tbody>

		</table>

		<div>

			<template v-if="isMine"> <a class="btn btn-primary"><router-link
					:to="{name: 'update', params: { num : result.num }}"
					style="color:white;">수정</router-link></a> <a class="btn btn-primary"
				@click="deleteQuestion">삭제</a> </template>

			<a href="notice.mvc" class="btn btn-light">게시판으로</a>
		</div>

		<div
			style="width: 95%; height: 300px; background-color: #ebf0fa; padding: 25px; margin: 30px;">
			<h3 style="font-weight: bold;">Answer</h3>
			<br>
			<div v-if="result.answer">
				<%
					String id = (String) session.getAttribute("id");
					if (id != null && id.equals("admin")) {
				%>
				<div
					style="width: 950px; height: 110px; padding: 10px 20px; margin-bottom: 20px;"
					v-html="result.answer"></div>
				<a class="btn  btn-outline-dark" @click="deleteAnswer">답변 삭제</a>
				<%
					}
				%>
			</div>
			<template v-else> <!-- 등록된 답변이 없을 때 --> <%
 	if (id != null && id.equals("admin")) {
 %>
			<div>
				<textarea rows="5" cols="105" v-model="answer"
					style="margin-left: 20px;"></textarea>
				<br> <a class="btn  btn-outline-dark" @click="updateAnswer">답변
					등록</a>
			</div>
			<%
				} else {
			%>
			<div>등록된 답변이 없습니다.</div>
			<%
				}
			%> </template>



		</div>


	</div>


	</main> </template>


</body>
</html>