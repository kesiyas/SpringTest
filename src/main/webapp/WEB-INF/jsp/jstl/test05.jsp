<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 정보 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container d-flex flex-row">
		<nav class="col-3 bg-primary">
			<h3 class="text-center text-white">기상청</h3>
			<ul class="nav d-flex flex-column">
				<li class="nav-item"><a class="nav-link text-white" href="#">날씨</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">날씨입력</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">테마날씨</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>		
			</ul>
		</nav>
		
		<div class="ml-3 col-9">
			<h2>과거 날씨</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="weatherList" items="${weatherList }">
						<tr>
							<td><fmt:formatDate value="${weatherList.date }" pattern="yyyy년 M월 d일" /></td>
							<c:choose>
								<c:when test="${weatherList.weather eq '맑음' }">
									<td><img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg" alt="맑음"></td>
								</c:when>
								<c:when test="${weatherList.weather eq '구름조금' }">
									<td><img src="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg" alt="구름"></td>
								</c:when>
								<c:when test="${weatherList.weather eq '흐림' }">
									<td><img src="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg" alt="흐림"></td>
								</c:when>
								<c:otherwise>
									<td><img src="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg" alt="비"></td>
								</c:otherwise>
							</c:choose>
							<td>${weatherList.temperatures }</td>
							<td>${weatherList.precipitation }mm</td>
							<td>${weatherList.microDust }</td>
							<td>${weatherList.windSpeed }km/h</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<footer>
			<div class="d-flex text-secondary">
				<div>
					<h3>기상청</h3>
				</div>
				<div>
				
				</div>
			</div>
		</footer>
	</div>

</body>
</html>