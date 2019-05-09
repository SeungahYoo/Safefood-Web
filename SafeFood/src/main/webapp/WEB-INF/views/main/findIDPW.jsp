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
<script type="text/javascript" src="/main/js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/main/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/main/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/main/js/mdb.min.js"></script>
<script type="text/javascript">
	// 로그인 버튼 클릭 listener
	function findIDPW(){
    	var find_data= {
        		id : $("#yourid").val(),
            	name : $("#yourname").val()
        };

    	$.ajax({
            type:"POST",
            url:"/safefood/findpw.mvc",
            data : find_data,
            success:function(response){  
                if (response != -1) { // 로그인 성공시 
                   $("#findIDPW").modal("hide");
               		alert("비밀번호는:"+response);
                   location.href = "/safefood/main.mvc";
                } else { //로그인 실패시 
                	alert("존재하는 회원 정보가 없습니다.");
                }
            },
            error:function(xhr, status, error) {
                console.log(xhr.status + " : " + error + " : " + xhr.responseText);
            }
        });
    }
    </script>
</head>
<body>
<!-- ########################################## 로그인 모달 ########################################## -->
	
	<div class="modal fade" id="findIDPW" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<!--Content-->
			<div class="modal-content form-elegant">
				<!--Header-->
				<div class="modal-header text-center">
					<h3 class="modal-title w-100 dark-grey-text font-weight-bold my-3"
						id="myModalLabel">
						<strong>Find Password</strong>
					</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!--Body-->
				<div class="modal-body mx-4">
					<!--Body-->
					<div class="warning"></div>
					<div class="md-form mb-5">
						<input type="text" name = "id" id="yourid" class="form-control validate">
						<label data-error="wrong" data-success="right" for="Form-email1">Your
							ID</label>
					</div>
					<div class="md-form pb-3">
						<input type="text" name = "name" id="yourname"
							class="form-control validate"> <label data-error="wrong"
							data-success="right" for="Form-pass1">Your NAME</label>
						
					</div>
				<div class="modal-footer mx-5 pt-3 mb-1">
					 <button class="btn btn-lg btn-primary btn-block" id="btnLogin" onclick="findIDPW()">Find</button>
				</div>
					
				</div>
				<!--Footer-->
				
				<div class="modal-footer mx-5 pt-3 mb-1">
					<p class="font-small grey-text d-flex justify-content-end">
						Not a member? <a href="#" class="blue-text ml-1"
							data-dismiss="modal" data-toggle="modal"
							data-target="#modalRegisterForm"> Sign Up</a>
					</p>
				</div>
			</div>
			<!--/.Content-->
		</div>
	</div>
	<!-- ########################################## 로그인 모달 끝 ########################################## -->
</body>
</html>