<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<div class="modal fade right" id="exerciseModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

		<!-- Add class .modal-full-height and then add class .modal-right (or other classes from list above) to set a position to the modal -->
		<div class="modal-dialog modal-full-height modal-right"
			role="document">


			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title w-100" id="myModalLabel">운동 시간량 계산기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<input type="text" style="display: none;" value="${totaln.total_calory}" id="calory1">
					<table border="1px">
						<thead>
							<tr>
								<td>운동</td>
								<td style="width: 80px">운동 시간</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img src="https://i.pinimg.com/originals/54/f8/dc/54f8dcbb699a8e5c2004085220db73de.gif" style="width:120px">달리기
								</td>
								<td >
									<input type="text" id="cal">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://i.pinimg.com/originals/d4/1f/49/d41f49001a22255fb8166ef836736c4a.gif" style="width:120px">축구
								</td>
								<td>
									<input type="text" id="cal1">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://i.pinimg.com/originals/24/d2/a2/24d2a2565416b44dc9c59f09057aa320.gif" style="width:120px">사이클
								</td>
								<td>
									<input type="text" id="cal3">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://i.pinimg.com/originals/b4/ea/4b/b4ea4b8fea87126ac5a80dc5f802b268.gif" style="width:120px">춤추기
								</td>
								<td>
									<input type="text" id="cal2">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://i.pinimg.com/originals/e3/29/1b/e3291b3c0cab226bad4d871bd988a34e.gif" style="width:120px">걷기
								</td>
								<td>
									<input type="text" id="cal4">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://t1.daumcdn.net/cfile/tistory/99CB2B3C5ADF4D4D1D" style="width:120px">수영
								</td>
								<td>
									<input type="text" id="cal5">시간							
								</td>
							</tr>
							<tr>
								<td><img src="https://notefolio.net/data/covers/119406_t2.jpg?_=:48" style="width:120px">탁구
								</td>
								<td>
									<input type="text" id="cal6">시간							
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer justify-content-center">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- Full Height Modal Right -->
	<script type="text/javascript">
	$(document).ready(function(){
		
	  	var cal = $("#calory1").val(); 
		var NUTR_CONT1 = (cal/196).toFixed(1);
		var a = (cal/200).toFixed(1);
		var b = (cal/150).toFixed(1);
		var c = (cal/111).toFixed(1);
		var d = (cal/80).toFixed(1);
		var e = (cal/518).toFixed(1);
		var f = (cal/200).toFixed(1);
		make(NUTR_CONT1);
		make1(a);
		make2(b);	
		make3(c);
		make4(d);
		make5(e);
		make6(f);
	    });
	function make(NUTR_CONT1){
		var temp = document.getElementById("cal");
		temp.value=NUTR_CONT1;
	}
	function make1(NUTR_CONT1){
		var temp = document.getElementById("cal1");
		temp.value=NUTR_CONT1;
	}
	function make2(NUTR_CONT1){
		var temp = document.getElementById("cal2");
		temp.value=NUTR_CONT1;
	}
	function make3(NUTR_CONT1){
		var temp = document.getElementById("cal3");
		temp.value=NUTR_CONT1;
	}
	function make4(NUTR_CONT1){
		var temp = document.getElementById("cal4");
		temp.value=NUTR_CONT1;
	}
	function make5(NUTR_CONT1){
		var temp = document.getElementById("cal5");
		temp.value=NUTR_CONT1;
	}
	function make6(NUTR_CONT1){
		var temp = document.getElementById("cal6");
		temp.value=NUTR_CONT1;
	}
	
	
	
	</script>
</body>

</html>