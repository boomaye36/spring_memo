<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<div class="container">
		
		<form id="signUpForm" method="post" action="/user/sign_up">
			<table class="table table-boarded">
				<tr>
					<th class="bg-secondary">* 아이디 </th>
					<td>
						<div class="d-flex">
							<input type="text" id="logInId" name="logInId" class="form-control">
							<button type="button" id="loginIdCheckBtn" class="btn btn-success ml-2">중복확인 </button>
						</div>
						<div id="idCheckLength" class="small text-danger d-none">4자 이상 입력하세요.</div>
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
						<input type="password" id="name" name="name" class="form-control"placeholder="이름을 입력하세요 ">
						
					</td>
				</tr>
				<tr>
					<th class="bg-secondary">* 이메일 주소   </th>
					<td>
						<input type="text" id="emailAddress" name="emailAddress" class="form-control" placeholder="이메일 주소를 입력하세요 ">
						
					</td>
				</tr>
				
			</table>
			<div class="d-flex align-items-center justify-content-center">
			<button type="submit" id="signUpBtn" class="btn btn-info mt-5">회원가입 </button>
			</div>
			</form>
		
		
</div>
</div>

<script>
$(document).ready(function(){
	//중복 확인
	$('#loginIdCheckBtn').on('click', function(){
		 let loginId = $('#logInId').val().trim();
		
		if(loginId.length < 4){
			
			$('#idCheckLength').removeClass('d-none'); //경고문구 노출
			$('#duplicateNo').addClass('d-none'); 
			$('#confirmOk').addClass('d-none'); 
			return;
		} 
		
		//ajax 중복 확인
		$.ajax({
			url:"/user/is_duplicated_id"
			,data:{"loginId":loginId}
			,success:function(data){
				if (data.result){
					// 중복일 때
					$('#idCheckLength').addClass('d-none'); //경고문구 노출
					$('#duplicateNo').removeClass('d-none'); 
					$('#confirmOk').addClass('d-none'); 
				}else{
					$('#idCheckLength').addClass('d-none'); //경고문구 노출
					$('#duplicateNo').addClass('d-none'); 
					$('#confirmOk').removeClass('d-none'); 				
			}
			}
		, error:function(e){
			alert("아이디 중복확인에 실패했습니다.");
		}
		});
	});
	//회원가입
	$('#signUpForm').on('submit', function(e){
		e.preventDefault(); // submit 기능을 중단
		 let loginId = $('#logInId').val().trim();
		 let pwId = $('#pwId').val().trim();
		 let pwConfirmId = $('#pwConfirmId').val().trim();
		 let name = $('#name').val().trim();
		 let emailAddress = $('#emailAddress').val().trim();
		 if (loginId == ''){
			 alert("아이디를 입력하세요");
			 return false;
		 }
		 if (pwId == '' || pwConfirmId==''){
			 alert("비밀번호를 입력하세요");
			 return false;
		 }
		 if (pwId != pwConfirmId){
			 alert("비밀번호가 일치하지 않습니다");
			 return false;
		 }
		 if (name == ''){
			 alert("이름을 입력하세요");
			 return false;
		 }
		 if (emailAddress == ''){
			 alert("이메일을 입력하세요");
			 return false;

		 }
		// 아이디 중복 확인이 완료 되었는지 확인 -> loginIdCheckBtn d-none이 없으면 사용 가능으로 본다.
		if ($('#confirmOk').hasClass('d-none') === true){
			alert("아이디 중복확인을 다시 해주세요.");
		}
		
		// 1) submit
		//$(this)[0].submit();//0번째에 있는 submit을 수행 할 것이다.
		//submit 이후에 다른 화면으로 넘길 떄 사용 (action 주소 -> 뷰화면)
		// 2) ajax
		let url = $(this).attr('action');
		let params = $(this).serialize(); // name 속성 값들을 파라미터로 구성
		//console.log(params);
		//console.log("sdf");
		$.post(url, params)
		.done(function(data){
			if (data.code == 100){
				alert("가입을 환영합니다 ! 로그인해주세요.");
				location.href="/user/sign_in_view";
			}else{
				alert("가입에 실패했습니다.");
			}
		});
	});
});
</script>