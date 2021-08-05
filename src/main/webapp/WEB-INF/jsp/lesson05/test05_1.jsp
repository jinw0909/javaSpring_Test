<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	ul, ol, li { margin: 0; padding: 0; list-style: none;}
	.logo > img { width: 100%; }
	.nav-item {display: block; }
</style>
</head>
<body>

	<div class="container">
		<main class="d-flex">
		<aside class="col-3">
			<div class="logo">
				<img src="../../../weatherimg/logo.jpeg">
			</div>
			<nav class="p-3">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="#none">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#none">날씨입력</a></li>
					<li class="nav-item"><a class="nav-link" href="#none">테마날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#none">관측기후</a></li>
				</ul>
			</nav>
		</aside>
		<section class="col-9">
			<h3 class="pt-4">과거 날씨</h3>
			<table class="table">
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
					<c:forEach var="day" items="${weatherhistory }" varStatus="status">
					<tr>
						<td><fmt:formatDate value="${day.date }" pattern="yyyy년 M월 d일"/></td>
						<td>${day.weather }</td>
						<td>${day.temperatures }</td>
						<td>${day.precipitation}mm</td>
						<td>${day.microDust }</td>
						<td>${day.windSpeed }km/h</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		</main>
		<footer>
			<small>(07062)</small>
		</footer>
	</div>
</body>
</html>