<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main_01</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,700,400italic'
	rel='stylesheet' type='text/css'>
</head>
<style>
@import url('./assets/css/MainPage.css');

.writeButton {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	writing-mode: horizontal-tb;
	width: auto;
}

.write-dropdown {
	top: 70px;
	left: 73%;
	display: none; /* 기본적으로 숨김 */
	position: absolute;
	background-color: white;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 300;
	border-radius: 5px;
	padding: 10px;
	width: 200px;
	gap: 10px;
	flex-wrap: wrap; /* 항목을 여러 줄로 나누기 위한 설정 */
}

.write-dropdown li {
	flex: 1 1 45%; /* 각 항목의 너비를 45%로 설정 */
	margin: 5px 0;
	list-style: none;
}

.write-dropdown li a {
	text-decoration: none;
	color: black;
	display: block;
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.write-dropdown li a:hover {
	background-color: #f1f1f1;
}

.logo-image {
	color: blue;
}

.all-chal{
	background-image : url("https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/all-mini.png");
	
}
</style>

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
							<a href="MainFeedService"> <img
								src=https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/littleLogo2.png
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
					<li><a href="FeedService">피드</a></li>
					<li><a href="ChalService">챌린지</a></li>
					<li><a href="ChattingRoomService">메세지</a></li>
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
									<li><a href="followListService">마이 페이지</a></li>
									<li><a href="LogoutService">로그아웃</a></li>
								</ul>
							</div>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li>
						<div class="write">
							<button class="writeButton">작성하기</button>
							<!-- 작성하기 버튼 클릭 시 나타나는 옵션 리스트 -->
							<ul class="write-dropdown">
								<li id="writeFeed"><a href="MakeFeedPage.jsp">피드작성</a></li>
								<li id="writeChallenge"><a href="MakeChallengePage.jsp">챌린지작성</a></li>
							</ul>
						</div> </a>
					</li>
				</ul>
				<hr class="line">
			</div>
		</div>

		<!-- 오늘의 챌린지 움직이게 -->
		<div class="hero-images">
			<div class="carousel">
				<div class="carousel-item active">
					<img
						src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/env.png"
						alt="Image 1">
				</div>
				<div class="carousel-item">
					<img
						src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/price.png"
						alt="Image 2">
				</div>
				<div class="carousel-item">
					<img
						src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/veg.png"
						alt="Image 3">
				</div>
				<div class="carousel-item">
					<img
						src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/wt.png"
						alt="Image 4">
				</div>
				<div class="carousel-item">
					<img
						src="https://raw.githubusercontent.com/2024-SMHRD-KDT-DataDesign-2/wooyoungwoo/master/img/conv.png"
						alt="Image 5">
				</div>
			</div>
			<a class="carousel-control left" href="#" onclick="prevSlide()">&#10094;</a>
			<a class="carousel-control right" href="#" onclick="nextSlide()">&#10095;</a>
		</div>

		<!-- 미니 카테고리 -> 선택시 피드로 이동 -->
		<form action="orderByService" method="post">
			<div class="mini-cate-bar">
				<div class="mini-cate">
					<a form="ChalService?"> <input class="cate-img all-chal"
						type="submit" name="ob" value="all">
					</a>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/요리.jfif"></a>
					<span>요리</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/음악.jfif"></a>
					<span>음악</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/뷰티.jfif"></a>
					<span>뷰티</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/여행.jfif"></a>
					<span>여행</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/피트니스.JPG"></a>
					<span>피트니스</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/미술.jfif"></a>
					<span>미술</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/수집.jfif"></a>
					<span>수집</span>
				</div>
				<div class="mini-cate">
					<a href=""><img class="cate-img" src="/category_img/공예DIY.jfif"></a>
					<span>DIY</span>
				</div>
			</div>
		</form>

		<!-- 하단 전체 -->
		<div class="bottom-total">
			<!-- 챌린지 기능 -->
			<div class="chal-par">
				<!-- 전체 감싸는 용 -->
				<div class="chal-body">
					<!-- 아랫 부분 영역 차지 -->
					<div class="chal-part">
						<!-- 컨텐츠 영역 -->
						<c:forEach items="${feedList}" var="feed">
							<form action="WriteFeedService" method="post"
								enctype="multipart/form-data">
								<a href="detailFeed?id=${feed.feed_idx}"> <!-- 컨텐츠1 -->
									<div>
										<!-- 각 컨텐츠영역 -->
										<div>
											<!-- 카테고리로 연결 -->
											<img
												src="<%= request.getContextPath() %>/img/${feed.feed_img}"
												alt="error" accept="image/*">
											<div>${feed.feed_title}</div>
											<div>${feed.feed_date}</div>
											<div>
												참여자 미니 아이콘 공간 <span>참여자 사진 <img
													src="${feed.user_profile}" alt=""></span>
											</div>
										</div>
									</div>
								</a>
							</form>
						</c:forEach>
					</div>
				</div>
			</div>

			<!-- 랭크 기능 -->
			<div class="ranking-part">
				<!-- 랭크 감싸는 영역 -->
				<h3>주간 인기</h3>
				<div>
					<!-- 랭크1 -->
					<form action="detailChal" method="post"
						enctype="multipart/form-data">
						<c:forEach items="${resultCppList}" var="rank">
							<a href="detailChal?id=${rank.chal_idx}">
								<div class="ran-body">
									<!-- 랭크 감싸는 영역 -->
									<div class="ran-num-part">
										<!-- 숫자 부분 -->
										<span class="ran-num">1</span>
									</div>
									<div class="ran-con-part">
										<!-- 내용 감싸는 부분 -->
										<div class="ran-con-top">
											<!-- 작성자 미니프로필,닉네임 -->
											<div class="ran-pro">
												<!-- 작성자 미니프로필 -->
												<img class="mini-pro" src="${rank.user_profile}" alt="">
											</div>
											<div>
												<!-- 작성자 닉네임 -->
												<p class="ran-nick">
													<span>${rank.user_nick}</span>
												</p>
											</div>
										</div>
										<p class="ran-cal-con">${rank.chal_title}</p>
									</div>
								</div>
							</a>
						</c:forEach>
					</form>
				</div>
			</div>
		</div>

		<script src="./assets/js/MainPage.js"></script>
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
		<script>
			document
					.addEventListener(
							'DOMContentLoaded',
							function() {
								const writePageIcon = document
										.querySelector('.writeButton');
								const writePageDropdown = document
										.querySelector('.write-dropdown');

								writePageIcon
										.addEventListener(
												'click',
												function() {
													writePageDropdown.style.display = writePageDropdown.style.display === 'flex' ? 'none'
															: 'flex';
												});

								window
										.addEventListener(
												'click',
												function(event) {
													if (!writePageIcon
															.contains(event.target)
															&& !writePageDropdown
																	.contains(event.target)) {
														writePageDropdown.style.display = 'none';
													}
												});
							});
		</script>
</body>

</html>
