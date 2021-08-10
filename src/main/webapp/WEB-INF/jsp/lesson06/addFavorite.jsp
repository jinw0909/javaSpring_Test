<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1>즐겨찾기추가</h1>
		<label>제목</label>
		<input type="text" class="form-control" id="titleInput">
		<label>주소</label>
		<input type="text" class="form-control" id="urlInput">
		<button type="button" id="addFavorite" class="btn btn-info">추가</button>
		
	</div>
	
	<script>
	$(document).ready(function(){
		
		$("#addFavorite").on('click', function() {
			var title = $('#titleInput').val().trim();
			var url = $('#urlInput').val().trim();
			
			if (title == null || title == "") {
				alert("제목을 입력하세요");
				return;
			}
			
			if (url == null || url == "") {
				alert("url을 입력하세요");
				return;
			}
			
			if (!(url.startsWith("http://") || url.startsWith("https://"))) {
				alert("주소형식이 잘못되었습니다.");
				return;
			}
			
			$.ajax({
				type: "POST",
				url: "/lesson06/test01/add_favorite",
				data: {"title": title, "url": url},
				success: function(data) {
					if (data.result == "success") {
						location.href="lesson06/test01/favorite_list"
					} else {
						alert("입력에 실패하였습니다.");
					}
				},
				error: function(e) {
					alert("error");
				}
				
			})
			
		})
		
		
	})	
	</script>
</body>
</html>