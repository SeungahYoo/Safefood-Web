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
	function loginClick(){
    	var login_data= {
        		id : $("#loginId").val(),
            	pass : $("#loginPass").val()
        };

    	$.ajax({
            type:"POST",
            url:"/safefood/login.mvc",
            data : login_data,
            success:function(response){  
                if (response == 1) { // 로그인 성공시 
                   $("#elegantModalForm").modal("hide");
               	alert("정상적으로 로그인되었습니다!");
                   location.href = "/safefood/main.mvc";
                } else { //로그인 실패시 
                	alert("아이디나 비밀번호가 다릅니다.");
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

<!-- Modal: modalCart -->
<div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Your cart</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
            <tr>
              <th scope="row">1</th>
              <td>누가바</td>
              <td><a><i class="fas fa-times"></i></a></td>
            </tr>
          </tbody>
        </table>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
        <button class="btn btn-primary">Checkout</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal: modalCart -->
	<!-- ########################################## 로그인 모달 끝 ########################################## -->
</body>
</html>
