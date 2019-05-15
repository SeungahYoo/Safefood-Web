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
<title>Question and Answer</title>

<!--axios를 이용한 비동기 요청 보내기 위해 필요  -->

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


	<div id="app">
		<!-- <question-result></question-result> -->
		<router-view></router-view>
	</div>


	<!--Main layout-->
	<template id="questiontemplate"> <main class="mt-5 pt-4">
	<div class="container dark-grey-text mt-5">
		<h1>Q & A</h1>
		<hr>


		<div class="float-right">
			<FORM name='frm' method='POST' action='boardFind.mvc'>

				<SELECT name='col'>
					<!-- 검색 컬럼 -->
					<OPTION value='none'>전체 목록</OPTION>
					<OPTION value='ID'>ID</OPTION>
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
					<th>작성자</th>
					<th>작 성날짜</th>
				</tr>
			</thead>
			<tbody>
				<%-- 		<c:forEach items="${list }" var="b">
					<tr class="readBoard" id="${b.num}">
						<td>${b.num}</td>
						<td>${b.title}</td>
						<td>${b.name}</td>
						<td>${b.wdate}</td>
						<td>${b.count}</td>
					</tr>
				</c:forEach> --%>
				<!-- 	<tr v-for="q in result " @click=""> -->
				<tr v-for="q in result">
					<td v-text="q.num"></td>
					<td><router-link
							:to="{name: 'detail', params: { num : q.num }}">{{q.title}}</router-link></td>
					<td v-text="q.id"></td>
					<td v-text="q.wdate"></td>
				</tr>
			</tbody>
		</table>


		<%
			if (session.getAttribute("id") != null) {
		%>
		<div>
			<a class="btn btn-default float-right"> <router-link to="/insert"
					style="color:white;">글쓰기</router-link></a>
		</div>
		<%
			}
		%>

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
	</main> </template>
	<jsp:include page="detail.jsp"></jsp:include>
	<jsp:include page="insert.jsp"></jsp:include>
	<jsp:include page="update.jsp"></jsp:include>
	<!--Main layout-->
	<jsp:include page="../header/footer.jsp"></jsp:include>

	<script src="https://unpkg.com/vue"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js">

</script>
	<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>
	<script type="text/javascript">

 
  var question_result = Vue.component('question-result',{ //customer-result : component 이름, 
     template : '#questiontemplate' ,// 컴포넌트 화면
     data() {
     	return{
     		result:[],//ajax요청 후에 서버가 보내준 결과 담아 놓을 변수
     		num:'',
     		title:'',
     		id:'',
     		wdate:''
     	}
     },
     mounted(){ //화면과 컴포넌트가 연결된 후
    	console.log("question_Result_component")
     	this.allQuestions()
     },
     methods:{
     	allQuestions: function(){
     		axios
     		.get('http://localhost:8080/qna') //요청
     		.then(response => (this.result = response.data))
     		console.log(this.result)
     		
     	} //모든고객정보
     }
 });
  
 var detailhrm = Vue.component('detailhrm',{
	 template:'#detailtemplate',
	 data() {
		 return {
			 result:[],
			 num:'',
			 answer:'',
			 title:'',
			 question:'',
			 sessionid : '${id}'
		 }
	 },
	 mounted() {
		 this.num = this.$route.params.num
		 console.log(this.id)
		 this.detailQuestion();
		 
	 },
	 computed:{
		 isLogin:function(){
			return(this.sessionid != null); 
		 },
		 isMine:function(){
			 console.log(this.result.id+" sisson: "+this.sessionid);
		
			 return (this.result.id == this.sessionid);
		 }
	 },
	 methods:{
	
		 
		 detailQuestion: function(){
			 console.log("methods"+this.num)
	    		axios
	     		.get('http://localhost:8080/qna/'+this.num) //요청
	     		.then(response => (this.result = response.data))
	     	 console.log("result="+this.answer)
		 },
		
		 deleteQuestion:function(){
			 axios
	     		.delete('http://localhost:8080/qna/'+this.num)//요청
	     		.then(res => {
	     			alert('질문이 삭제되었습니다.');
	     			router.push('/');
	     		})
		 },
		 
		 updateAnswer:function(){
			 axios
	     		.put('http://localhost:8080/qna/'+this.num+'/'+this.answer)//요청
	     		.then(res => {
	     			alert('답변이 추가되었습니다.');
	     			this.detailQuestion();
	     		})
	     	
		 },
		 
		 deleteAnswer:function(){
			 console.log(this.title)
			 axios
	     		.put('http://localhost:8080/qna/'+this.num+'/null')//요청
	     		.then(res => {
	     			alert('답변이 삭제되었습니다.');
	     			this.answer=null;
	     			this.detailQuestion();
	     		})
	     	
		 }
	 
	 }
	 
 })
 
 var inserthrm = Vue.component('inserthrm',{
	template:'#inserttemplate',
	 data() {
		 return {
			 result:[],
			 id:'${id}',
			 title:'',
			 question:''
		 }
	 },
	 methods:{
		 insertProcess: function(){
			 console.log("insertProcess methods");
			 axios
     		.post('http://localhost:8080/qna',
     				{id:this.id, title:this.title, question:this.question})//요청
     		.then(res => {
     			alert('질문이 추가되었습니다.');
     			router.push('/');
     		})
     	
		 }
	 }
	 
 })
 
 var updatehrm = Vue.component('updatehrm',{
	template:'#updatetemplate',
	 data() {
		 return {
			 result:[],
			 id:'',
			 title:'',
			 question:'',
			 num:''
		
		 }
	 },
	 mounted(){
		 this.num=this.$route.params.num
		 console.log(this.num)
		 this.detailQuestion();
	 },
	 methods:{
		 detailQuestion: function(){
			 console.log("methods"+this.num)
	    		axios
	     		.get('http://localhost:8080/qna/'+this.num) //요청
	     		.then(response => (this.result = response.data))
	     		console.log(this.result)
		 },
		 updateProcess: function(){
			 console.log(this.question)
			 axios
     		.put('http://localhost:8080/qna',
     				{num:this.num, title:this.result.title, question:this.result.question, answer:this.result.answer})//요청
     		.then(res => {
     			alert('질문이 수정되었습니다.');
     			router.push('/');
     		})
     	
		 }
	 }
	 
 })
 

 
 

 const router = new VueRouter({
	  routes: [
			   { path: '/', component: question_result },
			   { path: '/detail/:num', name: 'detail', component: detailhrm } ,
			   { path: '/insert', component:inserthrm },
			   { path: '/update/:num',name:'update', component: updatehrm }/*
			   { path: '/route4', component: listhrm } */
]}); 
	var vm = new Vue({
		el : "#app",
		router
	});
</script>

</body>
</html>
