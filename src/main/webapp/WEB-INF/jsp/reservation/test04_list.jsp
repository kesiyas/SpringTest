<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
   <link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<body>

	<div class="container" id="wrap">
		<jsp:include page="test04_header.jsp" />
		
		<jsp:include page="test04_nav.jsp" />
		
		<section>
			<h4 class="text-center my-4">예약 목록 보기</h4>
			<table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>	
						<th></th>		
					</tr>
				</thead>
				<tbody>
					<c:forEach var="booking" items="${bookingList }">
						<tr>
							<td>${booking.name }</td>
							<td><fmt:formatDate value="${booking.date }" pattern="yyyy월 MM월 dd일"/></td>
							<td>${booking.day }</td>
							<td>${booking.headcount }</td>
							<td>${booking.phoneNumber }</td>
							<c:choose>
								<c:when test="${booking.state eq '대기중' }">
									<td class="text-info">${booking.state }</td>
								</c:when>
								<c:otherwise>
									<td class="text-success">${booking.state }</td>
								</c:otherwise>
							</c:choose>
							<td><button class="btn btn-danger deleteBtn" data-booking-id="${booking.id }">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		
		</section>
		
		<jsp:include page="test04_footer.jsp" />
	</div>

	<script>
		$(document).ready(function(){
			
			$(".deleteBtn").on("click", function(){
				
				let bookingId = $(this).data("booking-id");
				
				$.ajax({
					type:"get"
					, url:"/booking/delete"
					, data:{"id":bookingId}
					, success:function(data){
						if(data.result == "success") {
							location.reload();
							alert("삭제 성공");
						}else{
							alert("삭제 실패");
						}
					}
					, error:function(){
						alert("삭제 시도 중 에러발생");
					}
						
				});
				
			});
			
			
			
			
			
		});
	
	</script>


</body>
</html>