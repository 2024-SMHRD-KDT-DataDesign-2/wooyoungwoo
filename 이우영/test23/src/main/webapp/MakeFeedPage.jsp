<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url("./assets/css/MakeFeedPage.css");

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
</style>
<style>
.title-area {
	border: 1px solid #ccc;
	padding: 10px;
	margin-bottom: 10px;
	cursor: pointer;
	font-size: 18px;
}

.content-area {
	border: 1px solid #ccc;
	padding: 10px;
	margin-bottom: 10px;
	cursor: pointer;
	font-size: 15px;
}

.title-area input, .content-area textarea {
	width: 100%;
	border: none;
	outline: none;
}

.title-area input {
	font-size: 18px;
	display: none;
}

.content-area textarea {
	font-size: 15px;
	height: 100px;
	resize: none;
}

.content-area {
	position: relative;
}

#content-display {
	display: block;
	width: 100%; /* 너비를 전체로 설정 */
	padding: 10px; /* 패딩 추가 */
	border: 1px solid #ccc; /* 경계선 추가 */
}

#content-input {
	width: 100%; /* 너비를 전체로 설정 */
	border: 1px solid #ccc; /* 경계선 추가 */
	padding: 10px; /* 패딩 추가 */
	display: none; /* 기본은 숨김 */
	resize: none; /* 크기 조절 비활성화 */
	box-sizing: border-box; /* 패딩과 테두리를 포함하여 크기 계산 */
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
					<li><a href="MyPage.jsp">마이 페이지</a></li>
					<li><c:if test="${!empty info}">
							<a href="">로그아웃</a>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li><a href="MakeFeedPage.jsp">작성하기</a></li>
				</ul>
			</div>
		</div>

		<!-- 피드 작성 부분 -->
		<div class="feed-con">
			<div>
				<div>
					<form action="FeedService" method="post"
						enctype="multipart/form-data">
						<div class="title-area" id="title-area">
							<span id="title-display">제목 추가</span> <input type="text"
								id="title-input" placeholder="제목을 입력하세요" name="chal_title">
						</div>

						<div class="content-area" id="content-area">
							<span id="conte.nt-display">내용을 입력하세요</span>
							<textarea row="30" id="content-input" style="display: none;"
								placeholder="내용을 입력하세요" name="chal_content"></textarea>
						</div>

						<button>임시 저장</button>
						<button type="submit">완료</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="./assets/js/MakeFeedPage.js">
		
	</script>
</body>
</html>