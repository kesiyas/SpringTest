<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<div class="d-flex flex-row border-bottom">
			<jsp:include page="test05_nav.jsp" />
			
			<section class="ml-3 col-9">
				<h3 class="mt-2">날씨 입력</h3>
				
				<form method="post" action>
					
					<div class="border d-flex mt-5 ml-5 align-content-between flex-wrap">
						<div class="input-group form-inline">
							<label class="input-label mr-2">날짜</label>
							<input type="text" name="date" class="form-control col-4">
						</div>	 
						<div class="input-group form-inline">
							<label class="input-label mr-2">날씨</label>
							<select name="weather" class="form-control col-2">
								<option value="sunny">맑음</option>
								<option value="cloud">구름조금</option>
								<option value="gray">흐림</option>
								<option value="rain">비</option>
							</select>
						</div>
						<div class="input-group form-inline">
							<label class="input-label mr-2">미세먼지</label>
							<select name="microDust" class="form-control col-2">
								<option value="good">좋음</option>
								<option value="nomal">보통</option>
								<option value="bad">나쁨</option>
							</select>
						</div>
					
						<div class="d-flex">
							<label class="input-label mr-2">기온</label> 
							<div class="input-group form-inline">
								<input type="text" name="temperatures" class="form-control col-5">
								<div class="input-group-append">
									<span class="input-group-text">℃</span>
								</div>
							</div>
						</div>
						<div class="d-flex">
							<label class="input-label mr-2">강수량</label> 
							<div class="input-group form-inline">
								<input type="text" name="precipitation" class="form-control col-5">
								<div class="input-group-append">
									<span class="input-group-text">mm</span>
								</div>
							</div>
						</div>
						<div class="d-flex">
							<label class="input-label mr-2">풍속</label> 
							<div class="input-group form-inline">
								<input type="text" name="windSpeed" class="form-control col-3">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span>
								</div>
							</div>
						</div>
					</div>
				</form>
			</section>
		</div>
		
		<jsp:include page="test05_footer.jsp" />
	</div>

</body>
</html>