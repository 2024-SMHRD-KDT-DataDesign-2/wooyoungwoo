<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="assets/css/rogin.css" />
</head>
<body>
	<div class="title">
		<h1>Challengers</h1>
		<h3>지금 바로 도전하세요</h3>
	</div>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="JoinService" method="post">
				<div class="social-container">
					<h1>회원가입</h1>
					<input type="email" name="id" placeholder="아이디(이메일)" /> <input
						type="password" name="pw" placeholder="패스워드"> <input
						type="text" name="nick" placeholder="닉네임">
					<button id="openPopupBtn" type="button">관심분야 선택</button>
					<input type="submit" value="회원가입" class="jlbtn">
				</div>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="LoginService" method="post">
				<h1>Login</h1>
				<div class="social-container"></div>
				<input type="email" name="id" placeholder="아이디(이메일)를 입력하세요">
				<input type="password" name="pw" placeholder="비밀번호를 입력하세요">
				<a href="">비밀번호 찾기</a>
				<input type="submit" value="로그인" class="jlbtn">
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h2>돌아오신걸 환영합니다!</h2>
					<p>이미 가입되어 있는 정보로 로그인 하기</p>
					<button class="ghost" id="signIn">로그인</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>환영합니다!</h1>
					<p>가입을 시작하고 챌린지에 참여하세요</p>
					<button class="ghost" id="signUp">회원가입</button>
				</div>
			</div>
		</div>
	</div>
	<div class="popup-overlay" id="popup">
		<div class="popup">
			<span class="close-btn" id="closePopupBtn">&times;</span>
			<h2>관심 분야를 선택해주세요</h2>
			<form action="JoinService">
				<div class="check-con">
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Craft" value="Craft"> <span class="checkmark" id="mark1"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Art" value="Art"> <span class="checkmark" id="mark2"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Beauty" value="Beauty"> <span class="checkmark" id="mark3"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Collection" value="Collection"> <span class="checkmark" id="mark4"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Cooking" value="Cooking"> <span class="checkmark" id="mark5"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Fitness" value="Fitness"> <span class="checkmark" id="mark6"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Music" value="Music"> <span class="checkmark" id="mark7"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Sports" value="Sports"> <span class="checkmark" id="mark8"></span>
					</label>
					<label class="custom-checkbox">
						<input type="checkbox" name="preference" id="Traveling" value="Traveling"> <span class="checkmark" id="mark9"></span>
					</label>
				</div>
				<button onclick="join_select_like()" id="select_com" type="button">선택 완료</button>
			</form>
		</div>
	</div>

	<script src="assets/js/rogin.js"></script>
</body>
</html>