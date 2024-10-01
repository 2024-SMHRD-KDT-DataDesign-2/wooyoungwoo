<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 전체 틀 사이즈 */
.main-center {
	width: 60%;
	/* 페이지 너비의 80%만 차지 */
	margin: 0 auto;
	/* 가운데 정렬 */
	display: flex;
	flex-direction: column;
	/* 아래쪽으로 나열 */
	align-items: center;
	/* 가운데 정렬 */
}

/* 상단 메뉴바 */
.container {
	padding-left: 15px;
	padding-right: 15px;
}

/* 로고 스타일 */
.logo-container {
	display: inline-block;
	vertical-align: middle;
	margin-right: 30px; /* 메뉴와 로고 간격 */
}

.logo-image {
	height: 40px; /* 로고 높이 조절 */
	width: auto; /* 자동 너비 비율 */
	transition: transform 0.3s ease-in-out;
}

/* 로고에 호버 효과 추가 */
.logo-container a:hover .logo-image {
	transform: scale(1.1); /* 호버 시 로고 확대 */
}

.blocks-menus {
	width: 100%;
	background: white;
	padding-top: 20px;
	text-align: center;
	display: inline-block;
}

.primary-menus {
	display: inline-block;
	margin: 0;
	padding: 0; li { list-style : none;
	float: left;
	padding: 0 10px; a { text-decoration : none;
	font-family: $ primary-font;
	text-transform: uppercase;
	font-weight: normal;
	color: #303030;
	font-size: 12px;
	font-weight: 600;
	transition: all 0.2s ease-in-out;
	-webkit-transition: all 0.2s ease-in-out;
	-moz-transition: all 0.2s ease-in-out;
	&:
	hover
	{
	color
	:
	#D4B062;
}

}
}
}
.menus-dropdown { &:hover .dropdown { visibility:visible;
	opacity: 1;
}

}
li {
	line-height: 30px;
	float: none;
}

a {
	font-size: 11px;
	font-weight: normal;
}

.menus-megamenus { &:hover .mega-menus { opacity:1;
	visibility: visible;
}

}
.mega-menus {
	opacity: 0;
	visibility: hidden;
	position: absolute;
	left: 0;
	right: 0;
	margin: 15px auto;
	width: 80%;
	border: 1px solid #ECECEC;
	padding: 0 15px;
	min-height: 330px;
	transition: all 0.2s ease-in-out;
	-webkit-transition: all 0.2s ease-in-out;
	-moz-transition: all 0.2s ease-in-out;
	background-image:
		url("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/9e86dd30876159.5637811adc76c.jpg");
	background-size: 100%;
	background-repeat: no-repeat; li { float : none;
	text-align: left;
	padding: 0;
}

}
.section {
	float: left;
	margin: 35px 15px; h3 { font-family : $ primary-font;
	position: relative;
	font-size: 16px;
	padding: 10px 0;
	text-transform: uppercase;
	border-bottom: 1px solid #d6d6d6;
}

}
}
.search-container {
	width: 60%;
	display: inline-block;
	margin: 0 auto;
	left: 10%;
}

input#search-bar {
	margin: 0 auto;
	width: 100%;
	height: 20px;
	padding: 0 20px;
	font-size: 0.7rem;
	border-radius: 10px;
	border: 1px solid #D0CFCE;
	outline: none; &: focus { border : 1px solid #008ABF;
	transition: 0.35s ease;
	color: #008ABF; &:: -webkit-input-placeholder { transition : opacity
	0.45s ease;
	opacity: 0;
}

&
::-moz-placeholder {
	transition: opacity 0.45s ease;
	opacity: 0;
}

&
:-ms-placeholder {
	transition: opacity 0.45s ease;
	opacity: 0;
}

}
}
.search-icon {
	position: relative;
	float: right;
	width: 40px;
	height: 40px;
	top: -35px;
	right: -45px;
}
/* 로고 스타일 */
.logo-container {
	display: inline-block;
	vertical-align: middle;
	margin-right: 30px; /* 메뉴와 로고 간격 */
}

.logo-image {
	height: 40px; /* 로고 높이 조절 */
	width: auto; /* 자동 너비 비율 */
	transition: transform 0.3s ease-in-out;
}

/* 로고에 호버 효과 추가 */
.logo-container a:hover .logo-image {
	transform: scale(1.1); /* 호버 시 로고 확대 */
}

.mypage-container {
	position: relative;
	display: inline-block;
}

.mypage-icon {
	width: 30px;
	height: auto;
	cursor: pointer;
}

