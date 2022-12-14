<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
<title>로그인 화면 </title>
</head>
<body>
	<div class="container">
		<header class="bg-secondary">
			<h2>메모 게시판 </h2>
		</header>
		<section>
			<div class="form-group">
				<label for="userId">id</label>
				<input type="text" id="userId" name="userId" class="form-control"><br>
				<label for="userPw">pw</label>
				<input type="password" id="userPw" name="userPw" class="form-control"><br>
				<button type="button" id="signInBtn" class="btn btn-info text-light form-control">로그인   </button><br> 
				<button type="button" id="signUpBtn" class="btn btn-dark text-light form-control mt-3">회원가입    </button>
				
				
			</div>
		</section>
	</div>
</body>
</html>