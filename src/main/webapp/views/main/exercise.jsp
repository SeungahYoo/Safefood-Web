<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* Only for snippet */
.double-nav .breadcrumb-dn {
	color: #fff;
}
</style>
</head>
<body>


	<!-- Full Height Modal Right -->
	<div class="modal fade right" id="fullHeightModalRight" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

		<!-- Add class .modal-full-height and then add class .modal-right (or other classes from list above) to set a position to the modal -->
		<div class="modal-dialog modal-full-height modal-right"
			role="document">


			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title w-100" id="exerciseModal">운동 시간량 계산</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<input type="text" style="display: none;"value="${totaln.total_calory}" id="calory">
					<table border="1px">
						<thead>
							<tr>
								<td>운동</td>
								<td>운동 시간</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img
									src="https://i.pinimg.com/originals/54/f8/dc/54f8dcbb699a8e5c2004085220db73de.gif">달리기
								</td>
								<td>
									${totaln.total_calory}
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer justify-content-center">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Full Height Modal Right -->
	<!-- <script type="text/javascript">
	$(document).ready(function(){
	  	  var NUTR_CONT1 = $("#calory").val(); // 칼로리
	  		
	    });
	</script> -->
</body>

</html>