.mypage-dropdown {
	display: none; /* 기본적으로 숨김 */
	position: absolute;
	top: 40px;
	left: 0;
	background-color: white;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 300;
	border-radius: 5px;
	padding: 10px;
	width: 200px;
	gap: 10px;
	flex-wrap: wrap; /* 항목을 여러 줄로 나누기 위한 설정 */
}

.mypage-dropdown li {
	flex: 1 1 45%; /* 각 항목의 너비를 45%로 설정 */
	margin: 5px 0;
	list-style: none;
}

.mypage-dropdown li a {
	text-decoration: none;
	color: black;
	display: block;
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.mypage-dropdown li a:hover {
	background-color: #f1f1f1;
}

.line {
	color: black;
	border-top: 1px solid #000; /* 선의 두께와 색상 */
	margin-top: 0; /* 상단 여백 없애기 */
	margin-bottom: 0; /* 하단 여백 없애기 */
}

.Write {
	background-color: grey; /* 배경색을 검정색으로 설정 */
	border-radius: 20px; /* 둥글게 만들기 */
	display: inline-block; /* 요소를 inline-block으로 설정 */
}

.Write a {
	color: white; /* 글자색을 흰색으로 설정 */
	text-decoration: none; /* 링크의 밑줄 제거 */
}
</style>

</head>
<body>
	<div class="main-center">
		<!-- 상단 메뉴바 -->
		<div class="blocks-menus">
			<div class="container">
				<ul class="primary-menus">
					<li>
						<!-- 로고와 메뉴를 담는 전체 컨테이너 -->
						<div class="logo-container">
							<!-- 로고 이미지가 위치한 링크 -->
							<a href="MainPage.jsp"> <img
								src=https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/%EC%9D%B4%EC%9A%B0%EC%98%81/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EB%A1%9C%EA%B3%A0.png
								alt="" class="logo-image">
							</a>
						</div>
					</li>
					<li class="search">
						<form class="search-container">
							<input type="text" id="search-bar" placeholder="챌린지를 검색하세요">
							<a href="#"><img class="search-icon"
								src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
						</form>
					</li>
					<li><a href="FeedPage.jsp">피드</a></li>
					<li><a href="ChattingPage.jsp">메세지</a></li>
					<li class="menus-megamenus"><a href="#">카테고리 <i
							class="fa fa-angle-down"></i></a>
						<ul class="mega-menus">
							<div class="section">
								<h3>Pages 1</h3>
								<li><a href="#">Submenu 1</a></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
							</div>
						</ul></li>
					<li><c:if test="${!empty info}">
							<div class="mypage-container">
								<img class="mypage-icon"
									src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/%EC%9D%B4%EC%9A%B0%EC%98%81/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80.png"
									alt="MyPageIcon">
								<ul class="mypage-dropdown">
									<li><a href="MyPage.jsp">마이 페이지</a></li>
									<li><a href="LogoutService">로그아웃</a></li>
								</ul>
							</div>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li>
						<div class="Write">
							<a href="MakeFeedPage.jsp"> 작성하기 
						</div> </a>
					</li>
				</ul>
				<hr class="line">
			</div>
		</div>

		<div id="">
			<!-- 파일 업로드시 사용해야하는 속성 ! enctype 
					 1. 파일 업로드시 form 태그에서 꼭 필요한 속성
					 2. post 방식일때만 사용이 가능 -->
			<form action="WriteFeedService" method="post" enctype="multipart/form-data">>
				<table id="list">
					<tr>
						<td>제목</td>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2"> 
						<input type="file" name="img" style="float: right;">
						<textarea name="content" rows="10"
								style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="??"> <button
							onclick="fileImg">작성하기</button></td>
					</tr>
				</table>
			</form>
		</div>
		<script>
			document
					.addEventListener(
							'DOMContentLoaded',
							function() {
								const myPageIcon = document
										.querySelector('.mypage-icon');
								const myPageDropdown = document
										.querySelector('.mypage-dropdown');

								myPageIcon
										.addEventListener(
												'click',
												function() {
													myPageDropdown.style.display = myPageDropdown.style.display === 'flex' ? 'none'
															: 'flex';
												});

								window
										.addEventListener(
												'click',
												function(event) {
													if (!myPageIcon
															.contains(event.target)
															&& !myPageDropdown
																	.contains(event.target)) {
														myPageDropdown.style.display = 'none';
													}
												});
							});
		</script>
		
		<script src="./assets/js/MakerFeedPage.js"></script>
</body>
</html>