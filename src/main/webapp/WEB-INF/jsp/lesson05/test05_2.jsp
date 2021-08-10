<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>
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
					<li class="nav-item"><a class="nav-link" href="/lesson05/test05/1">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="/lesson05/test05/2">날씨입력</a></li>
					<li class="nav-item"><a class="nav-link" href="#none">테마날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#none">관측기후</a></li>
				</ul>
			</nav>
		</aside>
		<section class="col-9">
			<h3 class="pt-4">날씨 입력</h3>
			<form action="/lesson05/test05/add_weatherhistory" method="get">
				<label>날짜</label><input type="text" class="form-control" name="date">
				<label>날씨</label>
				<select type="text" class="form-control" name="weather">
					<option>맑음</option>
					<option>흐림</option>
					<option>구름</option>
					<option>비</option>
				</select>
				<label>미세먼지</label>
				<select type="text" class="form-control" name="microDust">
					<option>좋음</option>
					<option>나쁨</option>
					<option>보통</option>
					<option>최악</option>
				</select>
				<label>기온</label><input type="text" name="temperatures" class="form-control">
				<label>강수량</label><input type="text" name="precipitation" class="form-control">
				<label>풍속</label><input type="text" name="windSpeed" class="form-control">
				
				<input type="submit" class="btn btn-success mt-3" value="제출">
			</form>
		</section>
		</main>
		<footer>
			<small>(07062)</small>
		</footer>
	</div>

</body>
</html>