<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통나무 팬션</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/lesson06/css/style.css">
</head>
<body>
<div class="wrap container">
	<header class="p-3">
            <div class="display-4 text-secondary text-center">통나무 팬션</div>
    </header>
    <nav class="d-flex align-items-center">
        <ul class="nav w-100 h-100 nav-fill">
            <li class="nav-item"><a href="#">팬션소개</a></li>
            <li class="nav-item"><a href="#">객실보기</a></li>
            <li class="nav-item"><a href="#">예약안내</a></li>
            <li class="nav-item"><a href="#">커뮤니티</a></li>
        </ul>
    </nav>
    
    <h1 class="text-center my-4">예약하기</h1>
    <div class="d-flex justify-content-center">
	    <div class="w-50">
	    	<label>이름</label>
	    	<input type="text" class="form-control" name="name">
	    	<label>예약날짜</label>
	    	<input type="text" id="datepicker" class="form-control" name="date">
	    	<label>숙박일수</label>
	    	<input type="text" class="form-control" name="day">
	    	<label>숙박인원</label>
	    	<input type="text" class="form-control" name="headcount">
	    	<label>전화번호</label>
	    	<input type="text" class="form-control" name="phoneNumber">
	    	<button id="bookingBtn" class="btn btn-warning btn-block w-100 mt-3">예약하기</button>
    	</div>
    </div>
    
    <footer class="p-3">
        <small class="text-secondary">
            제주특별자치도 제주시 예월읍<br>
            사업자등록번호 111-22-255222 / 농어촌민박사업자지정 / 대표 : 김동목<br>
            Copyright 2025 tongnamu All right reserved
        </small>
    </footer>
    <script>
    	$(document).ready(function() {
    		$("#datepicker").datepicker({
    			dateFormat: "yy-mm-dd",
    			minDate: 0,
    		});
    	});
    	$("#bookingBtn").on("click", function(){
    		var name = $("input[name='name']").val();
    		var date = $("input[name='date']").val();
    		var day = $("input[name='day']").val();
    		var headcount = $("input[name='headcount']").val();
    		var phoneNumber = $("input[name='phoneNumber']").val();
    		
    		if (name == null || name == "") {
    			alert("이름을 입력하세요");
    			return;
    		}
    		if (date == null || date == "") {
    			alert("날짜를 입력하세요");
    			return;
    		}
    		if (day == null || day == "") {
    			alert("숙박일수를 입력하세요");
    			return;
    		}
    		
    		// 숫자인지 검사
    		if(isNaN(day)) {
    			alert("숙박일수는 숫자만 입력 가능합니다.")
    			return;
    		}
    		
    		
	    	$.ajax({
	    		type: "get",
	    		url: "/lesson06/test03/add_booking",
	    		data: {"name": name, "date": date, "day": day, "headcount": headcount, "phoneNumber": phoneNumber },
	    		success: function(data) {
	    			if (data.result) {
	    				location.href = "/lesson06/test03/booking_list";
	    			} else {
	    				alert("data result is false");
	    			}	
	    		},
	    		error: function(e) {
	    			alert("error");
	    		}
	    		
	    	});
    	});
    	
    </script>
</div>
</body>
</html>