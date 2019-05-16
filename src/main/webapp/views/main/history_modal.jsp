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
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="modal fade" id="HistoryModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">검색어 랭킹</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						<thead  id="areaValue">
						
						</thead>
						<tbody>
							<c:forEach items="${historyList }" var="b" varStatus="status">
								<tr class="readBoard" id="${b}">
									<td>${status.count}</td>
									<td>${b}</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function searchHistory() {
			$.ajax({
				url : 'http://localhost:8080/searchHistory.mvc',
				type : 'get',
				success : function(result) {
					console.log(result);
					var ret = "";
					for (i = 0; i < result.length; i++) {
						ret += "<tr><td><span class=\"badge badge-light\">"+(i+1)+"</span></td><td>" + "<a href=\"http://localhost:8080/foodSearch.mvc?word="+result[i]+"\">"+result[i] +"</a>"+ "</td></tr>"
					}
					ret += ""
					$("#areaValue").html(ret);
					//Finally open popup
				},
				error : function(jqXhr, textStatus, errorThrown) {
					console.log(errorThrown);
				}
			});
		}
	</script>
</body>
</html>