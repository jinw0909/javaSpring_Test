<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<h1>즐겨찾기 목록</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="favorite" items="${favoriteList }" varStatus="status">
					<tr>
						<td>${status.count }</td>
						<td>${favorite.name }</td>
						<td><a href="${favorite.url }">${favorite.url }</a></td>
						<td><button class="btn btn-danger deleteBtn" data-id=${favorite.id}>삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
	$(document).ready(function(){
		$(".deleteBtn").on("click", function(){
			var id = $(this).data('id');
			console.log('id', id);
			$.ajax({
				type: "POST",
				url: "/lesson06/test01/delete_favorite",
				data: {"id": id},
				success: function(data) {
					if (data.result == "success") {
						location.href="/lesson06/test01/favorite_list"
					} else {
						alert("삭제에 실패하였습니다.");
					}
				},
				error: function(e) {
					alert("error");
				}
			})
		});
	});
	</script>
</body>
</html>