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
	
<title>회원가입 화면 </title>
</head>
<body>
	<div class="container">
		<header class="bg-secondary">
			<h2>메모 게시판 </h2>
		</header>
		<section>
			<table class="table table-boarded">
				<tr>
					<th class="bg-secondary">* 아이디 </th>
					<td>
						<div class="d-flex">
							<input type="text" id="logInId" name="logInId" class="form-control">
							<button type="button" id="loginIdCheckBtn" class="btn btn-success ml-2">중복확인 </button>
						</div>
						<div id="duplicateNo" class="small text-danger d-none">이미 사용중인 아이디입니다.</div>
						<div id="confirmOk" class="small text-success d-none">사용 가능한 아이디 입니다.</div>
					</td>
				</tr>
				<tr>
					<th class="bg-secondary">* 비밀번호 </th>
					<td>
						<input type="password" id="pwId" name="pwId" class="form-control">
						
					</td>
				</tr>
				<tr>
					<th class="bg-secondary">* 비밀번호확인  </th>
					<td>
						<input type="password" id="pwConfirmId" name="pwConfirmId" class="form-control">
						
					</td>
				</tr>
				<tr>
					<th class="bg-secondary">* 이름   </th>
					<td>
						<input type="password" id="pwConfirmId" name="pwConfirmId" class="form-control"placeholder="이름을 입력하세요 ">
						
					</td>
				</tr>
				<tr>
					<th class="bg-secondary">* 이메일 주소   </th>
					<td>
						<input type="password" id="pwConfirmId" name="pwConfirmId" class="form-control" placeholder="이메일 주소를 입력하세요 ">
						
					</td>
				</tr>
				
			</table>
			<div class="d-flex align-content-center justify-items-center">
			<button type="button" id="signUpBtn" class="btn btn-info mt-5">회원가입 </button>
			</div>
		</section>
	</div>
</body>
</html>