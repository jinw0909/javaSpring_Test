<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통나무 팬션</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/lesson06/css/style.css" type="text/css">
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
        
        <section>
        	<h2>예약 목록 보기</h2>
        	<table class="table text-center">
        		<thead>
        			<tr>
        				<th>이름</th>
        				<th>예약날짜</th>
        				<th>숙박일수</th>
        				<th>숙박인원</th>
        				<th>전화번호</th>
        				<th>예약상태</th>
        			</tr>
        		</thead>
        		<tbody>
        		<c:forEach var="booking" items="${bookingList }" varStatus="count">
        			<tr>
        				<td>${booking.name }</td>
        				<td><fmt:formatDate value="${booking.date }" pattern="yyyy년 M월 d일 " /></td>
        				<td>${booking.day }</td>
        				<td>${booking.headcount }</td>
        				<td>${booking.phoneNumber }</td>
        				<td>${booking.state }</td>
        				<td><button class="btn btn-danger btn-sm deleteBtn" data-booking-id=${booking.id }>삭제</button></td>
        			</tr>
        		</c:forEach>
        		</tbody>
        	</table>
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
        	
        	$(".deleteBtn").on("click", function() {
        		var bookingId = $(this).data("booking-id");
        		
        		$.ajax({
        			type: "get",
        			url: "/lesson06/test03/booking_delete",
        			data: {"id" : bookingId},
        			success: function(data) {
        				if (data.result) {
        					alert("delete success");
        					location.reload();
        				} else {
        					alert("delete error");
        				}
        			},
        			error: function(e) {
        				alert("error");
        			}
        		});
        	});
        	
           /*  $("input[id='guest']").on("click", function() {
                $(".member-input").addClass("d-none");
                $(".guest-input").removeClass("d-none");
            });
            $("input[id='member']").on("click", function() {
                $(".member-input").removeClass("d-none");
                $(".guest-input").addClass("d-none");
            });
            $("#date").datepicker();
        });

        var bannerList = ["images/test06_banner1.jpeg", "images/test06_banner2.jpeg"];
        var index = 0; */

        //setInterval
        /* setInterval(function() {
            index++;
            $("#bannerImg").attr("src", bannerList[index]);
        }, 1000); */
    	});
    </script>
</body>
</html>