<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 하기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/css/style.css" type="text/css">	
</head>
<body>

	<div class="container">
		<jsp:include page="test04_header.jsp" />
		
		<jsp:include page="test04_nav.jsp" />
		
		<section class="contents d-flex justify-content-center">
			<div class="join-box font-weight-bold">
				<h4 class="text-center mt-4">예약하기</h4>
				<label class="mt-3">이름</label>
				<input type="text" id="nameInput" name="name" class="form-control">
				
				<label class="mt-3">예약날짜</label>
				<input type="text" id="dateInput" name="date" class="form-control">
				
				<label class="mt-3">숙박일수</label>
				<input type="text" id="dayInput" name="day" class="form-control">
				
				<label class="mt-3">숙박인원</label>
				<input type="text" id="headcountInput" name="headcount" class="form-control">
				
				<label class="mt-3">전화번호</label>
				<input type="text" id="phoneNumberInput" name="phoneNumber" class="form-control">
				<button id="addBtn" class="mt-3 btn btn-warning form-control">예약하기</button>
			</div>	
		</section>
			
		<jsp:include page="test04_footer.jsp"></jsp:include>
	</div>

	<script>
		$(document).ready(function(){
			
			$("#addBtn").on("click", function(){
				
				let name = $("#nameInput").val();
				let date = $("#dateInput").val();
				let day = $("#dayInput").val();
				let headcount = $("#headcountInput").val();
				let phoneNumber = $("#phoneNumberInput").val();
				
				let regPhone = /^01([0/1/6/7/8/9])-?([0-9]{3,4})-?([0-9]{4})$/;
				
				if(name == "") {
					alert("이름을 입력하세요.");
					return ;
				}
				
				if(date == "") {
					alert("예약 날짜를 지정해주세요.");
					return ;
				}
				
				if(day == "") {
					alert("숙박일수를 입력하세요.");
					return ;
				}
				
				if(headcount == "") {
					alert("숙박인원을 입력하세요.");
					return ;
				}
				
				if(phoneNumber == "") {
					alert("전화번호를 입력하세요.");
					return ;
				}
				
				if(!regPhone.test(phoneNumber)) {
					alert("휴대폰 번호를 확인 해주세요.")
					return ;
				}
				
				$.ajax({
					type:"get"
					, url:"/booking/add"
					, data:{"name":name, "date":date, "day":day, "headcount":headcount, "phoneNumber":phoneNumber }
					, success:function(data){
						if(data.result == "success") {
							alert("예약 성공");
							location.href = "/booking/list";
						} else {
							alert("예약 실패");
						}
					}
					, error:function(){
						alert("예약 에러");		
					}
				});
				
			});
			
			$("#dateInput").datepicker({
                dayNamesMin:["일","월","화","수","목","금","토"],
                dateFormat:"yy년 mm월 dd일",
                firstDay:1,
                minDate:"0"
            });
			
		});
	
	
	</script>
</body>
</html>