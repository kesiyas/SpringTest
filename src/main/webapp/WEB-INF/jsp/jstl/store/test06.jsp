<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리동네 가게</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	.main-banner {
		width:700px;
		height:80px;
	}
	
	.main-content {
		width:700px;
		margin-bottom :20px;
	}
	
	.box {
		height:110px;
		border-radius: 5px;
		margin-top: 15px;
	}
	
	.service {
		width:700px;
		height:80px;
		border-top: solid 1px;
		border-top-color: #d1cec7;
	}
</style>

</head>
<body>

	<div class="container">
		<jsp:include page="test06_header.jsp" />
	
		<section class="main-content">
			<div class="display-4">
				우리동네 가게
			</div>
			<c:forEach var="storeInfo" items="${storeList }" >
				<div class="border box border-info">
					<div class="p-2 ml-2 mt-1">
						<h4>${storeInfo.name }</h4>
						<div class="font-weight-bold">전화번호:${storeInfo.phoneNumber }</div>	
						<div class="font-weight-bold">주소:${storeInfo.address }</div>	
					</div>
				</div>
			</c:forEach>
		</section>
		
		<jsp:include page="test06_footer.jsp" />
	
	</div>

</body>
</html>