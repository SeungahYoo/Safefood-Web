<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>login</title>
<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/js/mdb.min.js"></script>
<script type="text/javascript">
</script>
<script src="https://unpkg.com/vue"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<!--axios를 이용한 비동기 요청 보내기 위해 필요  -->
</head>
<body>
	<div id="app">
		<jjim-list ref="modal"></jjim-list>
	</div>
	<template id="jjimList-template">
	<div class="container">
		<!-- Modal: modalCart -->
		<div class="modal fade" id="modalCart" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">찜 목록</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">

						<table class="table table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>식품명</th>
									<th>Remove</th>
								</tr>
							</thead>
							<tbody>
								<%-- <c:forEach items="${jjimlist}" var="f" varStatus="stat">
							<tr>
								<td>${stat.index + 1}</td>
								<td v-text="list.name"><a href="/detail.mvc?code=${f.code}"></a></td>
								<td><button type="button" class="close" aria-label="Close">
										<span aria-hidden="true">×</span>
									</button></td>
							</tr>
							</c:forEach> --%>
							
								<tr v-for="(food, idx) in result">
								
									<td v-text="idx + 1"></td>
									<td><a :href="'/detail.mvc?code=' + food.code" v-text="food.name"></a></td>
									<td><button type="button" class="close" aria-label="Close">
											<span aria-hidden="true" @click="deleteJJim(food.name)">×</span>
										</button></td>
								</tr>

							</tbody>
						</table>

					</div>
					<!--Footer-->
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-primary"
							data-dismiss="modal">Close</button>
						<button class="btn btn-outline-primary" ><a href="/myjjimdetail.mvc">상세보기</a></button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</template>
	<!-- Modal: modalCart -->
	<script type="text/javascript">
		/* Vue.component('jjim-list', */
		var jjimComp = {
			template : '#jjimList-template',
			data(){
				return{
					result:[], 
					name:'',
					code:''
				}
			}, // end of datea
			mounted(){
				this.allJJimList()
			},
			methods:{
				allJJimList: function(){
					axios
					.get('http://localhost:8080/jjim')
					.then(response => (this.result = response.data))
				},//고객정보 수정
        		deleteJJim: function(name){
	        		console.log("deleteJJim method");
	        		console.log(name)
	        		axios
	        		.delete('http://localhost:8080/jjim/'+name)//요청
	        		.then(response => {
	        			this.allJJimList()
        			})
        		}	
			} //end of methods
		};
		var vm = new Vue({
			el : "#app",
			components: { 'jjim-list': jjimComp }
		});
		
		function updateJJimList() {
			vm.$refs.modal.allJJimList();
		}
	</script>

</body>
</html>
