<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 목록</h1>
		<table class="table">			
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>	
					<th></th>				
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bookmark" items="${bookmarkList }" > 
					<tr>
						<td>${bookmark.id }</td>					
						<td>${bookmark.name }</td>					
						<td>${bookmark.url }</td>
						<td><button class="deleteBtn btn btn-danger" 
						data-bookmark-id="${bookmark.id }">삭제</button></td>				
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$(".deleteBtn").on("click", function(){
				
				let bookmarkId = $(this).data("bookmark-id");
				
				$.ajax({
					type:"get"
					, url:"/ajax/test01/deleteData"
					, data:{"id":bookmarkId}
					, success:function(data){
						if(data.result == "success") {
							alert("삭제 성공");
							location.reload();						
						} else{
							alert("삭제 실패");
						}
						
					}
					, error:function(){
						alert("삭제 에러");
					}
												
				});
				
			});
			
			
		});
	</script>

</body>
</html>