<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<body>

	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		
		<label>제목</label><input class="form-control" type="text" name="name" id="nameInput">
		<label>주소</label>
		<div class="d-flex w-100">
			<input class="form-control mr-2" type="text" name="url" id="urlInput"> 
			<button id="checkBtn" class="btn btn-primary">중복체크</button>
		</div>
		<small id="duplicate" class="text-danger font-weight-bold d-none">중복된 url 입니다</small>
		<small id="available" class="text-danger font-weight-bold d-none">사용가능한 url 입니다</small>
		<button type="button" class="btn btn-success form-control mt-3" id="addBtn">추가</button>
	
	</div>

	<script>
		$(document).ready(function(){
			
			// 중복 체크 확인 상태 저장 변수
			var isCheck = false;
			// 중복 상태 저장 변수
			var isDuplicateUrl = true;
			
			$("#urlInput").on("input", function(){
				// 중복체크 확인 상태를 초기화
				isCheck = false;
				var isDuplicateUrl = true;
				
				$("#duplicate").addClass("d-none");
				$("#available").addClass("d-none");
			});
											
			$("#checkBtn").on("click", function(){
				
				let url = $("#urlInput").val();
				let regex = /^(http(s)?:\/\/)/gi;
				
				if(url == "") {
					alert("주소를 입력하세요!");
					return ;
				} 
				
				if(regex.test(url)) {
					alert("주소를 제대로 입력하세요!");
					return ;
				}		
				
				$.ajax({
					type:"post"
					, url:"/ajax/test01/isduplicate"
					, data:{"url":url}
					, success:function(data){
						isCheck = true;
						
						if(data.is_duplicate) {
							isDuplicateUrl = true;
							$("#duplicate").removeClass("d-none");
							$("#available").addClass("d-none");
						} else {
							isDuplicateUrl = false;
							$("#duplicate").addClass("d-none");
							$("#available").removeClass("d-none");							
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
					
				});
				
			});
							
			$("#addBtn").on("click", function(){
				
				let name = $("#nameInput").val();
				let url = $("#urlInput").val();
				
				let regex = /^(http(s)?:\/\/)/gi;	
				
				if(name == "") {
					alert("제목을 입력하세요!");
					return ;
				}
				
				if(url == "") {
					alert("주소를 입력하세요!");
					return ;
				} 
				
				if(regex.test(url)) {
					alert("주소를 제대로 입력하세요!");
					return ;
				}	
				
				// url 중복체크 여부 확인
				// 중복체크 여부 확인
				// 중복상태 여부 확인
				
				if(!isCheck) {
					alert("주소 중복체크 여부 확인 필요");
					return ;
				} 
				
				if(isDuplicateUrl) {
					alert("중복된 url입니다");
					return ;
				}
				
				$.ajax({
					type:"post"
					, url:"/ajax/test01/add"
					, data:{"name":name, "url":url}
					,success:function(data){
						if(data.result == "success") {
							
							location.href = "/ajax/test01/list";
						} else {
							alert("입력 실패");
						}										
					}
					,error:function(){				
						alert("입력 에러");
					}			
					
				});
			});
												
		});
	
	
	</script>

</body>
</html>