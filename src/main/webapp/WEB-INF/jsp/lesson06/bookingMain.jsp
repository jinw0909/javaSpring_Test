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
    <div id="wrap" class="container">
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
        <section id="banner">
            <img id="bannerImg" src="/lesson06/public/test06_banner1.jpeg" alt="배너이미지입니다.">
        </section>
        <section id="res" class="d-flex">
            <section id="res-left" class="col-3 display-5 text-white d-flex align-items-center justify-content-center p-3">
                실시간<br>
                예약하기
            </section>
            <section id="res-center" class="col-6 p-4 pr-5">
                <span class="text-white">예약 확인</span>
               <!--  <label class="text-white ml-5">회원 <input type="radio" name="memeber" id="member" checked></label>
                <label class="text-white ml-5">비회원 <input type="radio" name="memeber" id="guest"></label> -->
                <div class="member-input p-2">
                    <div class="d-flex mt-3">
                        <div id="title" class="title col-2 text-white d-flex justify-content-center align-items-center">이름</div>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="d-flex mt-3">
                        <div class="title col-2 text-white d-flex justify-content-center align-items-center">전화번호</div>
                        <input type="text" name="phoneNumber" class="form-control">
                    </div>     
                </div>
                <!-- <div class="guest-input p-2 d-none">
                    <div class="d-flex mt-3 title">
                        <div class="col-2 text-white d-flex justify-content-center align-items-center">이름 : </div><input type="text" class="form-control">
                    </div>
                    <div class="d-flex mt-3 title">
                        <div class="col-2 text-white d-flex justify-content-center align-items-center">전화번호 : </div><input type="text" class="form-control">
                    </div>     
                    <div class="d-flex mt-3 title">
                        <div class="col-2 text-white d-flex justify-content-center align-items-center">날짜 : </div><input type="text" class="form-control" id="date">
                    </div>     
                </div> -->
                <div class="btn-look d-flex justify-content-end">
                    <button id="look" class="btn btn-success text-white">조회하기</button>
                </div>
            </section>
            <section id="res-right" class="col-3 display-6 text-white d-flex align-items-center justify-content-center p-3">
                <p class="phone">
                    <span>예약문의 : </span><br>
                    010-<br>
                    0000-1111
                </p>
            </section>
        </section>
        <footer class="p-3">
            <small class="text-secondary">
                제주특별자치도 제주시 예월읍<br>
                사업자등록번호 111-22-255222 / 농어촌민박사업자지정 / 대표 : 김동목<br>
                Copyright 2025 tongnamu All right reserved
            </small>
        </footer>
    </div>
    <script>
        $(document).ready(function() {
	        var bannerList = [
	        	"/lesson06/public/test06_banner1.jpeg"
	        	, "/lesson06/public/test06_banner2.jpeg"
	        	, "/lesson06/public/test06_banner3.jpeg"
	        	, "/lesson06/public/test06_banner4.jpeg"
	        ];
	        var index = 0;
	
	        //setInterval
	        setInterval(function() {
	            index++;
	            $("#bannerImg").attr("src", bannerList[index]);
	        }, 1000);
	        
	        $("#look").on("click", function() {
	        	var name = $("input[name='name']").val();
	        	var phoneNumber = $("input[name='phoneNumber']").val();
	        	
	        	$.ajax({
	        		type: "get",
	        		url: "/lesson06/test03/booking_search",
	        		data: {"name": name, "phoneNumber": phoneNumber},
	        		success: function(data) {
	        			confirm(
	        				"이름 : " + data.result.name + "\n날짜 : " + data.result.date + "\n일수 : " + data.result.day + "\n인원 : " + data.result.headcount + "\n상태 : " + data.result.status
	        			);
	        		},
	        		error: function(e) {
	        			alert("조회 결과가 없습니다.");
	        		},
	        	});
	        });
        });
    </script>
</body>
</html>