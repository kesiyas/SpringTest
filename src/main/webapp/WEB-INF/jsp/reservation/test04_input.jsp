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
    <link rel="stylesheet" href="/css/style.css" type="text/css">

</head>
<body>

	<div class="container" id="wrap">
		<jsp:include page="test04_header.jsp" />
		
		<jsp:include page="test04_nav.jsp" />
		
		<section class="contents d-flex flex-column justify-content-center">
			
			<h4 class="text-center mt-4">예약하기</h4>
			<label>이름</label>
			<input type="text" name="" class="form-control">
			
			<label>예약날짜</label>
			<input type="text" name="" class="form-control">
			
			<label>숙박일수</label>
			<input type="text" name="" class="form-control">
			
			<label>숙박인원</label>
			<input type="text" name="" class="form-control">
			
			<label>전화번호</label>
			<input type="text" name="" class="form-control">
				
		</section>
			
		<jsp:include page="test04_footer"></jsp:include>
	</div>


</body>
</html>