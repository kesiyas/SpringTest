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
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<style>
	
	
	.main-menu {
		background-color:#2377de;
		width: 200px;
	}
	
	.main-content {
		width: 900px;
	}
	
	.copyright {
		width: 1100px;
		height:300px;
	}
	
	.input-Label {
		width: 70px;
	}
	
	.input-size { 
		width: 250px;
	}
</style>
</head>
<body>

	<div class="container">
		<div class="d-flex flex-row border-bottom">
			<jsp:include page="test05_nav.jsp" />
			
			<section class="mt-3 ml-5 main-content">
				<h3>날씨 입력</h3>
				
				<form method="post" action="/jstl/test05/add/view">					
					<div class="border d-flex justify-content-between mt-5 flex-wrap">
						<div class="d-flex align-items-center">
							<label class="input-Label" >날짜</label>
							<input type="text" name="date" class="form-control" id="datepicker">
						</div>	 
						
						<div class="d-flex align-items-center">
							<label class="input-Label">날씨</label>
							<select name="weather" class="form-control">
								<option value="맑음">맑음</option>
								<option value="구름조금">구름조금</option>
								<option value="흐림">흐림</option>
								<option value="비">비</option>
							</select>
						</div>
						
						<div class="d-flex align-items-center">
							<label class="input-Label">미세먼지</label>
							<select name="microDust" class="form-control">
								<option value="좋음">좋음</option>
								<option value="보통">보통</option>
								<option value="나쁨">나쁨</option>
							</select>
						</div>
					
						<div class="d-flex align-items-center input-size bg-info">
							<label class="input-Label">기온</label> 
							<div class="input-group form-inline">
								<input type="text" name="temperatures" class="form-control">
								<div class="input-group-append">
									<span class="input-group-text">℃</span>
								</div>
							</div>
						</div>
						<div class="d-flex align-items-center">
							<label class="input-Label">강수량</label> 
							<div class="input-group form-inline">
								<input type="text" name="precipitation" class="form-control">
								<div class="input-group-append">
									<span class="input-group-text">mm</span>
								</div>
							</div>
						</div>
						<div class="d-flex align-items-center">
							<label class="input-Label">풍속</label> 
							<div class="input-group form-inline">
								<input type="text" name="windSpeed" class="form-control">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span>
								</div>
							</div>
						</div>
				
					</div>
					<button type="submit" class=" mt-3 btn btn-success float-right mb-5">저장</button>
					
				</form>
			</section>
		</div>
		
		<jsp:include page="test05_footer.jsp" />
	</div>
	

</body>

<script>
		$(document).ready(function() {
			
			$("#datepicker").datepicker( {
		
				dateFormat : "yy년 mm월 dd일"
				
			
			})
		});
	</script>
</html>